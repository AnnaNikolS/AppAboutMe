//
//  User.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func userInfo() -> User {
        User(userName: "User", password: "11", person: Person.getInfoAboutUser())
    }
}

struct Person {
    let name: String
    let surname: String
    let post: String
    let bio: String
    
    static func getInfoAboutUser() -> Person {
        Person(
            name: "Anna",
            surname: "Sosnitskaya",
            post: "Teacher",
            bio: "sdfghjkdfghjdfghjsdfghjksdfghjsdfghjsdfghjksdfgh"
        )
    }
}
