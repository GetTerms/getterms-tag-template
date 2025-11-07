# GetTerms Consent Management Template

A Google Tag Manager template that enables seamless integration between the GetTerms Cookie Consent Widget and Google Consent Mode, allowing you to manage user consent preferences and automatically update Google's consent signals based on user choices.

## Overview

This template allows users to integrate Google Consent Mode with their GetTerms Consent Widget, including the ability to install the widget via the template and set the default consent options and widget language. The template automatically translates GetTerms consent categories to Google's consent mode categories and ensures proper consent signal management for Google Analytics, Google Ads, and other Google services.

## Features

- **Google Consent Mode Integration**: Automatically maps GetTerms consent categories to Google's consent mode signals
- **Widget Installation**: Optional installation of the GetTerms consent widget directly through GTM (not recommended for optimal performance)
- **Multi-language Support**: Configure widget language with auto-detection capabilities
- **Fallback Consent States**: Set default consent values that apply before user interaction
- **Regional Defaults (GDPR/EEA)**: Set a single default consent configuration that applies automatically to all GDPR countries (EU + EEA)
- **Country-specific Overrides**: Define per‑country default consent configurations that take precedence over regional defaults
- **Real-time Consent Updates**: Automatically updates Google consent signals when users change their preferences
- **localStorage Integration**: Reads and respects existing user consent preferences
- **Developer ID Registration**: Includes GetTerms developer ID for consent mode debugging

### Supported Consent Categories

The template maps GetTerms categories to Google Consent Mode as follows:

| GetTerms Category | Google Consent Mode Types |
|-------------------|---------------------------|
| Marketing | `ad_storage`, `ad_user_data`, `ad_personalization` |
| Analytics | `analytics_storage` |
| Functional | `functionality_storage`, `personalization_storage` |
| Essential Cookies | `security_storage` |

## Installation

### Prerequisites

- Google Tag Manager account with publish permissions
- GetTerms account with a configured consent widget
- Website with Google Tag Manager installed

### Steps

1. **Import the Template**:
   - Download the template file (`template.tpl`)
   - In Google Tag Manager, go to Templates → Tag Templates
   - Click "New" and then "Import"
   - Select the downloaded template file

2. **Create a New Tag**:
   - Go to Tags → New
   - Choose the "GetTerms Consent Mode Tag Template"
   - Configure the tag settings (see Configuration section)

3. **Set Trigger**:
   - Add a trigger that fires on "Consent Initialization - All Pages"
   - This ensures the consent mode is set before other tags fire

4. **Publish**:
   - Submit and publish your GTM container

## Configuration

### Required Settings

The template works without any required configuration if you have already installed the GetTerms widget manually in your website's `<head>` section.

### Optional Settings

#### Widget Installation via GTM (Not Recommended)

⚠️ **Warning**: Installing the widget via GTM can impact script blocking reliability. Only use this method if you cannot access your website's `<head>` section.

- **GetTerms ID**: Your unique GetTerms widget identifier (e.g., `12abc345-d6ef-7891-g2h3-45ijk6lm78n`)
- **Default Widget Language**: Choose from supported languages:
  - English US (`en-us`)
  - English UK (`en-au`) 
  - German (`de`)
  - French (`fr`)
  - Italian (`it`)
  - Spanish (`es`)
  - Hindi (`hi-in`)
- **Enable auto-language detection**: Automatically detect user's preferred language

#### Fallback Default Consent State

These settings serve as global fallback defaults if the GetTerms consent banner fails to load. **We recommend not changing these settings** from their default "denied" state.

- **ad_storage**: Controls advertising cookies (default: denied)
- **ad_user_data**: Controls advertising user data (default: denied)
- **ad_personalization**: Controls ad personalization (default: denied)
- **analytics_storage**: Controls analytics cookies (default: denied)
- **functionality_storage**: Controls functional cookies (default: denied)
- **personalization_storage**: Controls personalization cookies (default: denied)
- **security_storage**: Controls essential cookies (default: granted)

#### Regional Default Consent (GDPR/EEA)

