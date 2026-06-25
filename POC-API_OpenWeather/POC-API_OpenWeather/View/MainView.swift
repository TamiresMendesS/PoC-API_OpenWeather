//
//  FetchView.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import SwiftUI

struct MainView: View {
    @StateObject private var weatherViewModel = WeatherViewModel()
    
    var body: some View {
        Button("Fetch with Async/Await") {
            Task {
                weatherViewModel.fetchData()
            }
        }
    }
}

#Preview {
    MainView()
}
