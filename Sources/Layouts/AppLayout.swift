import Foundation
import Ignite

struct DarkPageBackground: Style {
    func style(content: StyledHTML, environment: EnvironmentConditions) -> StyledHTML {
        content.style(.backgroundColor, "#000000")
    }
}

/// Layout for the WhoopRace app site (the app page at the subdomain root and its
/// sub-pages: Privacy Policy, Legal Notice, What's New). The left-side brand
/// button leads to `logoTarget`, which the page sets: the app's main page links
/// to the portfolio home on matswiese.app, while its sub-pages use "/" (back up
/// to the app page at this subdomain's root).
struct AppLayout: Layout {
    /// Destination for the navigation bar's brand/logo button.
    var logoTarget: String = "/"
    /// Text shown next to the brand/logo.
    var logoText: String = AppInfo.name

    var body: some Document {
        Head {
            MetaStyle("body", style: DarkPageBackground())
        }
        Body {
            NavigationBar {
                Link("Privacy Policy", target: "/privacypolicy")
                Link("Legal Notice", target: "/legalnotice")
                Link("What's New", target: "/changelog")
            } logo: {
                Link(target: logoTarget) {
                    Image(decorative: "/images/appiconWhoopRace.png")
                        .frame(width: 36, height: 36)
                        .style(.borderRadius, "9px")
                        .style(.marginRight, "8px")
                    " \(logoText)"
                }
            }
            .navigationBarStyle(.dark)
            .background("rgba(0,0,0,0.3)")
            .style(.backdropFilter, "blur(4px)")
            .position(.fixedTop)

            content

            Section {
                VStack(alignment: .center) {
                    HStack(alignment: .center, spacing: 20) {
                        Text("Made by Mats Wiese")
                            .foregroundStyle(AppInfo.muted)
                        Link(target: "https://github.com/matswiese") {
                            Image(systemName: "github", description: "GitHub")
                        }
                        .foregroundStyle(AppInfo.muted)
                        Link(target: "https://youtube.com/@stammix") {
                            Image(systemName: "youtube", description: "YouTube")
                        }
                        .foregroundStyle(AppInfo.muted)
                        Link(target: "mailto:\(AppInfo.supportEmail)") {
                            Image(systemName: "envelope-fill", description: "Email")
                        }
                        .foregroundStyle(AppInfo.muted)
                    }
                    .margin(.top, 30)

                    HStack(alignment: .center, spacing: 30) {
                        Link("Privacy Policy", target: "/privacypolicy")
                            .foregroundStyle(AppInfo.muted)
                        Link("Legal Notice", target: "/legalnotice")
                            .foregroundStyle(AppInfo.muted)
                        Link("What's New", target: "/changelog")
                            .foregroundStyle(AppInfo.muted)
                    }
                    .margin(.vertical, 20)
                }
            }
            .background("#000000")
            .padding(40)
        }
        .ignorePageGutters()
    }
}
