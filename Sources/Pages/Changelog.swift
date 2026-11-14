import Foundation
import Ignite

struct Version {
    let versionNumber: String
    let badgeTitle: String
    let text: String
}

struct Changelog: StaticPage {
    var title = "What's New"
    var path = "/changelog"
    var layout = AppLayout()

    // Newest first. Keep in step with `WhatsNew.releases` in the app.
    let versions: [Version] = [
        Version(versionNumber: "0.1", badgeTitle: "Beta", text: "A new home screen with a tile for every track you fly, invites from friends right in the list, search and filter, and a lesson list to replay the tutorial."),
    ]

    var body: some HTML {
        Section {
            Text("What's New")
                .font(.title1)
                .foregroundStyle(AppInfo.accent)
                .margin(.top, 30)

            Divider()
                .margin(.vertical, 30)

            ForEach(versions) { version in
                Text("Version \(version.versionNumber)")
                    .font(.title2)
                    .foregroundStyle(AppInfo.accent)

                if version.badgeTitle != "" {
                    Badge(version.badgeTitle)
                        .role(.info)
                        .margin(.bottom, 20)
                }

                Text(version.text)
                    .foregroundStyle(.light)
                    .margin(.bottom, 30)
            }
        }
        .background("#000000")
        .padding(.top, 100)
        .padding(.bottom, 60)
        .padding(.horizontal, 40)
    }
}
