//
//  Pokemon.swift
//  Pokedex-By-PlasticGravity
//
//  Created by Dave Whitehead on 5/13/16.
//  Copyright © 2016 PlasticGravity. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    
    var name: String {
        get {
            return _name
        }
    }
    
    var pokedexId: Int {
        get {
            return _pokedexId
        }
    }
    
    init(name: String, pokeexId: Int) {
        _name = name
        _pokedexId = pokeexId
    }
    
}