//
//  RecipeView.swift
//  app de receitas
//
//  Created by icaro on 03/04/23.
//

import SwiftUI

struct RecipeView: View {

var recipe: Receita
var body: some View {
    ScrollView{
        AsyncImage(url: URL(string: recipe.image)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                
        } placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 300)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
        
    VStack(spacing: 30){
        Text(recipe.nome)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
    
    VStack(alignment: .leading, spacing: 20){
        if !recipe.descricao.isEmpty{
            Text(recipe.descricao)
        }
            
        if !recipe.ingredientes.isEmpty{
            VStack(alignment: .leading, spacing: 20) {
                Text("Ingredientes")
                    .font(.headline)
                Text(recipe.ingredientes)
            }
        }
        if !recipe.Instrucao.isEmpty{
            VStack(alignment: .leading, spacing: 20){
                Text("Instrucao")
                    .font(.headline)
                Text(recipe.Instrucao)
            }
          }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    .padding(.horizontal)
}
.ignoresSafeArea(.container, edges: .top)
}
}

struct RecipeView_Previews: PreviewProvider {
static var previews: some View {
    RecipeView(recipe: Receita.all[0])
}
}
