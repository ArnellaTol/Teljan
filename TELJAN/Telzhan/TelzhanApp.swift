//
//  TelzhanApp.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI

@main
struct TelzhanApp: App {
    @StateObject private var dataController = DataBaseController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
