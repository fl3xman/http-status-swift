//
//  HttpStatus+Description.swift
//  HttpStatusPackage
//
//  Created by fl3xman (mike.grman@gmail.com) on 29/01/2018.
//

extension Status: CustomStringConvertible {
    public var description: String {
        switch self {
        case .http(let value):      return value.description
        case .custom(let value):    return "\(value)"
        }
    }
}

extension Status.Http: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accepted:                      return "Accepted"
        case .badGateway:                    return "Bad gateway"
        case .badRequest:                    return "Bad request"
        case .conflict:                      return "Conflict"
        case .continued:                     return "Continue"
        case .created:                       return "Created"
        case .expectationFailed:             return "Expectation failed"
        case .failedDependency:              return "Failed dependency"
        case .forbidden:                     return "Forbidden"
        case .gatewayTimeout:                return "Gateway timeout"
        case .gone:                          return "Gone"
        case .httpVersionNotSupported:       return "HTTP version not supported"
        case .iamTeapot:                     return "I am teapot"
        case .insufficientSpaceOnResource:   return "Insufficient space on resource"
        case .insufficientStorage:           return "Insufficient storage"
        case .internalServerError:           return "Internal server error"
        case .lengthRequired:                return "Length required"
        case .locked:                        return "Locked"
        case .methodFailure:                 return "Method failure"
        case .methodNotAllowed:              return "Method not allowed"
        case .movedPermanently:              return "Moved permanently"
        case .movedTemporarily:              return "Moved temporarily"
        case .multiStatus:                   return "Multi-Status"
        case .multipleChoices:               return "Multiple choices"
        case .networkAuthenticationRequired: return "Network authentication required"
        case .noContent:                     return "No content"
        case .nonAuthoritativeInformation:   return "Non authoritative information"
        case .notAcceptable:                 return "Not acceptable"
        case .notFound:                      return "Not found"
        case .notImplemented:                return "Not implemented"
        case .notModified:                   return "Not modified"
        case .ok:                            return "Ok"
        case .partialContent:                return "Partial content"
        case .paymentRequired:               return "Payment required"
        case .permanentRedirect:             return "Permanent redirect"
        case .preconditionFailed:            return "Precondition failed"
        case .preconditionRequired:          return "Precondition required"
        case .processing:                    return "Processing"
        case .proxyAuthenticationRequired:   return "Proxy authentication required"
        case .requestHeaderFieldsTooLarge:   return "Request header fields too large"
        case .requestTimeout:                return "Request timeout"
        case .requestEntityTooLarge:         return "Request entity too large"
        case .requestURITooLong:             return "Request URI too long"
        case .requestedRangeNotSatisfiable:  return "Requested range not satisfiable"
        case .resetContent:                  return "Reset content"
        case .seeOther:                      return "See other"
        case .serviceUnavailable:            return "Service unavailable"
        case .switchingProtocols:            return "Switching protocols"
        case .temporaryRedirect:             return "Temporary redirect"
        case .tooManyRequests:               return "Too many requests"
        case .unauthorized:                  return "Unauthorized"
        case .unprocessableEntity:           return "Unprocessable entity"
        case .unsupportedMediaType:          return "Unsupported media type"
        case .useProxy:                      return "Use proxy"
        default:                             return "Unknown"
        }
    }
}
