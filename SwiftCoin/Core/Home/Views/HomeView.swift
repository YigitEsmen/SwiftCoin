//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Yigit Esmen on 8/15/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    TopMoversView(viewModel: viewModel)
                    
                    Divider()
                    
                    AllCoinsView(viewModel: viewModel)
                }
            }
            .navigationTitle("Live Prices")
        }
    }
}
