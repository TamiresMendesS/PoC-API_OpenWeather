//
//  WeatherModel.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import Foundation

struct Weather: Decodable {
    let temperature: Double
    let city: String
    let state: String
}
