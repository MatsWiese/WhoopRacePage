import Foundation
import Ignite

struct PrivacyPolicy: StaticPage {
    var title = "Privacy Policy"
    var path = "/privacypolicy"
    var layout = AppLayout()

    var body: some HTML {
        Section {
            Text("Privacy Policy")
                .font(.title1)
                .foregroundStyle(AppInfo.accent)
                .margin(.top, 30)

            english

            Divider()
                .margin(.vertical, 40)

            deutsch
        }
        .background("#000000")
        .padding(.top, 100)
        .padding(.bottom, 60)
        .padding(.horizontal, 40)
    }

    @HTMLBuilder var english: some HTML {
        Text("english")
            .font(.title3)
            .foregroundStyle(.light)
            .margin(.top, 30)

        Text("This Privacy Policy describes which data the app 'WhoopRace' and this website process, and what for.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Privacy Policy")
            .font(.title2)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Emphasis("last updated: Nov 14th, 2026")
            .foregroundStyle(AppInfo.muted)

        Text("Who is responsible")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Frederik Wiesmann (Mats Wiese), Kirchweg 1, 79713 Bad Säckingen, Germany. Email: \(AppInfo.supportEmail)")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Data that stays on your device")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("To steer the drone, the app reads your device's motion sensors. Motion data is processed on the device only while you fly. Your sound, haptics and control settings are stored on the device.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Your own iCloud")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Your tracks, your runs and personal bests, your tutorial progress and your settings are saved on your device and synced through your private iCloud storage (Apple CloudKit), so they are available on all your devices. I cannot read data in your private iCloud.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Sharing a track with friends")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("When you share a track with a link, the track is shared with the people who accept that link through iCloud sharing. They can see the track, your pilot name, your times and the recordings of your runs (ghosts) on that track, and you can see theirs.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Public data: gallery, leaderboards and challenges")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("WhoopRace identifies you without a login by an anonymous iCloud user identifier that Apple provides for this app. It does not reveal your Apple Account, your name or your email address to me or to other players.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("When you publish a track, submit a time to a leaderboard or fly a challenge, the following is stored in the app's public CloudKit database at Apple and is visible to other players: the track with its name, description, tags and preview image, your times, the recordings of your runs (ghosts), and your pilot name. If you are signed in to Game Center, your Game Center nickname is used as your pilot name; otherwise a generic name such as 'Pilot 1234' is shown.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("If you report a track or a player, your report (the reason, your optional text and your anonymous identifier) is stored so that I can review it. Tracks and names that violate the Community Guidelines may be removed, and players may be blocked from publishing. Players you block are saved in your private iCloud only.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Notifications")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("If you allow notifications, the app can tell you about new challenges and when someone beats your time. They are delivered through Apple's push notification service. You can switch them off in iOS Settings at any time.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Purchases")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Subscriptions are bought through the App Store. Apple processes the payment; I receive no payment details. The app only checks with Apple whether a subscription is active.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Contact")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("If you send feedback from the app, the email draft contains your iOS version, device model and app version. You decide whether to send it. Your email address is only used to answer you and is never shared. The 'Run diagnostics' file is created on your device and only leaves it if you share it yourself.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("This website")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("This website is hosted on GitHub Pages. GitHub, Inc. processes your IP address and technical request data to deliver the pages. The site sets no cookies and uses no analytics. Embedded YouTube videos, where present, load content from Google when the page is opened.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Legal basis, storage and your rights")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Data is processed to provide the functions you use (Art. 6 (1) (b) GDPR) and to keep the community safe (Art. 6 (1) (f) GDPR). Public data stays stored until it is removed. You have the right to access, correction, deletion, restriction, data portability and objection, and the right to complain to a data protection authority. To have published tracks, times or your pilot profile deleted, send me an email.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Changes to this Privacy Policy")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("This policy may be updated to reflect changes in the app, in technology or in legal requirements. Changes will be listed in section \"last updated\" on top of this page.")
            .foregroundStyle(.light)
            .margin(.top, 10)
    }

