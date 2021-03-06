<?php
/**
 *
 *
 * Created on Dec 01, 2007
 *
 * Copyright © 2008 Roan Kattouw "<Firstname>.<Lastname>@gmail.com"
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @file
 */

/**
 * @ingroup API
 */
class ApiParamInfo extends ApiBase {

	private $helpFormat;
	private $context;

	public function __construct( ApiMain $main, $action ) {
		parent::__construct( $main, $action );
	}

	public function execute() {
		// Get parameters
		$params = $this->extractRequestParams();

		$this->helpFormat = $params['helpformat'];
		$this->context = new RequestContext;
		$this->context->setUser( new User ); // anon to avoid caching issues
		$this->context->setLanguage( $this->getMain()->getLanguage() );

		if ( is_array( $params['modules'] ) ) {
			$modules = [];
			foreach ( $params['modules'] as $path ) {
				if ( $path === '*' || $path === '**' ) {
					$path = "main+$path";
				}
				if ( substr( $path, -2 ) === '+*' || substr( $path, -2 ) === ' *' ) {
					$submodules = true;
					$path = substr( $path, 0, -2 );
					$recursive = false;
				} elseif ( substr( $path, -3 ) === '+**' || substr( $path, -3 ) === ' **' ) {
					$submodules = true;
					$path = substr( $path, 0, -3 );
					$recursive = true;
				} else {
					$submodules = false;
				}

				if ( $submodules ) {
					try {
						$module = $this->getModuleFromPath( $path );
					} catch ( UsageException $ex ) {
						$this->setWarning( $ex->getMessage() );
					}
					$submodules = $this->listAllSubmodules( $module, $recursive );
					if ( $submodules ) {
						$modules = array_merge( $modules, $submodules );
					} else {
						$this->setWarning( "Module $path has no submodules" );
					}
				} else {
					$modules[] = $path;
				}
			}
		} else {
			$modules = [];
		}

		if ( is_array( $params['querymodules'] ) ) {
			$queryModules = $params['querymodules'];
			foreach ( $queryModules as $m ) {
				$modules[] = 'query+' . $m;
			}
		} else {
			$queryModules = [];
		}

		if ( is_array( $params['formatmodules'] ) ) {
			$formatModules = $params['formatmodules'];
			foreach ( $formatModules as $m ) {
				$modules[] = $m;
			}
		} else {
			$formatModules = [];
		}

		$modules = array_unique( $modules );

		$res = [];

		foreach ( $modules as $m ) {
			try {
				$module = $this->getModuleFromPath( $m );
			} catch ( UsageException $ex ) {
				$this->setWarning( $ex->getMessage() );
				continue;
			}
			$key = 'modules';

			// Back compat
			$isBCQuery = false;
			if ( $module->getParent() && $module->getParent()->getModuleName() == 'query' &&
				in_array( $module->getModuleName(), $queryModules )
			) {
				$isBCQuery = true;
				$key = 'querymodules';
			}
			if ( in_array( $module->getModuleName(), $formatModules ) ) {
				$key = 'formatmodules';
			}

			$item = $this->getModuleInfo( $module );
			if ( $isBCQuery ) {
				$item['querytype'] = $item['group'];
			}
			$res[$key][] = $item;
		}

		$result = $this->getResult();
		$result->addValue( [ $this->getModuleName() ], 'helpformat', $this->helpFormat );

		foreach ( $res as $key => $stuff ) {
			ApiResult::setIndexedTagName( $res[$key], 'module' );
		}

		if ( $params['mainmodule'] ) {
			$res['mainmodule'] = $this->getModuleInfo( $this->getMain() );
		}

		if ( $params['pagesetmodule'] ) {
			$pageSet = new ApiPageSet( $this->getMain()->getModuleManager()->getModule( 'query' ) );
			$res['pagesetmodule'] = $this->getModuleInfo( $pageSet );
			unset( $res['pagesetmodule']['name'] );
			unset( $res['pagesetmodule']['path'] );
			unset( $res['pagesetmodule']['group'] );
		}

		$result->addValue( null, $this->getModuleName(), $res );
	}

	/**
	 * List all submodules of a module
	 * @param ApiBase $module
	 * @param boolean $recursive
	 * @return string[]
	 */
	private function listAllSubmodules( ApiBase $module, $recursive ) {
		$manager = $module->getModuleManager();
		if ( $manager ) {
			$paths = [];
			$names = $manager->getNames();
			sort( $names );
			foreach ( $names as $name ) {
				$submodule = $manager->getModule( $name );
				$paths[] = $submodule->getModulePath();
				if ( $recursive && $submodule->getModuleManager() ) {
					$paths = array_merge( $paths, $this->listAllSubmodules( $submodule, $recursive ) );
				}
			}
		}
		return $paths;
	}

