//
//  CategoryView.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-17.
//

import SwiftUI

struct CategoryView: View {
    
    var category: Category
    
    var recipes: [Recipe] {
        return Recipe.all.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipies: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
    }
}
