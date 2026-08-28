# Lunelle website

Static, dependency-free website and legal pages for the current Lunelle 1.0
implementation.

## Files

- `index.html`: bilingual product website
- `privacy.html`: bilingual privacy policy
- `terms.html`: bilingual terms of use / user agreement
- `styles.css`: shared responsive and print styles
- `site.js`: Chinese/English selection, language persistence, and mobile navigation
- `assets/app-icon.png`: copy of the current production app icon

The pages work when opened directly and when served by a static HTTP server.
Use `?lang=zh` or `?lang=en` to select a language explicitly. Otherwise the
site uses its saved language preference and then the browser language.

## Product facts reflected in this draft

- no Lunelle account, sign-in, developer cloud library, ads, or analytics SDK
- the user explicitly selects one image from the system photo interface
- the current primary flow does not use the camera
- crop, effects, brightness, and text watermark rendering happen on device
- the generated PNG is written to the system photo library only after the user
  taps **Save to Photos**
- only the app language preference is intentionally persisted by the Flutter
  code; the website separately stores `zh` or `en` in browser localStorage

Recheck these claims whenever dependencies, permissions, data flows, saving,
cloud features, analytics, advertising, or account support changes.

## Required before public publishing

The public operator and contact details have been confirmed as:

- operator: `Lunelle独立开发者`
- support/privacy email: `djl13333995679@163.com`

Before publishing, confirm the production website domain used by the app's
privacy and terms links.

Then obtain appropriate legal review for the release regions. These pages are
product-specific compliance drafts, not legal advice.

## App integration

After the site has a confirmed HTTPS domain, replace the two placeholder URLs in
`lib/app_settings.dart`:

- privacy: `https://<confirmed-domain>/privacy.html`
- terms: `https://<confirmed-domain>/terms.html`

Do not update the app to an unverified or unreachable domain. Keep the released
binary, store privacy disclosures, permission descriptions, and these pages in
sync.
