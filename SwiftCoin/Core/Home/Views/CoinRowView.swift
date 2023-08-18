//
//  CoinRowView.swift
//  SwiftCoin
//
//  Created by Yigit Esmen on 8/16/23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 1)
            }
            .padding(.leading, 6)
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrencyWith2Decimals())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .foregroundColor(coin.priceChangePercentage24H >= 0 ? .green : .red)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
