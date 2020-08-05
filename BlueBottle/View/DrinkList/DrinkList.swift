//
//  DrinkList.swift
//  BlueBottle
//
//  Created by DV-LT-216 on 2020/07/07.
//

import SwiftUI

struct DrinkList: View {
    @State var isShowingDetail: Bool = false
    @State var drink: Drink = Drink.fetchDrinks()[0]
    
    @State var drinks = Drink.fetchDrinks()
    
    var body: some View {
        ZStack {
            VStack {
                CafeInfoView(drinks: $drinks)
                    .padding(.top, 16)
                ScrollView {
                    LazyVStack {
                        ForEach(drinks) { drink in
                            DrinkRow(drink: drink)
                                .onTapGesture {
                                    self.drink = drink
                                    withAnimation {
                                        isShowingDetail = true
                                    }
                                }
                        }
                    }
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
            
            DrinkDetail(isShown: $isShowingDetail, drink: $drink)
                .offset(x: 0, y: isShowingDetail ? 0 : UIScreen.main.bounds.height)
        }
    }
}

struct DrinkList_Previews: PreviewProvider {
    static var previews: some View {
        DrinkList()
    }
}
