//
//  DrinkDetailView.swift
//  BlueBottle
//
//  Created by DV-LT-216 on 2020/07/08.
//

import SwiftUI

struct DrinkDetail: View {
    @Binding var isShown: Bool
    @Binding var drink: Drink
    
    var body: some View {
        ZStack {
            // 배경
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Image(drink.imageURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {
                        Text(drink.name)
                            .font(Font.title.smallCaps())
                            .bold()
                        
                        Text(drink.subtitle)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 8)
                    }
                    .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading) {
                        Text(drink.description)
                            .font(.subheadline)
                            .padding(.vertical, 16)
                        
                        Text("Preparation: \(drink.preparation)")
                            .font(.subheadline)
                            .padding(.top, 16)
                        
                        Text("Calories: \(drink.calories)")
                            .font(.subheadline)
                            .padding(.bottom, 16)
                        
                        Text(Drink.advice)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.vertical, 16)
                    }
                    .padding(.horizontal, 20)
                }
            }
            .edgesIgnoringSafeArea(.top)
            
            // X button
            VStack {
                HStack {
                    Spacer()
                    
                    Image(systemName: "x.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 28, height: 28)
                        .padding(.trailing, 20)
                        .background(
                            Color.white
                                .frame(width: 28, height: 28)
                                .cornerRadius(14)
                                .offset(x: -10, y: 0)
                                
                        )
                        .onTapGesture {
                            withAnimation {
                                isShown = false
                            }
                        }
                }
                
                Spacer()
                
                Color(drink.available ? .systemBlue : .systemGroupedBackground)
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: 80)
                    .overlay(
                        VStack {
                            Text("Add Item")
                                .font(Font.body.smallCaps())
                                .foregroundColor(drink.available ? .white : .gray)
                            
                            Text("$ " + drink.price)
                                .font(Font.body)
                                .foregroundColor(drink.available ? .white : .gray)
                        }
                    )
            }
        }
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    struct Preview: View {
        @State var isShown = true
        @State var drink = Drink.fetchDrinks()[0]
        
        var body: some View {
            DrinkDetail(isShown: $isShown, drink: $drink)
        }
    }
    static var previews: some View {
        Preview()
    }
}
