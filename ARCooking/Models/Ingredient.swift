//
//  Ingredient.swift
//  ARCooking
//
//  Created by Luan Gabriel Fernandes Aiezza on 10/01/26.
//

import Foundation

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    let isMainIngredient: Bool
}
