//
//  DetailView.swift
//  Test App
//
//  Created by Admin on 10/6/20.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var present
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    present.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.red)
                        .font(.title)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("7")
                        .foregroundColor(.red)
                        .font(.title)
                })
            }
            .padding()
            
            VStack {
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 223, height: 192)
            }
            .padding(.bottom, 10)
           
            VStack {
                HStack(spacing: 40) {
                    Text("Смесь овощная СВОЙ")
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("108 P")
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.medium)
                }
                
                HStack(spacing: 75) {
                    Text("УРОЖАЙ Паприкаш")
                        .foregroundColor(.black)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("172 P")
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                }
                
                HStack(spacing: 185) {
                    Text("Россия, 220 г")
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                    
                    Text("30%")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .bold))
                        .padding(.all, 5)
                        .background(Color("bg2"))
                        .clipShape(Capsule())
                }
                .padding(.top, 12)
                
                Button(action: {}, label: {
                    HStack {
                        Text("Добавить в список")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                        Image("plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                })
                .padding()
                .frame(width: UIScreen.main.bounds.width - 40)
                .background(Color(.red))
                .cornerRadius(12)
                .padding(.top, 10)
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 10){
                    Text("Информация")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    HStack{
                        Text("Цена по карте")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                    HStack{
                        Text("Цена без карте")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                    HStack{
                        Text("Обычная цена")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                    HStack{
                        Text("Производитель")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                    HStack{
                        Text("Бренд")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                    HStack{
                        Text("Упаковка")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                        
                        Spacer()
                        
                        Text("500")
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                    }
                }
                .padding()
            })
        }
    }
}


