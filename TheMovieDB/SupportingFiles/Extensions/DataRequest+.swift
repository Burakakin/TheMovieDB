

import Foundation
import Alamofire


extension DataRequest{
    
    
    func mBaseResponseDecodable<T: Decodable>(of type: Base<T>.Type = Base<T>.self,
                                             queue: DispatchQueue = .main,
                                             decoder: DataDecoder = JSONDecoder(),
                                             completionHandler: @escaping (Result<T, Error>) -> Void) -> Self {
                
        responseDecodable(of: Base<T>.self, queue: queue, decoder: decoder) { (response) in
            print("[RESPONSE]: " + response.debugDescription)
            switch response.result{
            case .success(let model):
                if let response = model.results {
                    completionHandler(.success(response))
                }
                else {
                    completionHandler(.failure(model.dates as! Error))
                }
                
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
    func mResponseDecodable<T: Decodable>(of type: T.Type = T.self,
                                             queue: DispatchQueue = .main,
                                             decoder: DataDecoder = JSONDecoder(),
                                             completionHandler: @escaping (Result<T, Error>) -> Void) -> Self {
                
        responseDecodable(of: T.self, queue: queue, decoder: decoder) { (response) in
            print("[RESPONSE]: " + response.debugDescription)
            switch response.result{
            case .success(let model):
                completionHandler(.success(model))
            case .failure(let error):
                completionHandler(.failure(error))
            }
        }
    }
    
}
