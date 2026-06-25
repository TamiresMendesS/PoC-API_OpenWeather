//
//  APIService.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import Foundation
internal import Combine

class ViewModel: ObservableObject {
    static let shared = ViewModel()
    
    private init() { }
    
    func fetch(completion: @escaping (Result<WeatherModel, Error>) -> Void) {
        
        let apiKey = "abd0e5c0504faefe6611dba79cc38836&units=metric"
        guard let endpoint = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Sao%20Paulo,BR&appid=\(apiKey)") else { return }
        
        let request = URLRequest(url: endpoint)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Erro: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                let parsed = try JSONDecoder().decode(WeatherModel.self, from: data)
                completion(.success(parsed))
              
            } catch(let error) {
                print(error)
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
