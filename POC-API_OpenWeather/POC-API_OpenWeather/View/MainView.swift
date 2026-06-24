//
//  FetchView.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import SwiftUI

struct MainView: View {
    var viewModel = ViewModel()
    
    var body: some View {
        Button("Fetch with Async/Await") {
            Task {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    MainView()
}