    @HTMLBuilder var deutsch: some HTML {
        Text("deutsch")
            .font(.title3)
            .foregroundStyle(.light)

        Text("Diese Datenschutzerklärung beschreibt, welche Daten die App \"WhoopRace\" und diese Website verarbeiten und wofür.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Datenschutzerklärung")
            .font(.title2)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Emphasis("zuletzt aktualisiert: 14. November 2026")
            .foregroundStyle(AppInfo.muted)

        Text("Verantwortlicher")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Frederik Wiesmann (Mats Wiese), Kirchweg 1, 79713 Bad Säckingen, Deutschland. E-Mail: \(AppInfo.supportEmail)")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Daten, die auf deinem Gerät bleiben")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Zum Steuern der Drohne liest die App die Bewegungssensoren deines Geräts. Bewegungsdaten werden nur während des Flugs und nur auf dem Gerät verarbeitet. Deine Einstellungen für Ton, Haptik und Steuerung werden auf dem Gerät gespeichert.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Deine eigene iCloud")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Deine Tracks, deine Läufe und Bestzeiten, dein Tutorial-Fortschritt und deine Einstellungen werden auf deinem Gerät gespeichert und über deinen privaten iCloud-Speicher (Apple CloudKit) synchronisiert, damit sie auf all deinen Geräten verfügbar sind. Auf Daten in deiner privaten iCloud habe ich keinen Zugriff.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Tracks mit Freunden teilen")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Wenn du einen Track per Link teilst, wird er über die iCloud-Freigabe mit den Personen geteilt, die den Link annehmen. Sie sehen den Track, deinen Pilotennamen, deine Zeiten und die Aufzeichnungen deiner Läufe (Ghosts) auf diesem Track, und du siehst ihre.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Öffentliche Daten: Galerie, Bestenlisten und Challenges")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("WhoopRace erkennt dich ohne Anmeldung über eine anonyme iCloud-Benutzerkennung, die Apple für diese App bereitstellt. Sie gibt weder mir noch anderen Spielern deinen Apple Account, deinen Namen oder deine E-Mail-Adresse preis.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Wenn du einen Track veröffentlichst, eine Zeit in eine Bestenliste einträgst oder eine Challenge fliegst, wird Folgendes in der öffentlichen CloudKit-Datenbank der App bei Apple gespeichert und ist für andere Spieler sichtbar: der Track mit Name, Beschreibung, Tags und Vorschaubild, deine Zeiten, die Aufzeichnungen deiner Läufe (Ghosts) und dein Pilotenname. Bist du im Game Center angemeldet, wird dein Game-Center-Spitzname als Pilotenname verwendet, sonst ein allgemeiner Name wie \"Pilot 1234\".")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Wenn du einen Track oder einen Spieler meldest, wird deine Meldung (Grund, dein optionaler Text und deine anonyme Kennung) gespeichert, damit ich sie prüfen kann. Tracks und Namen, die gegen die Community-Richtlinien verstoßen, können entfernt und Spieler vom Veröffentlichen ausgeschlossen werden. Spieler, die du blockierst, werden nur in deiner privaten iCloud gespeichert.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Mitteilungen")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Wenn du Mitteilungen erlaubst, informiert dich die App über neue Challenges und darüber, wenn jemand deine Zeit schlägt. Sie werden über Apples Push-Dienst zugestellt. Du kannst sie jederzeit in den iOS-Einstellungen abschalten.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Käufe")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Abonnements werden über den App Store gekauft. Die Zahlung wickelt Apple ab; ich erhalte keine Zahlungsdaten. Die App fragt bei Apple nur ab, ob ein Abonnement aktiv ist.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Kontakt")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Wenn du aus der App Feedback sendest, enthält der E-Mail-Entwurf deine iOS-Version, dein Gerätemodell und die App-Version. Du entscheidest, ob du ihn absendest. Deine E-Mail-Adresse wird nur für die Antwort verwendet und nie weitergegeben. Die Datei \"Run diagnostics\" wird auf deinem Gerät erstellt und verlässt es nur, wenn du sie selbst teilst.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Diese Website")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Diese Website wird bei GitHub Pages gehostet. GitHub, Inc. verarbeitet deine IP-Adresse und technische Anfragedaten, um die Seiten auszuliefern. Die Seite setzt keine Cookies und nutzt keine Analyse-Dienste. Eingebettete YouTube-Videos laden, sofern vorhanden, beim Öffnen der Seite Inhalte von Google.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Rechtsgrundlage, Speicherdauer und deine Rechte")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Die Daten werden verarbeitet, um die von dir genutzten Funktionen bereitzustellen (Art. 6 Abs. 1 lit. b DSGVO) und um die Community zu schützen (Art. 6 Abs. 1 lit. f DSGVO). Öffentliche Daten bleiben gespeichert, bis sie entfernt werden. Du hast das Recht auf Auskunft, Berichtigung, Löschung, Einschränkung, Datenübertragbarkeit und Widerspruch sowie das Recht, dich bei einer Datenschutz-Aufsichtsbehörde zu beschweren. Um veröffentlichte Tracks, Zeiten oder dein Pilotenprofil löschen zu lassen, schreib mir eine E-Mail.")
            .foregroundStyle(.light)
            .margin(.top, 10)

        Text("Änderungen dieser Datenschutzerklärung")
            .font(.title3)
            .foregroundStyle(AppInfo.accent)
            .margin(.top, 30)

        Text("Diese Erklärung kann angepasst werden, wenn sich die App, die Technik oder rechtliche Anforderungen ändern. Änderungen werden oben unter \"zuletzt aktualisiert\" vermerkt.")
            .foregroundStyle(.light)
            .margin(.top, 10)
    }
}
