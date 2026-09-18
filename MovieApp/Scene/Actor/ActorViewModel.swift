//
//  ActorViewModel.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//
import Foundation

final class ActorViewModel {
    let manager = ActorManager()
    var items = [ActorResult]()
    
    var success: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getActorList() {
        manager.getPopularActors { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items = data.results ?? []
                self.success?()
            }
        }
    }
}
