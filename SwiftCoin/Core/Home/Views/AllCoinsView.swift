//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Yigit Esmen on 8/16/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            VStack {
                ForEach(0 ..< 20, id: \.self) { _ in
                    CoinRowView()
                }
            }
        }
    }
}
