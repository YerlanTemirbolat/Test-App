//
//  Home.swift
//  Test App
//
//  Created by Admin on 10/6/20.
//

import SwiftUI

struct Home: View {
    
    @State var selected: ProductModel //= products[0]
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    HStack(spacing: 10) {
                        Button(action: {}, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.red)
                                .font(.system(size: 24))
                        })
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.red)
                                .font(.system(size: 24))
                            
                        })
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("7")
                                .foregroundColor(.red)
                                .font(.system(size: 24))
                        })
                    }
                    
                    Text("Картофель")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold))
                }
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "text.alignleft")
                            .foregroundColor(.red)
                            .font(.system(size: 22))
                    })
                    
                    Spacer()
                    
                    Text("Сначала дорогие")
                        .foregroundColor(.red)
                        .font(.system(size: 16, weight: .bold))
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 15) {
                        ForEach(products) { product in
                            ProductView(productData: product)
                        }
                    }
                    .padding()
                })
                
                TabBar()
            }
        }
        .background(Color("bg"))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(selected: products[0])
    }
}