	/**
	 * @param array $res Result array
	 * @param string $key Result key
	 * @param Message[] $msgs
	 * @param bool $joinLists
	 */
	protected function formatHelpMessages( array &$res, $key, array $msgs, $joinLists = false ) {
		switch ( $this->helpFormat ) {
			case 'none':
				break;

			case 'wikitext':
				$ret = [];
				foreach ( $msgs as $m ) {
					$ret[] = $m->setContext( $this->context )->text();
				}
				$res[$key] = implode( "\n\n", $ret );
				if ( $joinLists ) {
					$res[$key] = preg_replace( '!^(([*#:;])[^\n]*)\n\n(?=\2)!m', "$1\n", $res[$key] );
				}
				break;

			case 'html':
				$ret = [];
				foreach ( $msgs as $m ) {
					$ret[] = $m->setContext( $this->context )->parseAsBlock();
				}
				$ret = implode( "\n", $ret );
				if ( $joinLists ) {
					$ret = preg_replace( '!\s*</([oud]l)>\s*<\1>\s*!', "\n", $ret );
				}
				$res[$key] = Parser::stripOuterParagraph( $ret );
				break;

			case 'raw':
				$res[$key] = [];
				foreach ( $msgs as $m ) {
					$a = [
						'key' => $m->getKey(),
						'params' => $m->getParams(),
					];
					ApiResult::setIndexedTagName( $a['params'], 'param' );
					if ( $m instanceof ApiHelpParamValueMessage ) {
						$a['forvalue'] = $m->getParamValue();
					}
					$res[$key][] = $a;
				}
				ApiResult::setIndexedTagName( $res[$key], 'msg' );
				break;
		}
	}

