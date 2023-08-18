//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Yigit Esmen on 8/16/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
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
                ForEach(viewModel.coins) { coin in
                    CoinRowView(coin: coin)
                }
            }
        }
    }
}
