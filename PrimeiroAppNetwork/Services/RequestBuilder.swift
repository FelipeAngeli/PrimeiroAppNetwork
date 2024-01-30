//
//  RequestBuilder.swift
//  PrimeiroAppNetwork
//
//  Created by Felipe Angeli on 30/01/24.
//

import Foundation

protocol RequestBuilder {
    func buildRequest(with endpoint: EndPoint, url: URL) -> URLRequest
    
}
