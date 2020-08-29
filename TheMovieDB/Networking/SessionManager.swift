

import Alamofire

class SessionManager {
    static let sm = Session(interceptor: MyRequestAdapter())
}

class MyRequestAdapter: RequestInterceptor {
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        var urlRequest = urlRequest
        let key = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiODMzNzcxN2U4ZmQyN2FhZTM1ZjMxZGMwYTlhMGY5NCIsInN1YiI6IjVmNDk1Mjk2ZjY1OTZmMDAzNmIzMjM0YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XR1zvu2to8VkbFHm2i6Ph_gYGJQ1iAGOkqHQRmb32WI"
        urlRequest.headers.add(name: "Authorization", value: key)
        completion(.success(urlRequest))
    }
}
