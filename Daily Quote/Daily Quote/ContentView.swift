//
//  ContentView.swift
//  Daily Quote
//
//  Created by Brady Chin on 11/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .calendar
    enum Tab {
        case calendar, favorites
    }
    var body: some View {
        TabView {
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
                .tag(Tab.calendar)
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
                .tag(Tab.favorites)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
