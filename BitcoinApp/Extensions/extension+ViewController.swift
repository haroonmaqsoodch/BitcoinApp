//
//  s.swift
//  BitcoinApp
//
//  Created by Haroon Maqsood on 9/16/21.
//

import UIKit
import SVGKit
extension ViewController {
    func svgDecode(svg: String, myImage: UIImageView){
        let stringToURL = URL(string: svg)
        let urlToData = try? Data(contentsOf: stringToURL!)
        let recievedImage: SVGKImage = SVGKImage(data: urlToData)
        myImage.image = recievedImage.uiImage
    }
    @objc func timerAction(){
        NetworkCall.shared.getRequest(url: myUrl.cryptoApi.rawValue) { btc, error in
            guard let btc = btc else {return}
            self.svgDecode(svg: btc.logo_url, myImage: self.logo)
            self.price.text = "\(btc.price)"
            print(btc.price)
        }
    }
}
