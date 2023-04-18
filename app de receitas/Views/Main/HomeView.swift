//
//  HomeView.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: Receita.all)
            }
            .navigationTitle("Minhas Receitas")
        }
        .navigationViewStyle(.stack)
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
