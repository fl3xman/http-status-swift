//
//  NetworkError+Description.swift
//  HttpStatus
//
//  Created by fl3xman (mike.grman@gmail.com) on 29/01/2018.
//

extension NetworkError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .status(let value):     return value.description
        case .underlying(let error): return "\(error)"
        default:
            return "Unknown"
        }
    }
}

extension NetworkError: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "StatusError: \(description)"
    }
}
