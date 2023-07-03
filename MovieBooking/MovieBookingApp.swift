//
//  MovieBookingApp.swift
//  MovieBooking
//
//  Created by MacService on 7/3/23.
//

import SwiftUI
import SwiftData

@main
struct MovieBookingApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
