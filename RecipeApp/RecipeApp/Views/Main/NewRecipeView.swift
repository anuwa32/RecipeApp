//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-15.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView{
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
