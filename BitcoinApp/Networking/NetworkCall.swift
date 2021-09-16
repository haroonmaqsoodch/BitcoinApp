//
//  NetworkCall.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import Foundation

class NetworkCall {
    static let shared = NetworkCall()
    
    func getRequest(url: String, completion: @escaping(BitcoinInfo?, Errors?) -> ()){
        NetworkLayer.shared.serviceCall(url: url) { results in
            switch results {
            case .success(let data):
                do {
                    let decoder = try JSONDecoder().decode([BitcoinInfo].self, from: data as! Data)
                    DispatchQueue.main.async {
                        for i in decoder{
                        completion(i, nil)
                        }
                    }
                }catch {
                    completion(nil, .decodingError)
                }
            case .failure(_):
                completion(nil, .networkingError)
            }
        }
    }
}
