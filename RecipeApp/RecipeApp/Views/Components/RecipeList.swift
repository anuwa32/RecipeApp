//
//  RecipeList.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-17.
//

import SwiftUI

struct RecipeList: View {
    var recipies : [Recipe]
    var body: some View {
        VStack{
            HStack {
                Text("\(recipies.count) \(recipies.count > 1 ? "recipies" : "recipies")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(recipies) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipies: Recipe.all)
        }
    }
}
