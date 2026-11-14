import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = WhoopRaceSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

/// Everything that changes when the app ships lives here, so no page has to be
/// touched for a release. An empty string switches the matching element off.
enum AppInfo {
    static let name = "WhoopRace"
    static let tagline = "Fly a tiny drone by tilting your phone. Build your own tracks and race them."

    /// App Store page, e.g. "https://apps.apple.com/app/id1234567890".
    /// Empty: the hero shows "Coming soon" instead of the App Store badge.
    static let appStoreURL = ""
    /// Public TestFlight link, e.g. "https://testflight.apple.com/join/XXXXXXXX".
    /// Empty: the beta row is hidden.
    static let testFlightURL = ""
    /// YouTube video id of a gameplay trailer. Empty: the video section is hidden.
    static let trailerYouTubeID = ""

    /// Same address as `WhoopRaceSupport.email` in the app.
    static let supportEmail = "mats.wiese@icloud.com"

    // Colours taken from the app icon.
    static let accent = "#ffab01"
    static let secondary = "#24c3c9"
    static let muted = "#666666"
}

struct WhoopRaceSite: Site {
    var name = AppInfo.name
    var url = URL(static: "https://whooprace.matswiese.app")
    var builtInIconsEnabled = true

    var author = "Mats Wiese"

    // The WhoopRace app page is the root of this subdomain; the portfolio home
    // lives on the separate matswiese.app site.
    var homePage = WhoopRace()
    var layout = AppLayout()

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        PrivacyPolicy()
        LegalNotice()
        Changelog()
    }
}
