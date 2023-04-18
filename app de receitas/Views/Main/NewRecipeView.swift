//
//  NewRecipeView.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("Novas Receitas")
                .navigationTitle("Novas Receitas")
        }
        .navigationViewStyle(.stack)

    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
