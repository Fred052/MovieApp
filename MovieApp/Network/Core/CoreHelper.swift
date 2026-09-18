//
//  CoreHelper.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//

import Foundation
import Alamofire

enum EncodingType {
    case url, json
}

class CoreHelper {
    static let shared = CoreHelper()
    
    private init() {}
    
    private let version = "3"
    
    private let baseURL = "https://api.themoviedb.org/"
    
    private let imageSize = "w500"
    private let imageBaseURL = "https://image.tmdb.org/t/p/"
    
    let header: HTTPHeaders = [
        "accept": "application/json",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjA0N2ZmMWVhMTFkYTI2MTc2YjA1YWIzYTUzNDY1ZiIsIm5iZiI6MTc4ODg4NTQ2OS4xNDMwMDAxLCJzdWIiOiI2YWEwMzlkZGVkNDdlM2VkZDBjYTUzMDYiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.u_Q0wuCg2rgAHr1oFkyzip_fW_YqZdNXGoHkbmiDCSQ"
    ]
    
    func configureURL(endpoint: String) -> String {
        baseURL + version + "/" + endpoint
    }
    
    func configureImageURL(path: String) -> String {
        imageBaseURL + imageSize + path
    }
}
