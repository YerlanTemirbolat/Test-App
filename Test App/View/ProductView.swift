//
//  ProductView.swift
//  Test App
//
//  Created by Admin on 10/6/20.
//

import SwiftUI

struct ProductView: View {
    
    var productData: ProductModel
    @State var detail = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Text("30%")
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .bold))
                    .padding(.all, 5)
                    .background(Color("bg2"))
                    .clipShape(Capsule())
                
                Spacer()
            }
            Image(productData.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                               
            Text(productData.title)
                .foregroundColor(.black)
                .font(.system(size: 15, weight: .bold))
            
            Text(productData.country)
                .foregroundColor(.gray)
                .font(.system(size: 15))
            
            Spacer()
            
            HStack(spacing: 80){
                VStack{
                    Text(productData.price)
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    Text(productData.price2)
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                }
                
                Button(action: {detail.toggle()}, label: {
                    Image("circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
            }
        }
        .fullScreenCover(isPresented: $detail) {
            DetailView()
        }
    }
}

