//
//  DatabaseService.swift
//  FoodDelivery
//
//  Created by Nikita Nemtsu on 11.06.2023.
//

import Foundation
import FirebaseFirestore

class DatabaseService {
    
    static let shared = DatabaseService()
    
    private let database = Firestore.firestore()
    
    private var usersRefence: CollectionReference {
        return database.collection("users")
    }
    
    private init() { }
    
    func setUser(user: UserModel, completion: @escaping(Result<UserModel , Error>) -> Void) {
        
        usersRefence.document(user.id).setData(user.representation) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(user))
            }
        }
    }
}
