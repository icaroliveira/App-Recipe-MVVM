//
//  tabBar.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{Label("Home", systemImage: "house")}
            
            CategoriesView()
                .tabItem{Label("Categorias", systemImage: "square.fill.text.grid.1x2")}

            NewRecipeView()
                .tabItem{Label("Novas Receitas", systemImage: "plus")}

            FavoritesView()
                .tabItem{Label("Favoritos", systemImage: "heart")}

            SettingsView()
                .tabItem{Label("Configuraçoes", systemImage: "gear")}

        }
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
