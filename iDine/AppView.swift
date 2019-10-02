//
//  AppView.swift
//  iDine
//
//  Created by Kevin Lagat on 02/10/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}
