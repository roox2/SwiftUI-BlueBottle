//
//  DrinkRow.swift
//  BlueBottle
//
//  Created by DV-LT-216 on 2020/07/07.
//

import SwiftUI

struct DrinkRow: View {
    let drink: Drink
    
    var body: some View {
        Image(drink.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                VStack {
                    Text(drink.name)
                        .font(.headline)
                        .padding(.vertical, 4)
                    
                    Text(drink.subtitle)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .padding(.vertical, 4)
                    
                    Spacer()
                }
                .padding(20)
            )
    }
}
