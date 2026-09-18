//
//  M.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 18.09.26.
//

import Foundation

class MovieManager {
    let manager = CoreManager()
    
    func getPopularMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.populatMovie.rawValue,
                        completion: completion)
    }
    
    func getNowPlayingMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.nowPlayingMovie.rawValue,
                        completion: completion)
    }

    
    func getTopRatedMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.topRatedMovie.rawValue,
                        completion: completion)
    }

    
    func getUpcomingMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.upcomingMovie.rawValue,
                        completion: completion)
    }

}
