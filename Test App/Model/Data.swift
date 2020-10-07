//
//  Data.swift
//  Test App
//
//  Created by Admin on 10/6/20.
//

import SwiftUI

struct ProductModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var country: String
    var price: String
    var price2: String
}

var products = [

    ProductModel(image: "1", title: "Смесь овощная СВОЙ УРОЖАЙ Паприкаш", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "2", title: "Смесь овощная СВОЙ УРОЖАЙ Цветная капуста и брокколи", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "3", title: "Дыня Колхозница вес.", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "4", title: "Огурцы короткоплодные колючие, весовые", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "1", title: "Смесь овощная СВОЙ УРОЖАЙ Паприкаш", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "2", title: "Смесь овощная СВОЙ УРОЖАЙ Цветная капуста и брокколи", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "3", title: "Дыня Колхозница вес.", country: "Россия, 220 г", price: "108P", price2: "172P"),
    ProductModel(image: "4", title: "Огурцы короткоплодные колючие, весовые", country: "Россия, 220 г", price: "108P", price2: "172P"),
    
]
