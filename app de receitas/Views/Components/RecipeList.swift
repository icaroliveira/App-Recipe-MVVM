//
//  RecipeList.swift
//  app de receitas
//
//  Created by icaro on 27/03/23.
//

import SwiftUI

struct RecipeList: View {
    
    var recipes: [Receita]
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "Receitas" : "Receitas") ")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing:15){ ForEach(recipes) { recipe in
                NavigationLink(destination: RecipeView(recipe: recipe)) {
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
        ScrollView{
            RecipeList(recipes: Receita.all)
        }
    }
}
