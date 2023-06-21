//
//  HomePage.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-15.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipies: Recipe.all)
            }
            .navigationTitle("All Recipies")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
