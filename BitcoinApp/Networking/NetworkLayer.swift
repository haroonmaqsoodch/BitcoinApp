//
//  NetworkLayer.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import Foundation

class NetworkLayer {
    static let shared = NetworkLayer()
    
    func serviceCall(url: String, completion: @escaping (Result<Any?, Error>) -> ()){
        guard let url = URL(string: url) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                print(String(describing: error))
            }else if let data = data {
                completion(.success(data))
            }
        }.resume()
    }
}
