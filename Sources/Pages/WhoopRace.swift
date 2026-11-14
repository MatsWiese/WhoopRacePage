import Foundation
import Ignite

struct Feature {
    let title: String
    let description: String
    let icon: String
}

struct WhoopRace: StaticPage {
    var title = AppInfo.name
    var layout = AppLayout(logoTarget: "https://matswiese.app", logoText: "MatsWiese.app")

    let features: [Feature] = [
        Feature(title: "Tilt to fly",         description: "Steer by tilting your phone and drag a finger for thrust. Real physics, no rails.",   icon: "phone-flip"),
        Feature(title: "Learn to fly",        description: "Ten short lessons take you from the first take-off to a personal best on your own track.", icon: "mortarboard-fill"),
        Feature(title: "Build your tracks",   description: "Put pipes, gates and poles together in the Track Builder, then test-fly right away.",  icon: "bricks"),
        Feature(title: "Angle, Horizon, Acro", description: "Start in Angle mode, move on to Horizon and Acro, and tune your own rates.",          icon: "sliders"),
        Feature(title: "Race your friends",   description: "Share a track with with friends and compare your times the leaderboard.",         icon: "people-fill"),
        Feature(title: "Replay your run",     description: "Rewatch any flight and share a video.",   icon: "stopwatch-fill"),
        Feature(title: "Community tracks",    description: "Publish your tracks to the gallery and fly what other pilots have built.",             icon: "globe"),
        Feature(title: "Timed challenges",    description: "Fly the current challenge track and get a note when someone beats your time.",         icon: "trophy-fill"),
    ]

    var body: some HTML {
        // Hero: iPhone mockup + app info on the app icon's gradient
        Section {
            Grid(spacing: .medium) {
                VStack(alignment: .center) {
                    ZStack {
                        Image(decorative: "/images/iphoneFrame black.png")
                            .resizable()
                            .frame(height: 520)
                        Image(decorative: "/images/screenshotWhoopRace.jpg")
                            .resizable()
                            .frame(height: 500)
                            .style(.borderRadius, "22px")
                            .padding(.top, 4)
                    }
                }
                .width(5)
                .padding(.top, 20)

                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 20) {
                        Image(decorative: "/images/appiconWhoopRace.png")
                            .frame(width: 80, height: 80)
                            .style(.borderRadius, "18px")
                        VStack(alignment: .leading, spacing: 4) {
                            Text(AppInfo.name)
                                .font(.title3)
                                .foregroundStyle(AppInfo.accent)
                            Text("FPV whoop racing for iPhone and iPad")
                                .foregroundStyle(.light)
                        }
                    }
                    Text(AppInfo.tagline)
                        .font(.lead)
                        .fontWeight(.bold)
                        .foregroundStyle(.light)
                        .margin(.top, 30)

                    if AppInfo.appStoreURL != "" {
                        Link(target: AppInfo.appStoreURL) {
                            Image(decorative: "/images/appstore.png")
                                .frame(height: 60)
                        }
                        .margin(.top, 30)
                    }

                    if AppInfo.appStoreURL == "" {
                        Badge("Coming soon to the App Store")
                            .role(.warning)
                            .margin(.top, 30)
                    }

                    if AppInfo.testFlightURL != "" {
                        HStack(alignment: .center, spacing: 12) {
                            Link(target: AppInfo.testFlightURL) {
                                Image(decorative: "/images/testflighticon.png")
                                    .frame(width: 40, height: 40)
                                    .style(.borderRadius, "9px")
                            }
                            .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                            Link("Join the beta in TestFlight", target: AppInfo.testFlightURL)
                                .linkStyle(.underline(UnderlineProminence.none, hover: .none))
                                .foregroundStyle(.light)
                                .fontWeight(.bold)
                        }
                        .margin(.top, 30)
                    }
                }
                .width(7)
                .padding(.top, 60)
                .padding(.leading, 20)
            }
        }
        .style(.backgroundImage, "linear-gradient(180deg,#1f9fb6 0%,#1a5f9e 55%,#101c3f 100%)")
        .style(.borderRadius, "0 0 40px 40px")
        .padding(.top, 80)
        .padding(.bottom, 60)

        // Gameplay video (hidden until AppInfo.trailerYouTubeID is set)
        if AppInfo.trailerYouTubeID != "" {
            Section {
                Grid(spacing: .large) {
                    VStack(alignment: .center) {
                        Text("See it fly")
                            .font(.lead)
                            .fontWeight(.bold)
                            .foregroundStyle(.light)
                            .padding(.bottom, 20)

                        Embed(youTubeID: AppInfo.trailerYouTubeID, title: "WhoopRace gameplay")
                            .aspectRatio(.r16x9)
                    }
                    .width(8)
                    .padding(.top, 40)
                }
            }
        }

        // Features grid
        Section {
            Grid(spacing: .large) {
                ForEach(features) { feature in
                    HStack(alignment: .top, spacing: 16) {
                        Image(systemName: feature.icon, description: feature.title)
                            .font(.title3)
                            .foregroundStyle(AppInfo.accent)
                        VStack(alignment: .leading, spacing: 4) {
                            Text(feature.title)
                                .font(.title5)
                                .foregroundStyle(AppInfo.accent)
                            Text(feature.description)
                                .foregroundStyle(.light)
                        }
                    }
                    .width(4)
                }
            }
            .columns(3)
        }
        .background("#000000")
        .padding(.vertical, 40)
        .padding(.horizontal, 40)

        // Free vs. subscription
        Section {
            Grid(spacing: .large) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Free")
                        .font(.title5)
                        .foregroundStyle(AppInfo.secondary)
                    Text("Learn flying in the tutorial, build own tracks and share them with up to five friends.")
                        .foregroundStyle(.light)
                }
                .width(6)

                VStack(alignment: .leading, spacing: 4) {
                    Text("With a subscription")
                        .font(.title5)
                        .foregroundStyle(AppInfo.secondary)
                    Text("Race pilots around the world, find exciting tracks and make yourself known in the leaderboards.")
                        .foregroundStyle(.light)
                }
                .width(6)
            }
        }
        .background("#000000")
        .padding(.bottom, 40)
        .padding(.horizontal, 40)
    }
}
