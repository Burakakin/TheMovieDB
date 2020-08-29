

import Alamofire

extension URLRequestConvertible where Self: EndPointProtocol{
    func asURLRequest() throws -> URLRequest {
        guard let url = try? baseUrl.asURL() else {fatalError("Malformed URL")}
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpShouldHandleCookies = false
        
        //use default URLEncoding and http get method to encode with query params
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        urlRequest = try URLEncoding.default.encode(urlRequest, with: queryParams)
        
        urlRequest.httpMethod = method.rawValue
        urlRequest = try encoding.encode(urlRequest, with: params)
        return urlRequest
    }
}