	/**
	 * @param ApiBase $module
	 * @return ApiResult
	 */
	private function getModuleInfo( $module ) {
		$ret = [];
		$path = $module->getModulePath();

		$ret['name'] = $module->getModuleName();
		$ret['classname'] = get_class( $module );
		$ret['path'] = $path;
		if ( !$module->isMain() ) {
			$ret['group'] = $module->getParent()->getModuleManager()->getModuleGroup(
				$module->getModuleName()
			);
		}
		$ret['prefix'] = $module->getModulePrefix();

		$sourceInfo = $module->getModuleSourceInfo();
		if ( $sourceInfo ) {
			$ret['source'] = $sourceInfo['name'];
			if ( isset( $sourceInfo['namemsg'] ) ) {
				$ret['sourcename'] = $this->context->msg( $sourceInfo['namemsg'] )->text();
			} else {
				$ret['sourcename'] = $ret['source'];
			}

			$link = SpecialPage::getTitleFor( 'Version', 'License/' . $sourceInfo['name'] )->getFullURL();
			if ( isset( $sourceInfo['license-name'] ) ) {
				$ret['licensetag'] = $sourceInfo['license-name'];
				$ret['licenselink'] = (string)$link;
			} elseif ( SpecialVersion::getExtLicenseFileName( dirname( $sourceInfo['path'] ) ) ) {
				$ret['licenselink'] = (string)$link;
			}
		}

		$this->formatHelpMessages( $ret, 'description', $module->getFinalDescription() );

		foreach ( $module->getHelpFlags() as $flag ) {
			$ret[$flag] = true;
		}

		$ret['helpurls'] = (array)$module->getHelpUrls();
		if ( isset( $ret['helpurls'][0] ) && $ret['helpurls'][0] === false ) {
			$ret['helpurls'] = [];
		}
		ApiResult::setIndexedTagName( $ret['helpurls'], 'helpurl' );

		if ( $this->helpFormat !== 'none' ) {
			$ret['examples'] = [];
			$examples = $module->getExamplesMessages();
			foreach ( $examples as $qs => $msg ) {
				$item = [
					'query' => $qs
				];
				$msg = ApiBase::makeMessage( $msg, $this->context, [
					$module->getModulePrefix(),
					$module->getModuleName(),
					$module->getModulePath()
				] );
				$this->formatHelpMessages( $item, 'description', [ $msg ] );
				if ( isset( $item['description'] ) ) {
					if ( is_array( $item['description'] ) ) {
						$item['description'] = $item['description'][0];
					} else {
						ApiResult::setSubelementsList( $item, 'description' );
					}
				}
				$ret['examples'][] = $item;
			}
			ApiResult::setIndexedTagName( $ret['examples'], 'example' );
		}

		$ret['parameters'] = [];
		$params = $module->getFinalParams( ApiBase::GET_VALUES_FOR_HELP );
		$paramDesc = $module->getFinalParamDescription();
		foreach ( $params as $name => $settings ) {
			if ( !is_array( $settings ) ) {
				$settings = [ ApiBase::PARAM_DFLT => $settings ];
			}

			$item = [
				'name' => $name
			];
			if ( isset( $paramDesc[$name] ) ) {
				$this->formatHelpMessages( $item, 'description', $paramDesc[$name], true );
			}

			$item['required'] = !empty( $settings[ApiBase::PARAM_REQUIRED] );

			if ( !empty( $settings[ApiBase::PARAM_DEPRECATED] ) ) {
				$item['deprecated'] = true;
			}

			if ( $name === 'token' && $module->needsToken() ) {
				$item['tokentype'] = $module->needsToken();
			}

			if ( !isset( $settings[ApiBase::PARAM_TYPE] ) ) {
				$dflt = isset( $settings[ApiBase::PARAM_DFLT] )
					? $settings[ApiBase::PARAM_DFLT]
					: null;
				if ( is_bool( $dflt ) ) {
					$settings[ApiBase::PARAM_TYPE] = 'boolean';
				} elseif ( is_string( $dflt ) || is_null( $dflt ) ) {
					$settings[ApiBase::PARAM_TYPE] = 'string';
				} elseif ( is_int( $dflt ) ) {
					$settings[ApiBase::PARAM_TYPE] = 'integer';
				}
			}

			if ( isset( $settings[ApiBase::PARAM_DFLT] ) ) {
				switch ( $settings[ApiBase::PARAM_TYPE] ) {
					case 'boolean':
						$item['default'] = (bool)$settings[ApiBase::PARAM_DFLT];
						break;
					case 'string':
					case 'text':
					case 'password':
						$item['default'] = strval( $settings[ApiBase::PARAM_DFLT] );
						break;
					case 'integer':
					case 'limit':
						$item['default'] = intval( $settings[ApiBase::PARAM_DFLT] );
						break;
					case 'timestamp':
						$item['default'] = wfTimestamp( TS_ISO_8601, $settings[ApiBase::PARAM_DFLT] );
						break;
					default:
						$item['default'] = $settings[ApiBase::PARAM_DFLT];
						break;
				}
			}

			$item['multi'] = !empty( $settings[ApiBase::PARAM_ISMULTI] );
			if ( $item['multi'] ) {
				$item['limit'] = $this->getMain()->canApiHighLimits() ?
					ApiBase::LIMIT_SML2 :
					ApiBase::LIMIT_SML1;
				$item['lowlimit'] = ApiBase::LIMIT_SML1;
				$item['highlimit'] = ApiBase::LIMIT_SML2;
			}

			if ( !empty( $settings[ApiBase::PARAM_ALLOW_DUPLICATES] ) ) {
				$item['allowsduplicates'] = true;
			}

			if ( isset( $settings[ApiBase::PARAM_TYPE] ) ) {
				if ( $settings[ApiBase::PARAM_TYPE] === 'submodule' ) {
					if ( isset( $settings[ApiBase::PARAM_SUBMODULE_MAP] ) ) {
						ksort( $settings[ApiBase::PARAM_SUBMODULE_MAP] );
						$item['type'] = array_keys( $settings[ApiBase::PARAM_SUBMODULE_MAP] );
						$item['submodules'] = $settings[ApiBase::PARAM_SUBMODULE_MAP];
					} else {
						$item['type'] = $module->getModuleManager()->getNames( $name );
						sort( $item['type'] );
						$prefix = $module->isMain()
							? '' : ( $module->getModulePath() . '+' );
						$item['submodules'] = [];
						foreach ( $item['type'] as $v ) {
							$item['submodules'][$v] = $prefix . $v;
						}
					}
					if ( isset( $settings[ApiBase::PARAM_SUBMODULE_PARAM_PREFIX] ) ) {
						$item['submoduleparamprefix'] = $settings[ApiBase::PARAM_SUBMODULE_PARAM_PREFIX];
					}
				} elseif ( $settings[ApiBase::PARAM_TYPE] === 'tags' ) {
					$item['type'] = ChangeTags::listExplicitlyDefinedTags();
				} else {
					$item['type'] = $settings[ApiBase::PARAM_TYPE];
				}
				if ( is_array( $item['type'] ) ) {
					// To prevent sparse arrays from being serialized to JSON as objects
					$item['type'] = array_values( $item['type'] );
					ApiResult::setIndexedTagName( $item['type'], 't' );
				}
			}
			if ( isset( $settings[ApiBase::PARAM_MAX] ) ) {
				$item['max'] = $settings[ApiBase::PARAM_MAX];
			}
			if ( isset( $settings[ApiBase::PARAM_MAX2] ) ) {
				$item['highmax'] = $settings[ApiBase::PARAM_MAX2];
			}
			if ( isset( $settings[ApiBase::PARAM_MIN] ) ) {
				$item['min'] = $settings[ApiBase::PARAM_MIN];
			}
			if ( !empty( $settings[ApiBase::PARAM_RANGE_ENFORCE] ) ) {
				$item['enforcerange'] = true;
			}

			if ( !empty( $settings[ApiBase::PARAM_HELP_MSG_INFO] ) ) {
				$item['info'] = [];
				foreach ( $settings[ApiBase::PARAM_HELP_MSG_INFO] as $i ) {
					$tag = array_shift( $i );
					$info = [
						'name' => $tag,
					];
					if ( count( $i ) ) {
						$info['values'] = $i;
						ApiResult::setIndexedTagName( $info['values'], 'v' );
					}
					$this->formatHelpMessages( $info, 'text', [
						$this->context->msg( "apihelp-{$path}-paraminfo-{$tag}" )
							->numParams( count( $i ) )
							->params( $this->context->getLanguage()->commaList( $i ) )
							->params( $module->getModulePrefix() )
					] );
					ApiResult::setSubelementsList( $info, 'text' );
					$item['info'][] = $info;
				}
				ApiResult::setIndexedTagName( $item['info'], 'i' );
			}

			$ret['parameters'][] = $item;
		}
		ApiResult::setIndexedTagName( $ret['parameters'], 'param' );

		$dynamicParams = $module->dynamicParameterDocumentation();
		if ( $dynamicParams !== null ) {
			if ( $this->helpFormat === 'none' ) {
				$ret['dynamicparameters'] = true;
			} else {
				$dynamicParams = ApiBase::makeMessage( $dynamicParams, $this->context, [
					$module->getModulePrefix(),
					$module->getModuleName(),
					$module->getModulePath()
				] );
				$this->formatHelpMessages( $ret, 'dynamicparameters', [ $dynamicParams ] );
			}
		}

		return $ret;
	}

