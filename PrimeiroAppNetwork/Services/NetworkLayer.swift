//
//  NetworkLayer.swift
//  PrimeiroAppNetwork
//
//  Created by Felipe Angeli on 30/01/24.
//

import Foundation

protocol NetworkLayer {
    func request<T>(with endpoint: EndPoint, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable
    

}
