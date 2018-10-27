//
//  Category.swift
//  Coder Swag
//
//  Created by Manish Ghimire on 10/22/18.
//  Copyright © 2018 Manish Ghimire. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName:String){
        self.title = title
        self.imageName = imageName 
    }
    
}
