//
//  HttpStatus.swift
//  HttpStatusPackage
//
//  Constants enumerating the HTTP status codes.
//  All status codes defined in RFC1945 (HTTP/1.0, RFC2616 (HTTP/1.1),
//  RFC2518 (WebDAV), RFC6585 (Additional HTTP Status Codes), and
//  RFC7538 (Permanent Redirect) are supported.
//
//  Based on the org.apache.commons.httpclient.HttpStatus Java API.
//
//  Created/Ported by fl3xman (mike.grman@gmail.com) on 29/01/2018.
//

public enum Status {
    
    case http(code: Http)
    case custom(value: Int)
    
    public init(rawValue: Int) {
        let code = Http(rawValue: rawValue)
        self = (code != Http.unknown ? .http(code: code) : .custom(value: rawValue))
    }
    
    public init(code: Http) {
        self = .http(code: code)
    }
    
    public enum Http: Int {
        
        case accepted                       = 202
        case badGateway                     = 502
        case badRequest                     = 400
        case conflict                       = 409
        case continued                      = 100
        case created                        = 201
        case expectationFailed              = 417
        case failedDependency               = 424
        case forbidden                      = 403
        case gatewayTimeout                 = 504
        case gone                           = 410
        case httpVersionNotSupported        = 505
        case iamTeapot                      = 418
        case insufficientSpaceOnResource    = 419
        case insufficientStorage            = 507
        case internalServerError            = 500
        case lengthRequired                 = 411
        case locked                         = 423
        case methodFailure                  = 420
        case methodNotAllowed               = 405
        case movedPermanently               = 301
        case movedTemporarily               = 302
        case multiStatus                    = 207
        case multipleChoices                = 300
        case networkAuthenticationRequired  = 511
        case noContent                      = 204
        case nonAuthoritativeInformation    = 203
        case notAcceptable                  = 406
        case notFound                       = 404
        case notImplemented                 = 501
        case notModified                    = 304
        case ok                             = 200
        case partialContent                 = 206
        case paymentRequired                = 402
        case permanentRedirect              = 308
        case preconditionFailed             = 412
        case preconditionRequired           = 428
        case processing                     = 102
        case proxyAuthenticationRequired    = 407
        case requestHeaderFieldsTooLarge    = 431
        case requestTimeout                 = 408
        case requestEntityTooLarge          = 413
        case requestURITooLong              = 414
        case requestedRangeNotSatisfiable   = 416
        case resetContent                   = 205
        case seeOther                       = 303
        case serviceUnavailable             = 503
        case switchingProtocols             = 101
        case temporaryRedirect              = 307
        case tooManyRequests                = 429
        case unauthorized                   = 401
        case unprocessableEntity            = 422
        case unsupportedMediaType           = 415
        case useProxy                       = 305
        case unknown                        = -1
        
        public init(rawValue: Int) {
            self = Http.all.first(where: { $0.rawValue == rawValue }) ?? .unknown
        }
        
        public static func has(valid value: Int) -> Bool {
            return Http.all.contains(Http(rawValue: value))
        }
        
        public static let all: [Http] = [
            .accepted, .badGateway, .badRequest, .conflict, .continued, .created,
            .expectationFailed, .failedDependency, .forbidden, .gatewayTimeout,
            .gone, .httpVersionNotSupported, .iamTeapot, .insufficientSpaceOnResource,
            .insufficientStorage, .internalServerError, .lengthRequired, .locked,
            .methodFailure, .methodNotAllowed, .movedPermanently, .movedTemporarily,
            .multiStatus, .multipleChoices, .networkAuthenticationRequired, .noContent,
            .nonAuthoritativeInformation, .notAcceptable, .notFound, .notImplemented,
            .notModified, .ok, .partialContent, .paymentRequired, .permanentRedirect,
            .preconditionFailed, .preconditionRequired, .processing, .proxyAuthenticationRequired,
            .requestHeaderFieldsTooLarge, .requestTimeout, .requestEntityTooLarge,
            .requestURITooLong, .requestedRangeNotSatisfiable, .resetContent, .seeOther,
            .serviceUnavailable, .switchingProtocols, .temporaryRedirect, .tooManyRequests,
            .unauthorized, .unprocessableEntity, .unsupportedMediaType, .useProxy
        ]
    }
}

extension Status: Equatable {
    public static func == (lhs: Status, rhs: Status) -> Bool {
        switch (lhs, rhs) {
        case (.custom(let a), .custom(let b)): return a == b
        case (.http(let a), .http(let b)): return a == b
        default:
            return false
        }
    }
    
    public static func ==(lhs: Status.Http, rhs: Status) -> Bool {
        return Status(code: lhs) == rhs
    }
    
    public static func ==(lhs: Status, rhs: Status.Http) -> Bool {
        return Status(code: rhs) == lhs
    }
}



