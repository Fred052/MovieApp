//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 11.09.26.
//
import Foundation

final class HomeViewModel {
    var items: [HomeModel] = []
    private let manager = CoreManager()
    
    var success: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getMovies() {
        getPopularMovies()
        getNowPlayingMovie()
        getTopRatedMovie()
        getUpcomingMovie()
    }
    
    private func getPopularMovies() {
        manager.request(model: Movie.self, endpoint: Endpoint.populatMovie.rawValue) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
//                print(data)
                self.items.append(.init(title: "Popular", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    private func getNowPlayingMovie() {
        manager.request(model: Movie.self, endpoint: Endpoint.nowPlayingMovie.rawValue) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
//                print(data)
                self.items.append(.init(title: "NowPlaying", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    private func getTopRatedMovie () {
        manager.request(model: Movie.self, endpoint: Endpoint.topRatedMovie.rawValue) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
//                print(data)
                self.items.append(.init(title: "Upcoming", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    private func getUpcomingMovie() {
        manager.request(model: Movie.self, endpoint: Endpoint.upcomingMovie.rawValue) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
//                print(data)
                self.items.append(.init(title: "Top Rated", movies: data.results ?? []))
                self.success?()
            }
        }
    }
}
