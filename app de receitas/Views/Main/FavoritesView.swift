//
//  FavoritesView.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("Voce precisa salvar suas receitas favoritas aqui :)")
                .padding()
                .navigationTitle("Favoritos")
        }
        .navigationViewStyle(.stack)

    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
