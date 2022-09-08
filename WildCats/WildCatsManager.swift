//
//  WildCats.swift
//  WildCats
//
//  Created by Apple on 02/09/2022.
//

import Foundation

struct WildCats:  Decodable , Identifiable {
    
    var id = UUID()
    var name:String
    var family:String
    var description:String
    var image: String
    var Class:String
    
    
}

var CatsFamily =  [WildCats(name: "Lion", family:"Felidae", description: "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range in color from blond to reddish-brown to black", image: "Lion", Class: "mammalia"),WildCats(name: "Jaguar", family: "Felidae", description: "aguars have brownish-yellow fur with dark rosettes. Often confused with leopards, jaguars may be distinguished by the additional marks in the center of these rosettes. ", image: "Jaguar", Class: "mammalia"),WildCats(name: "SnowLeopard", family: "Felidae", description: "now leopards have white or grey fur with black spots and rosettes. The coloration on the head is white with small black spots, and the back and tail are covered in larger rosette patterns", image: "SnowLeopard", Class: "mammalia"),WildCats(name: "Leopard", family: "Felidae", description: "What are leopards? These large carnivores are powerfully built with long bodies, relatively short legs, and a broad head", image: "Leopard", Class: "mammalia"),WildCats(name: "Tiger", family: "Felidae", description: "The tiger has a muscular body with strong forelimbs, a large head and a tail that is about half the length of its body", image: "Tiger", Class: "mammalia")]
