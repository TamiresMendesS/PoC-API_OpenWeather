//
//  WeatherViewModel.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 25/06/26.
//

import Foundation
internal import Combine

final class WeatherViewModel: ObservableObject {
    @Published var weatherRequestModel: WeatherRequestModel?
    
    func fetchData() {
        ViewModel.shared.fetch { [weak self] response in
            guard let self else { return }
            switch response {
            case .success(let weather):
                let temp = weather.main.temp - 273.15
                weatherRequestModel = WeatherRequestModel(temperature: weather.main.temp, cityName: weather.name)
            case .failure(let error):
                print(error)
            }
            
        }
    }
}
