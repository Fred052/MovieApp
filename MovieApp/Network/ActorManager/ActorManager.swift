//
//  ActorManager.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 18.09.26.
//

import Foundation

class ActorManager {
    let manager = CoreManager()
    func getPopularActors(completion: @escaping (Actor?, String?) -> Void) {
        manager.request(model: Actor.self,
                        endpoint: ActorEndpoint.popularActor.rawValue,
                        completion: completion)
    }
}
