//
//  WeatherModel.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import Foundation

// MARK: - WeatherModel
struct WeatherModel: Codable {
    var coord: Coord
    var weather: [Weather]
    var base: String
    var main: Main
    var wind: Wind
    var clouds: Clouds
    var dt: Int
    var sys: Sys
    var timezone, id: Int
    var name: String
    var cod: Int
}

// MARK: - Coord
struct Coord: Codable {
    var lon, lat: Double
}

// MARK: - Weather
struct Weather: Codable {
    var id: Int
    var main, description, icon: String
}

// MARK: - Main
struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity, seaLevel, grndLevel: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
    }
}

// MARK: - Wind
struct Wind: Codable {
    var speed, deg: Double
    var gust: Int
}

// MARK: - Clouds
struct Clouds: Codable {
    var all: Int
}

// MARK: - Sys
struct Sys: Codable {
    var type: Int
    var id: UUID
    var country: String
    var sunrise, sunset: Int
}

