//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 11.09.26.
//
import Foundation

final class HomeViewModel {
    var items: [HomeModel] = []
    let manager = MovieManager()
    
    var success: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getMovies() {
        getpopularMoviesList()
        getNowPlayingMovieList()
        getTopRatedMovieList()
        getUpcomingMovieList()
    }
    
    func getpopularMoviesList() {
        manager.getPopularMovies { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Popular", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    func getNowPlayingMovieList() {
        manager.getNowPlayingMovies { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Now Playing", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    func getTopRatedMovieList () {
        manager.getTopRatedMovies{ data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Top Rated", movies: data.results ?? []))
                self.success?()
            }
        }
    }
    
    func getUpcomingMovieList() {
        manager.getUpcomingMovies { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Upcoming", movies: data.results ?? []))
                self.success?()
            }
        }
    }
}
