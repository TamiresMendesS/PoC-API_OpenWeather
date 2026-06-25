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
    var timezone: Int
    var id: Int
    var name: String
    var cod: Int
}

// MARK: - Coord
struct Coord: Codable {
    var long: Double
    var lat: Double
}

// MARK: - Weather
struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
    var icon: String
}

// MARK: - Main
struct Main: Codable {
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Int
    var humidity: Int
    var sea_level: Int
    var grnd_level: Int
}

// MARK: - Wind
struct Wind: Codable {
    var speed: Double
    var deg: Double
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
    var sunrise: Int
    var sunset: Int
}