	public function isReadMode() {
		return false;
	}

	public function getAllowedParams() {
		// back compat
		$querymodules = $this->getMain()->getModuleManager()
			->getModule( 'query' )->getModuleManager()->getNames();
		sort( $querymodules );
		$formatmodules = $this->getMain()->getModuleManager()->getNames( 'format' );
		sort( $formatmodules );

		return [
			'modules' => [
				ApiBase::PARAM_ISMULTI => true,
			],
			'helpformat' => [
				ApiBase::PARAM_DFLT => 'none',
				ApiBase::PARAM_TYPE => [ 'html', 'wikitext', 'raw', 'none' ],
			],

			'querymodules' => [
				ApiBase::PARAM_DEPRECATED => true,
				ApiBase::PARAM_ISMULTI => true,
				ApiBase::PARAM_TYPE => $querymodules,
			],
			'mainmodule' => [
				ApiBase::PARAM_DEPRECATED => true,
			],
			'pagesetmodule' => [
				ApiBase::PARAM_DEPRECATED => true,
			],
			'formatmodules' => [
				ApiBase::PARAM_DEPRECATED => true,
				ApiBase::PARAM_ISMULTI => true,
				ApiBase::PARAM_TYPE => $formatmodules,
			]
		];
	}

	protected function getExamplesMessages() {
		return [
			'action=paraminfo&modules=parse|phpfm|query%2Ballpages|query%2Bsiteinfo'
				=> 'apihelp-paraminfo-example-1',
			'action=paraminfo&modules=query%2B*'
				=> 'apihelp-paraminfo-example-2',
		];
	}

	public function getHelpUrls() {
		return 'https://www.mediawiki.org/wiki/API:Parameter_information';
	}
}
