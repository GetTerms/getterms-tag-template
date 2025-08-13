___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_NGMP4",
  "version": 1.2,
  "displayName": "GetTerms Consent Mode Tag Template",
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ],
  "brand": {
    "id": "github.com_humaan",
    "displayName": "GetTerms",
    "thumbnail": "data:image/png;b...(12949 characters truncated, it's impossible to view or edit this line)
  },
  "description": "Enables Consent Mode integration with the GetTerms Cookie Consent Widget",
  "containerContexts": [
    "WEB"
  ],
  "securityGroups": []
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "Optional Settings",
    "displayName": "Optional Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "GROUP",
        "name": "GTM widget installation",
        "displayName": "Widget installation via GTM (not recommended)",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "widgetSlug",
            "displayName": "GetTerms ID",
            "simpleValueType": true,
            "valueHint": "e.g. 12abc345-d6ef-7891-g2h3-45ijk6lm78n",
            "help": "Embeds the Consent Banner via GTM.  This will impact script blocking reliability - Only use this method if you do not have access to your website's \u003chead\u003e."
          },
          {
            "type": "SELECT",
            "name": "defaultLanguage",
            "displayName": "Default Widget Language",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "en-us",
                "displayValue": "English US"
              },
              {
                "value": "en-au",
                "displayValue": "English UK"
              },
              {
                "value": "de",
                "displayValue": "German"
              },
              {
                "value": "fr",
                "displayValue": "French"
              },
              {
                "value": "it",
                "displayValue": "Italian"
              },
              {
                "value": "es",
                "displayValue": "Spanish"
              },
              {
                "value": "hi-in",
                "displayValue": "Hindi"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "en-us"
          },
          {
            "type": "CHECKBOX",
            "name": "autoLang",
            "checkboxText": "Enable auto-language detection",
            "simpleValueType": true,
            "help": "If enabled, GetTerms CMP widget will attempt to match the users preferred language to one of our available options."
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "Fallback Default Consent State",
        "displayName": "Fallback default consent state",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "SELECT",
            "name": "ad_storage",
            "displayName": "ad_storage",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Advertising\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "ad_user_data",
            "displayName": "ad_user_data",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Advertising\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "ad_personalization",
            "displayName": "ad_personalization",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Advertising\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "analytics_storage",
            "displayName": "analytics_storage",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Performance\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "functionality_storage",
            "displayName": "functionality_storage",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Functional\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "personalization_storage",
            "displayName": "personalization_storage",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "denied",
            "help": "Maps to \"Functional\" checkbox in GetTerms Cookie Widget"
          },
          {
            "type": "SELECT",
            "name": "security_storage",
            "displayName": "security_storage",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "Denied"
              },
              {
                "value": "granted",
                "displayValue": "Granted"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "granted",
            "help": "Maps to \"Essential\" checkbox in GetTerms Cookie Widget"
          }
        ],
        "help": "We recommend not changing these settings. They serve as the global fallback defaults if the GetTerms consent banner fails to load consent preferences."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Import GTM template APIs and utilities
const injectScript = require('injectScript'); // Used to load external script into the page
const queryPermission = require('queryPermission'); // Checks if we have permission to inject a given URL
const callInWindow = require('callInWindow'); // (Not used here, but available if needed to call window methods)
const localStorage = require('localStorage'); // Provides localStorage access inside GTM templates
const gtagSet = require('gtagSet'); // Sets values that can be used by gtag
const setDefaultConsentState = require('setDefaultConsentState'); // Sets initial default consent values
const updateConsentState = require('updateConsentState'); // Updates consent values (e.g. after user accepts/denies)
const log = require('logToConsole'); // GTM-safe console logging
const JSON = require('JSON'); // Safe JSON object for parsing and stringifying

// Read configuration values from GTM tag settings
const autoLang = data.autoLang || false;
const lang = data.defaultLanguage || 'en-us';
const widgetSlug = data.widgetSlug || null;

