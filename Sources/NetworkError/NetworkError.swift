//
//  NetworkError.swift
//  HttpStatus
//
//  Created by fl3xman (mike.grman@gmail.com) on 29/01/2018.
//


public enum NetworkError: Error {

    case unknown
    case status(value: Status)
    case underlying(error: Error)
}
