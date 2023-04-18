//
//  CategoriesView.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categorias")
                .navigationTitle("Categorias")
        }
        .navigationViewStyle(.stack)
// oi
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