Enable a single default consent configuration that applies to users located in GDPR countries (EU + EEA). This is useful when you want to enforce a stricter default for the entire region.

- Toggle: "Set default consent behavior for GDPR region"
- For each consent type, choose the default you want applied across GDPR countries
- If not explicitly set, the template's GDPR defaults are:
  - ad_storage: denied
  - ad_user_data: denied
  - ad_personalization: denied
  - analytics_storage: denied
  - functionality_storage: granted
  - personalization_storage: denied
  - security_storage: granted

Notes:
- GDPR defaults are applied automatically when enabled.
- If you also define per‑country overrides, those take precedence for the specified countries and will be excluded from the regional rollout.

#### Country-specific Default Consent Overrides

Define default consent configurations for individual countries. Use this when a specific country requires a different default than your GDPR regional setting or global fallback.

- Toggle: "Country specific default consent state settings"
- Click "New Country Override" to add an entry
- Select the target country and choose default values for each consent type

Requirements and behavior:
- Country overrides take precedence over GDPR regional defaults
- Country overrides are applied when the template controls the GetTerms widget (i.e., when using the widget installation via GTM) and the country override feature is enabled
- If both GDPR defaults and country overrides are enabled, the template will apply the country override to the specified country and the GDPR default to the rest of the GDPR countries

## Usage

### Recommended Implementation

1. **Manual Widget Installation** (Recommended):
   - Install the GetTerms widget script directly in your website's `<head>` section
   - Configure this GTM template with no optional settings
   - The template will automatically detect the existing widget and handle consent mode integration

2. **GTM Widget Installation** (Alternative):
   - Use the template's widget installation feature
   - Configure your GetTerms ID and language preferences
   - The template will inject the widget script and handle consent mode

### How It Works

1. **Initialization**: The template sets default consent states for all Google services
2. **Widget Detection**: Checks if the GetTerms widget is already installed
3. **Consent Reading**: Reads existing user consent preferences from localStorage
4. **Consent Mapping**: Translates GetTerms categories to Google consent mode signals
5. **Regional/Country Defaults**: If enabled, applies GDPR regional defaults and any defined country overrides before the banner displays to the user
6. **Real-time Updates**: Listens for consent changes and updates Google services accordingly

### Integration with Other Tags

- **Google Analytics 4**: Will automatically respect consent mode settings
- **Google Ads**: Will adjust data collection based on consent signals
- **Other Google Services**: Any service that supports consent mode will be affected

## Troubleshooting

### Common Issues

**Issue**: Google Analytics not respecting consent settings
- **Solution**: Ensure the GetTerms template fires before your GA4 tag using the "Consent Initialization" trigger

**Issue**: Widget not appearing on the page
- **Solution**: Check that your GetTerms ID is correct and that the widget is properly configured in your GetTerms dashboard

**Issue**: Consent preferences not persisting
- **Solution**: Verify that localStorage is enabled in the user's browser and not being cleared by other scripts

**Issue**: Multiple consent banners appearing
- **Solution**: Ensure you're not installing the GetTerms widget both manually and via GTM

### Debug Mode

Enable GTM Preview mode to see console logs from the template:
- Look for `[Tag Manager]` prefixed messages
- Check consent state changes in the browser's developer tools
- Use Google's Consent Mode debugger for detailed consent signal tracking

### Consent Mode Debugging

The template registers with Google's developer ID (`dMjlhZj`) for enhanced consent mode debugging. Use Google's consent mode debugging tools to verify proper implementation.

## Support

### Documentation
- [GetTerms Consent Mode Setup Guide](https://support.getterms.io/article/42-how-to-set-up-google-consent-mode-with-get-terms)
- [Google Consent Mode Documentation](https://developers.google.com/tag-manager/consent)

### GetTerms Support
- **Website**: [https://getterms.io](https://getterms.io)
- **Support Portal**: [https://support.getterms.io](https://support.getterms.io)
- **Contact**: Available through the GetTerms dashboard

### Technical Support
For technical issues with this GTM template:
1. Check the troubleshooting section above
2. Review the GetTerms documentation
3. Contact GetTerms support with your specific configuration details

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.
