//
//  Enums.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import Foundation

enum Errors: Error {
    case networkingError
    case decodingError
    case unkownError
}

enum myUrl: String {
    case cryptoApi = "https://api.nomics.com/v1/currencies/ticker?key=66b5b97906c5119c7c1aba257ea95859d79a1968&ids=BTC&interval=1d,30d&convert=EUR&per-page=100&page=1"
}

enum allStoryboards: String {
    case storyboardId = "ViewController"
}
