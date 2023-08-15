//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Yigit Esmen on 8/15/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    TopMoversView()
                    
                    Divider()
                    
                    AllCoinsView()
                }
            }
            .navigationTitle("Live Prices")
        }
    }
}
