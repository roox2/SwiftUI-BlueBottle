//
//  CafeInfoView.swift
//  BlueBottle
//
//  Created by DV-LT-216 on 2020/07/18.
//

import SwiftUI

struct CafeInfoView: View {
    @Binding var drinks: [Drink]
    @State var selectedCategory: Drink.Category = .feature
    
    let categories = Drink.Category.allCases
    
    var body: some View {
        VStack {
            HStack {
                Text("California Street")
                    .font(.title)
                
                Image(systemName: "chevron.down")
                    .foregroundColor(.blue)
            }
            
            Text("Mobile Orders Available")
                .font(.subheadline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.rawValue) { category in
                        Text(category.rawValue)
                            .font(Font.body.smallCaps())
                            .foregroundColor(category == selectedCategory ? Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)) : Color(#colorLiteral(red: 0.7060385942, green: 0.7060385942, blue: 0.7060385942, alpha: 1)))
                            .padding(.horizontal, 8)
                            .onTapGesture {
                                let filteredDrinks = Drink.fetchDrinks().filter { $0.category == category }
                                self.drinks = filteredDrinks
                                self.selectedCategory = category
                            }
                    }
                }
            }
            .padding(.all, 2)
        }
    }
}
