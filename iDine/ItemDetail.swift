//
//  ItemDetail.swift
//  iDine
//
//  Created by Kevin Lagat on 02/10/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    
    @State private var orderAdded = false
    
    var item: MenuItem
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This"){
                self.order.add(item: self.item)
                self.orderAdded.toggle()
            }
            .font(.headline)
            .alert(isPresented: $orderAdded) {
                Alert(title: Text("Your order has been added"), dismissButton: .default(Text("OK")))
            }
            
            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}
