//
//  URLRequestBuilder.swift
//  
//
//  Created by Giga Khizanishvili on 20.04.23.
//

import Common
import Foundation

// MARK: - HTTPMethod
public enum HTTPMethod: NameProvider {
    case post
    case put
    case get
    case delete
    case patch
}

/// To use the builder pattern, you should follow next steps:
///     - reset()
///     - setA()
///     - setB()
///     - ...
///     - build()
public class URLRequestBuilder: Builder {
    public typealias Structure = URLRequest

    private var request: URLRequest!

    public func reset() -> Self {
        // TODO: implement
        return self
    }

    public func setURL(_ url: URL) -> Self {
        request.url = url
        return  self
    }

    public func setCachePolicy(_ cachePolicy: URLRequest.CachePolicy) -> Self {
        request.cachePolicy = cachePolicy
        return self
    }

    public func setTimeoutInterval(_ timeoutInterval: TimeInterval) -> Self {
        request.timeoutInterval = timeoutInterval
        return self
    }

    public func setMainDocumentURL(_ mainDocumentURL: URL) -> Self {
        request.mainDocumentURL = mainDocumentURL
        return self
    }

    public func setNetworkServiceType(_ networkServiceType: URLRequest.NetworkServiceType) -> Self {
        request.networkServiceType = networkServiceType
        return self
    }

    public func setMethod(_ method: HTTPMethod) -> Self {
        request.httpMethod = method.name
        return self
    }

    public func setHeaders(_ headers: [String: CustomStringConvertible]) -> Self {
        request.allHTTPHeaderFields = Dictionary(
            uniqueKeysWithValues: headers.map { ($0, String(describing: $1)) }
        )
        return self
    }

    public func setBody(_ body: Encodable) -> Self {
        request.httpBody = try? JSONEncoder().encode(body)
        return self
    }

    // MARK: - Build
    public func build() -> URLRequest {
        defer { request = nil }
        return request
    }
}
