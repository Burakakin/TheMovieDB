

import Alamofire

typealias DecodableResultWithBaseHandler<T: Codable> = (Result<Base<T>, Error>) -> Void
typealias DecodableResultWithoutBaseHandler<T: Codable> = (Result<T, Error>) -> Void

protocol EndpointExecutable {
    
    func executeDecodable<T: Decodable>(withBase: @escaping DecodableResultWithBaseHandler<T>)
    func executeDecodable<T: Decodable>(withoutBase: @escaping DecodableResultWithoutBaseHandler<T>)
}

extension EndpointExecutable where Self: URLRequestConvertible & EndPointProtocol{
    
    func executeDecodable<T: Decodable>(withBase completion: @escaping DecodableResultWithBaseHandler<T>) {
        _ = SessionManager.sm.request(self).validate().mResponseDecodable(completionHandler: completion)
    }
    
    func executeDecodable<T: Decodable>(withoutBase completion: @escaping DecodableResultWithoutBaseHandler<T>) {
        _ = SessionManager.sm.request(self).validate().mResponseDecodable(completionHandler: completion)
    }
    
}

