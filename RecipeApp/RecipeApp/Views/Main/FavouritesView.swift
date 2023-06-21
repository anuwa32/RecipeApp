//
//  FavouritesView.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-15.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView{
            Text("In here you can add recipies")
                .padding()
                .navigationTitle("Favourites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