// Fetch current embed type for widget. If the widget has been embedded manually in &lt;head&gt; by the user prior to GTM script, this should be "ManualEmbed", else null
  const embedType = localStorage.getItem('getterms_init') || null;


  // Construct the embed script URL for the GetTerms cookie widget
  // We only set url if we have a slug and there is no current embed prior to tag loading
  const url = data.widgetSlug && (!embedType || embedType === 'GTMTemplate') ? 'https://app.getterms.io/cookie-consent/embed/' + widgetSlug + '/' + lang + (autoLang ? '?auto=true' : '')
  : null;

  // Key used to store user cookie preferences in localStorage
  const STORAGE_KEY = 'getterms_cookie_consent';

  // Attempt to inject the widget script if allowed by GTM permissions
  if (url && queryPermission('inject_script', url)) {
  // Set a marker in localStorage so we can detect later that this script was injected via GTM. This is required for specific consent behaviour within our CMP
  localStorage.setItem('getterms_init', 'GTMTemplate');

  // Success callback when the script loads
  const onSuccess = () => {
  log('[Tag Manager] GetTerms script loaded successfully.');
  data.gtmOnSuccess(); // Notify GTM that tag execution succeeded
  };

  // Failure callback if the script fails to load
  const onFailure = () => {
  log('[Tag Manager] GetTerms script load failed.');
  data.gtmOnFailure(); // Notify GTM that tag execution failed
  };

  injectScript(url, onSuccess, onFailure);
  }

  // Helper to read cookie preferences from localStorage and parse JSON
  function localStorageGetItem(key) {
  const cache = localStorage.getItem(STORAGE_KEY);
  if (!cache) return null;

  const parsedCache = JSON.parse(cache);
  const item = parsedCache[key];
  if (!item) return null;

  return item;
  }

  /**
  * Called when user consent preferences change.
  * Translates GetTerms categories to Google's consent mode categories.
  */
  const onUserConsent = (prefs) => {
  const consentModeStates = {
  // Map GetTerms categories to Google consent types
  ad_storage: prefs["Marketing"] ? "granted" : "denied",
  ad_user_data: prefs["Marketing"] ? "granted" : "denied",
  ad_personalization: prefs["Marketing"] ? "granted" : "denied",
  analytics_storage: prefs["Analytics"] ? "granted" : "denied",
  functionality_storage: prefs["Functional"] ? "granted" : "denied",
  personalization_storage: prefs["Functional"] ? "granted" : "denied",
  security_storage: prefs["Essential Cookies"] ? "granted" : "denied",
  };
  updateConsentState(consentModeStates);
  log('[Tag Manager] updating consent state: ' + consentModeStates);
  };

  /**
  * Main setup function, called during GTM execution
  */
  const main = (data) => {
  // Register developer ID for debugging visibility in Consent Mode
  gtagSet('developer_id.dMjlhZj', true);

  // Set default consent values from GTM template fields
  // Always set to values from tag. We will overwrite with widget data if set
  const defaultData = {
  ad_storage: data.ad_storage,
  ad_user_data: data.ad_storage,
  ad_personalization: data.ad_personalization,
  analytics_storage: data.analytics_storage,
  functionality_storage: data.functionality_storage,
  personalization_storage: data.personalization_storage,
  security_storage: data.security_storage,
  wait_for_update: 2000, // Delay GA/ads until updated consent is available
  };

  // Set initial consent state to allow GA to delay until `updateConsentState` is called
  if(!embedType || embedType === 'GTMTemplate'){
  setDefaultConsentState(defaultData);
  log('[Tag Manager] defaultData: ', defaultData);
  log('[Tag Manager] No embed, or embedType = GTMTemplate');
  log('[Tag Manager] Embed Type: ' + embedType);
  } else if(embedType === 'ManualEmbed') {
  log('[Tag Manager] Widget manually installed and will handle user default consent state');
  } else {
  setDefaultConsentState(defaultData);
  log('[Tag Manager] Embed Type set to non standard: ' + embedType);
  }

  // Check if preferences have already been set by the widget
  const getTermsCookiePrefs = localStorageGetItem("cookie_preferences");
  log("[Tag Manager] getTermsCookiePrefs =", getTermsCookiePrefs);

  // If user has already given consent, apply it if the widget has not already been loaded
  if ((!embedType || embedType === 'GTMTemplate') && getTermsCookiePrefs) {
  onUserConsent(getTermsCookiePrefs);
  }

  if(embedType === 'ManualEmbed'){
  log('[Tag Manager] Widget manually installed and will handle user consent update');
  }

  };

  // Run main setup
  main(data);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "gtCookieWidgetAddGtmCallback"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "developer_id.dMjlhZj"
              },
              {
                "type": 1,
                "string": "getterms_init"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "getterms_cookie_consent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "getterms_init"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.getterms.io/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


  ___TESTS___

  scenarios:
  - name: Untitled test 1
  code: |-
  const mockData = {
  // Mocked field values
  };

  // Call runCode to run the template's code.
  runCode(mockData);

  // Verify that the tag finished successfully.
  assertApi('gtmOnSuccess').wasCalled();


  ___NOTES___

  Created on 17/04/2024, 08:53:38
