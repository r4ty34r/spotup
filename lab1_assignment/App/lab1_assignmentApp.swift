//
//  lab1_assignmentApp.swift
//  lab1_assignment
//
//  Created by Tarikk Brown on 9/8/23.
//

import SwiftUI
import Firebase

@main
struct lab1_assignmentApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel())
        }
    }
}
