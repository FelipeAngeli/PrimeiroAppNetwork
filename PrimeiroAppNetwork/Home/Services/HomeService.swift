//
//  HomeServices.swift
//  PrimeiroAppNetwork
//
//  Created by Felipe Angeli on 25/01/24.
//

import UIKit

class HomeService: NSObject {

    func getPersonList(completion: @escaping (Result<[Person], NetworkError>) -> Void){
        let urlString: String =  "06e0a58e-acac-41d4-8a5a-6e6be756364c"
        
        let endpoint = EndPoint(url: urlString)
        ServiceManager.shared.request2(with: endpoint, decodeType: PersonList.self, completion: { result in
           switch result {
               case .success(let success):
               completion(.success(success.person))
               case .failure(let failure):
               completion(.failure(failure))
           }
        }
                                      
        )
    }
    
}

