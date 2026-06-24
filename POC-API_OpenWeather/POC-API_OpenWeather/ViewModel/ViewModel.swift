//
//  APIService.swift
//  POC-API_OpenWeather
//
//  Created by Tamires Mendes da Silva on 24/06/26.
//

import Foundation
internal import Combine

class ViewModel: ObservableObject {
    @Published var weather: [Weather] = []
    
    func fetch() {
        
        let apiKey = "abd0e5c0504faefe6611dba79cc38836&units=metric"
        guard let endpoint = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Sao%20Paulo,BR&appid=\(apiKey)") else { return }
        
        let request = URLRequest(url: endpoint)
        
        let task = URLSession.shared.dataTask(with: request) { [ weak self ] data, _, error in
            if let error = error {
                print("Erro: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                let parsed = try JSONDecoder().decode([Weather].self, from: data)
                
                DispatchQueue.main.async {
                    self?.weather = parsed
                }
              
            } catch {
               print(error)
            }
        }
        task.resume()
    }
}
