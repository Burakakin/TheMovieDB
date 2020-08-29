

import Foundation
import Alamofire

typealias RequestConvertible = URLRequestConvertible & EndPointProtocol & EndpointExecutable

protocol EndPointProtocol {
    var baseUrl: String { get }
    var path: String { get }
    var method: HTTPMethod{ get }
    var encoding: ParameterEncoding{ get }
    var params: Parameters?{ get }
    var queryParams: Parameters?{ get }
}

extension EndPointProtocol{
    var baseUrl: String {
        return "https://api.themoviedb.org/3"
    }
}
