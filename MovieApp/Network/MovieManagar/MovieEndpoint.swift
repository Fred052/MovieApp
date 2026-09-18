//
//  Endpoint.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//

import Foundation

enum MovieEndpoint: String {
    case populatMovie = "movie/popular"
    case nowPlayingMovie = "movie/now_playing"
    case topRatedMovie = "movie/top_rated"
    case upcomingMovie = "movie/upcoming"
}
