//
//  RecipeModels.swift
//  app de receitas
//
//  Created by icaro on 22/03/23.
//

import Foundation

enum Category: String{
    
    case caféDaManha = "caféDaManha"
    case sopa = "Sopa"
    case salada = "Salada"
    case entrada = "Entrada"
    case principal = "Principal"
    case acompanhamento = "Acompanhamento"
    case sobremesa = "Sobremesa"
    case lanche = "Lanche"
    case bebidas = "Bebidas"
}

struct Receita: Identifiable{
    let id = UUID()
    let nome: String
    let image: String
    let descricao: String
    let ingredientes: String
    let Instrucao: String
    let categoria: Category.RawValue
    let dataDePublicacao: String
    let url: String
}

extension Receita{
    static let all: [Receita] = [Receita(
        nome: "Pao de Batata Doce",
        image: "https://raquelicias.com.br/wp-content/uploads/2014/02/pao-queijo-fake_gords1.jpg",
        descricao: "Quem aí já viu o Pão de Queijo sem Queijo? Também chamado de Pão de Beijo, o Pão de Batata Doce é uma adaptação do tradicional pãozinho mineiro que conquistou o coração e estômago de muita gente, principalmente da turma vegana ou intolerante a lactose.'Raquel, fica com gosto de batata doce?'.A resposta é SIM mas por conta do polvilho grita bem alto a lembrança do pão de queijo, que dá sabor e textura na massa. A receita rende bem e é super tranquilo de congelar depois.",
        ingredientes: "1 xícara (chá) de batata-doce cozida e amassada (1 batata grande). 3 xícaras (chá) de farinha de trigo. ¾ de xícara (chá) de leite morno. 2 colheres (chá) de fermento biológico seco. 2 colheres (chá) de açúcar. 1 colher (sopa) de manteiga em temperatura ambiente. 2 ovos. 1 colher (chá) de sal. farinha de trigo para polvilhar a bancada",
        Instrucao: "1 Amasse a batata doce com um garfo. Em um recipiente, misture a batata doce com todos os ingredientes da receita. Mexa com as mãos. Você vai obter uma massa ótima para modelar os pães – que vão crescer bem pouco. Unte com 1 fio de óleo uma forma e disponha as bolinhas mais ou menos afastadas. Como dito acima, eles não crescem muito mas se você deixar muito junto, vai ter como resultado uma “pangéia” de pães.Leve ao forno pré-aquecido (pelo menos 15 minutos) e asse por 30 minutos a 180 graus. Fique de olho quando passar de 25 minutos, dependendo do forno podem dourar mais rápido.",
        categoria: "caféDaMAnha",
        dataDePublicacao: "22/03/2023",
        url: "https://raquelicias.com.br/2014/02/19/pao-de-queijo-fake-com-batata-doce/"
    
    
    ),
    Receita(nome: "Misto Quente",
            image:"https://www.sabornamesa.com.br/media/k2/items/cache/f863e4fb1b47b206b2276d9b70a5b183_XL.jpg",
            descricao: "Quem não ama misto quente? Esse prato vem para melhorar um clássico que já é delicioso. Experimente esse misto quente crocante, uma receita para surpreender no lanche ou brunch, para se deliciar com um prato rápido. Aprenda aqui no passo a passo e aproveite para comer com Maionese e Ketchup Hellmann's!",
            ingredientes: "2 fatias de pão de forma, 2 colheres (sopa) de Maionese Hellmann's, 2 fatias de queijo muçarela, 2 fatias de presunto cru",
            Instrucao: "Espalhe a maionese HELLMANN’S Original pela superfície interna das fatias de pão. Aqueça uma frigideira em fogo baixo, leve as fatias à frigideira com o lado da maionese virado para baixo. Disponha fatias a muçarela e o presunto, e cubra com a outra fatia do pão, deixando o lado com maionese para cima. Vire o sanduíche e deixe por mais 2 minutos no fogo, ou até que o queijo derreta. Retire do fogo e saboreie cada mordida!",
            categoria: "Lanche",
            dataDePublicacao: "22/03/2023",
            url: "https://www.hellmanns.com.br/receitas/misto-quente-crocante.html"),
                                 
    Receita(nome: "Limonada",
            image: "https://cdn0.tudoreceitas.com/pt/posts/8/1/2/limonada_alcalina_caseira_7218_600.webp",
            descricao: "As bebidas isotônicas, também conhecidas como bebidas esportivas e bebidas eletrolíticas, contribuem para hidratar o corpo de forma rápida e eficaz, potenciando a absorção de água e repondo os nutrientes necessários ao bom funcionamento do organismo.",
            ingredientes: "1 litro de água gelada, suco de 3 limões, 3 colheres (sopa) de açúcar",
            Instrucao: "Em uma jarra, misture bem todos os ingredientes. Sirva.",
            categoria: "Bebida",
            dataDePublicacao: "22/03/2023",
            url: "https://www.receitasnestle.com.br/receitas/limonada"),
                                 
    Receita(nome: "Salada de espinafre com bacon",
            image: "https://qualreceita.com.br/upload/receitas/654x242_salada_de_espinafre_com_cogumelos_e_bacon.jpg",
            descricao: "Uma salada de espinafre e bacon é uma mistura saborosa de folhas de espinafre frescas, crocantes pedaços de bacon cozido, cebolas roxas picadas e ovos cozidos. Geralmente é temperada com um molho de vinagrete doce e salgado, e às vezes é acompanhada de croutons ou outros ingredientes adicionais",
            ingredientes: "100 gramas de queijo gorgonzola,Azeite quanto baste, 1/2 colher de sopa de mostarda dijon, 1 colher de sopa de mel, 1 colher de sopa de creme de leite, 1 maço de espinafre lavado, 50 gramas de bacon frito em cubinhos pequenos ou fatias desidratadas no micro-ondas, 8 damascos picados ou 100 gramas de cogumelos salteados na manteiga, 50 gramas de nozes ou amêndoas tostadas",
            Instrucao: "Amasse o queijo gorgonzola com azeite e faça uma pastinha.Adicione a mostarda, mel, creme de leite.Coloque parte espinafre em uma tigela.Espalhe um pouco do molhinho preparado por cima.Coloque mais folhas e molho.Finalize com o bacon em pedaços pequenos.Coloque o damasco/cogumelos e as nozes/amêndoas por cima.Finalize com azeite e está pronta para servir! Bom apetite.",
            categoria:"Salada",
            dataDePublicacao: "22/03/2023",
            url: "https://www.receitasnestle.com.br/receitas/limonada"),
                                 
    Receita(nome: "Omelete de forno com queijo",
            image: "https://img.itdg.com.br/tdg/images/recipes/000/197/359/299360/299360_original.jpg",
            descricao: "oi princial",
            ingredientes: "ingredientes do prato principal",
            Instrucao: "modo de preparo do prato principal",
            categoria: "Principal",
            dataDePublicacao: "22/03/2023",
            url: "nao tem url"),
                                 
    Receita(nome: "Farofa de proteína de soja",
            image: "https://www.receiteria.com.br/wp-content/uploads/farofa-de-proteina-de-soja.jpg",
            descricao: "descricao do acompanhamento",
            ingredientes: "ingredientes do",
            Instrucao: "modo de preparo",
            categoria: "Acompanhamento",
            dataDePublicacao: "22/03/2023",
            url: "nao tem url"),
                                 
    Receita(nome: "Bolo de chocolate",
            image: "https://img.itdg.com.br/tdg/images/recipes/000/309/779/348000/348000_original.jpg?w=1200",
            descricao: "descricao do",
            ingredientes: "ingredientes do",
            Instrucao: "modo de preparo",
            categoria: "sobremesa",
            dataDePublicacao: "22/03/2023",
            url: "nao tem url"),
                                 
    Receita(nome: "Brusqueta de cogumelo",
            image:"https://cloudfront-us-east-1.images.arcpublishing.com/estadao/TJGCECLLHFDRFHU5PWZZARVVT4.jpg",
            descricao: "descricao do",
            ingredientes: "ingredientes do",
            Instrucao: "modo de preparo",
            categoria: "Entrada",
            dataDePublicacao: "22/03/2023",
            url: "nao tem url"),
                                 
    Receita(nome: "Sopa de legumes",
            image: "https://www.sabornamesa.com.br/media/k2/items/cache/4a5dadae8236179289a29d4a9cb30754_XL.jpg",
            descricao: "descricao do",
            ingredientes: "ingredientes do",
            Instrucao: "modo de preparo",
            categoria: "Sopa",
            dataDePublicacao: "22/03/2023",
            url:"sei la")
    ]
}
