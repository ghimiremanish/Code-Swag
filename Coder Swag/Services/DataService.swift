//
//  DataService.swift
//  Coder Swag
//
//  Created by Manish Ghimire on 10/22/18.
//  Copyright © 2018 Manish Ghimire. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.phg"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITALS", imageName: "digital.png"),
    Category(title: "Manish", imageName: "shirts.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphics Beanies", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$20", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo SnapBack", price: "$19", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$22", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Gray", price: "$55", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$33", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirts Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirts Grey", price: "$31", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirts Red", price: "$19", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirts Pink", price: "$99", imageName: "shirt04.png")
    ]
    
    private let digitalGoods = [Product]() //creating empty array
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITALGOODS":
            return getDigitalgoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalgoods() -> [Product] {
        return digitalGoods
    }
    
}
