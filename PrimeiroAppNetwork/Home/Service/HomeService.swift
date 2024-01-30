//
//  HomeService.swift
//  PrimeiroAppNetworkCurso
//
//  Created by Caio Fabrini on 16/07/23.
//

import UIKit

class HomeService {
    func getPersonList(completion: @escaping (Result<[Person],NetworkError>) -> Void) {
        let urlString: String = "cf70fee3-bed6-4415-b8d3-11bf1f90c74a"
        let endpoint = Endpoint(url: urlString)
        ServiceManager.shared.request(with: endpoint, decodeType: PersonList.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.person))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
}
