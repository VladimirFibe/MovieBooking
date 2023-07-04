import SwiftUI
import SwiftData

@main
struct MovieBookingApp: App {

    var body: some Scene {
        WindowGroup {
            TicketView()
        }
        .modelContainer(for: Item.self)
    }
}
