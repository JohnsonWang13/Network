import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func request(with apiRequest: APIRequest, completion: @escaping (HTTPClientResult) -> Void)
}
