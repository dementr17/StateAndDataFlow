////
////  StorageManager.swift
////  StateAndDataFlow
////
////  Created by Дмитрий Чепанов on 22.02.2022.
////
//
//import Foundation
//import Combine
//
//class StorageManager {
////    static let shared = StorageManager()
//    
//    private let userDefaults = UserDefaults.standard
//    private let userKey = "users"
//    
//    private init() {}
//    
//    func save(user: String) {
//        var users = fetchUsers()
//        users.append(user)
//        guard let data = try? JSONEncoder().encode(users) else { return }
//        userDefaults.set(data, forKey: userKey)
//    }
//    
//    func fetchUsers() -> [String] {
//        guard let data = userDefaults.object(forKey: userKey) as? Data else { return [] }
//        guard let users = try? JSONDecoder().decode([String].self, from: data) else { return [] }
//        
//        return users
//    }
//    
//    func deleteUser(at index: Int) {
//        var users = fetchUsers()
//        users.remove(at: index)
//        
//        guard let data = try? JSONEncoder().encode(users) else { return }
//        userDefaults.set(data, forKey: userKey)
//    }
//}
