//
//  SettingsView.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-15.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView{
            Text("Settings")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
