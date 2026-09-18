//
//  Movie.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//

import Foundation

// MARK: - Movie
struct Movie: Codable {
    let page: Int?
    let results: [MovieResult]?
    let totalPages: Int?
    let totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page , results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct MovieResult: Codable, TopImageButtonLabelProtocol {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let title: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    let posterPath: String?
    let releaseDate: String?
    let softcore: Bool?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    var imagePath: String {
        posterPath ?? ""
    }
    
    var labeltext: String {
        originalTitle ?? ""
    }

    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id = "id"
        case title = "title"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case softcore = "softcore"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
