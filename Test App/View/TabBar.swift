//
//  TabBar.swift
//  Test App
//
//  Created by Admin on 10/7/20.
//

import SwiftUI

struct TabBar: View {
    
    @State var index = 1
    
    var body: some View {
        HStack(spacing: 5) {
            Button(action: {
                withAnimation {
                    self.index = 0
                }
                
            }) {
    
                VStack(spacing: 5) {
                    Image(systemName: "flame")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 0 ? .white : Color.black.opacity(0.35))
                        .padding(10)
                        .background(index == 0 ? Color.red : Color.clear)
                        .clipShape(Circle())
                    
                    Text(index == 0 ? "Главная" : "Главная")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                }
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.index = 1
                }
                
            }) {
    
                VStack(spacing: 5) {
                    Image(systemName: "text.justifyleft")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 1 ? .white : Color.black.opacity(0.35))
                        .padding(10)
                        .background(index == 1 ? Color.red : Color.clear)
                        .clipShape(Circle())
                    
                    Text(index == 1 ? "Меню" : "Меню")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.index = 2
                }
                
            }) {
                
                VStack(spacing: 5) {
                    Image(systemName: "folder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 2 ? .white : Color.black.opacity(0.35))
                        .padding(10)
                        .background(index == 2 ? Color.red : Color.clear)
                        .clipShape(Circle())
                    
                    Text(index == 2 ? "Карта" : "Карта")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                }
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.index = 3
                }
                
            }) {
                
                VStack(spacing: 5) {
                    Image(systemName: "cart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 3 ? .white : Color.black.opacity(0.35))
                        .padding(10)
                        .background(index == 3 ? Color.red : Color.clear)
                        .clipShape(Circle())
                    
                    Text(index == 3 ? "Корзина" : "Корзина")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                }
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    self.index = 4
                }
                
            }) {
                
                VStack(spacing: 5) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(index == 4 ? .white : Color.black.opacity(0.35))
                        .padding(10)
                        .background(index == 4 ? Color.red : Color.clear)
                        .clipShape(Circle())
                    
                    Text(index == 4 ? "Профиль" : "Профиль")
                        .foregroundColor(.black)
                        .font(.system(size: 12))
                }
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        .background(Color(.white))
        .clipShape(CustomCorner(corners: [.topLeft, .topRight], size: 40))
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: -5)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
