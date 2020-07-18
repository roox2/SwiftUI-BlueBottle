//
//  Drink.swift
//  BlueBottle
//
//  Created by DV-LT-216 on 2020/07/07.
//

import Foundation

struct Drink: Identifiable {
    enum Category: String, CaseIterable {
        case feature = "Featured"
        case tip = "Tip"
        case toShare = "To Share"
        case espresso = "Espresso"
        case coldbrew = "Cold Brew"
        case teaAndMore = "Tea and More"
    }
    
    var id = UUID()
    let name: String
    let subtitle: String
    let imageURL: String
    let description: String
    let preparation: String
    let calories: String
    
    let category: Category
    
    // 많이 쓰이는 형태
    static func fetchDrinks() -> [Drink] {
        return [
            Drink(name: "Cappuccino",
                  subtitle: "Espresso balanced with a short pour of velvety steamed milk; sometimes called a “flat white”",
                  imageURL: "BlueBottle.Cappuccino",
                  description: "Our cappuccino is made in the modern style, balancing our full-bodied espresso with velvety steamed milk-not the stiff foam cap of yore. In specialty coffee circles this newer style is sometimes called a “flat white.” But we consider it the new cappuccino standard.",
                  preparation: "Espresso",
                  calories: "45 - 140",
                  category: .espresso),
            
            Drink(name: "Caffè Latte",
                  subtitle: "Espresso sweetened with a long pure of steamed milk",
                  imageURL: "BlueBottle.CaffeLatte",
                  description: "One of our most popular drinks, our latte turns our assertive, chocolatey Hayes Valley Espresso velvety-sweet with a long pour of densely steamed milk.",
                  preparation: "Espresso",
                  calories: "100 - 230",
                  category: .espresso),
            
            Drink(name: "Gibraltar",
                  subtitle: "Espresso topped off with steamed milk-our version of a cortado",
                  imageURL: "BlueBottle.Gibraltar",
                  description: "A Blue Bottle original, our Gibraltar is named for the beveled glass in which it’s served. An espresso topped off with steamed milk, our version of a Spanish cortado is built for immediate quaffing.",
                  preparation: "Espresso",
                  calories: "40 - 80",
                  category: .espresso),
            
            Drink(name: "Caffè Mocha",
                  subtitle: "Espresso with steamed milk and chocolate ganache",
                  imageURL: "BlueBottle.Gibraltar",
                  description: "The tradition of combining coffee, coffee, chocolate, and milk or cream dates back to eighteenth-century Turin’s Caffè al Bicerin. We source our chocolate from local purveyors, a different one in each city.",
                  preparation: "Espresso",
                  calories: "210 - 360",
                  category: .espresso),
            
            Drink(name: "Shakerato",
                  subtitle: "Espresso, milk, vanilla, and cane sugar hand-shaken over ice until chilled and frothy",
                  imageURL: "BlueBottle.Shakerato",
                  description: "A spin on a classic Italian iced-coffee treat, our seasonal shakerato contains espresso and milk lightly sweetened with earthy-sweet muscovado sugar, hand-shaken over ice until chilled and frothy.",
                  preparation: "Espresso",
                  calories: "60 - 160",
                  category: .espresso),
            
            Drink(name: "Americano",
                  subtitle: "Espresso pulled over hot water",
                  imageURL: "BlueBottle.Americano",
                  description: "Similar in strength to a pour over, our Americano also boasts the rich flavor of our bold, ristretto-style espresso.",
                  preparation: "Espresso",
                  calories: "0 - 70",
                  category: .espresso),
            
            Drink(name: "New Orleans-Style Iced Coffee",
                  subtitle: "With milk, cane sugar, and roasted chicory",
                  imageURL: "BlueBottle.NewOrleans",
                  description: "New Orleans-style Iced Coffee is a sweet, creamy, decadent iced coffee that’s cold-brewed with roasted chicory, then cut with your choice of milk and cane sugar.",
                  preparation: "Cold Brew",
                  calories: "60 -120",
                  category: .feature),
            
            Drink(name: "Single Origin Cold Brew Can",
                  subtitle: "A sippable pure iced coffee from Colombia",
                  imageURL: "BlueBottle.ColdBrewCan",
                  description: "This Colombia single origin forms the backbone of our cafes’ espresso. When cold-brewed over many hours, this sippable coffee shines alone.",
                  preparation: "",
                  calories: "0",
                  category: .coldbrew),
        ]
    }
    
    static let advice: String = "Please be advised our food and drinks may contain allergens because we use shared equipment to store, prepare, and serve them. 2,000 calories a day is used for general nutrition advice, but calorie needs vary."
}
