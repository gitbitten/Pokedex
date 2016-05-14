//
//  PokeCell.swift
//  Pokedex-By-PlasticGravity
//
//  Created by Dave Whitehead on 5/13/16.
//  Copyright © 2016 PlasticGravity. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    // Since this VC is for the CollectionViewCell...need to make sure to change the UICollectionViewCell
    // to the name of this VC... PokeCell
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    // Need to store a Pokemon object so when a new cell is created we have a Class thats holding the data
    // and we don't have to add it over and over
    
    var pokemon: Pokemon!
    
    // Need a function to assigned these values and configure the cell.
    // If we did create the Pokemon object above..we wouldn't be able to configure the cell with the
    // pokemon values... error of this PokeCell.swift not having a value of pokemon
    
    func configureCell(pokemon: Pokemon) {
        // need to use "self" below since I used pokemon in the parameter
        self.pokemon = pokemon
        
        // text of the nameLbl is assigned from self.pokemon (var created above for Pokemon object) and 
        // accessing the "name" var initialized there; and capitalizing the first letter.
        
        // Same with the thumbImg..getting the name of the image to use from the pokedexId initialized 
        // in the Pokemon object.
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
        // So whenever configureCell is called it's going to pass in Pokemon object, and then
        // the name and image.
    }
    
    
}
