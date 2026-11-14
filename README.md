# WhoopRacePage

Website for the iOS game WhoopRace: https://whooprace.matswiese.app

Built with the [Ignite static site generator](https://github.com/twostraws/Ignite), same setup as `laptimerpage`.

- `Sources/Site.swift`: site definition and `AppInfo` (App Store link, TestFlight link, trailer video, support email, colours). Empty strings hide the matching element.
- `Sources/Pages/`: home page (`WhoopRace.swift`), `PrivacyPolicy`, `LegalNotice`, `Changelog`.
- `Assets/images/`: app icon, iPhone frame, screenshot. `Assets/CNAME` sets the custom domain.

Build locally with `swift run` (output in `Build/`), preview with `ignite run --preview`.
A push to `main` builds and deploys to GitHub Pages (`.github/workflows/deploy.yml`).

The privacy policy URL `https://whooprace.matswiese.app/privacypolicy` is referenced by the app (`WhoopRaceSupport.privacyPolicyURL`), so keep that path.
