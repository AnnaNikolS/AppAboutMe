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
        User(
            userName: "User",
            password: "11",
            person: Person.getInfoAboutUser()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let post: String
    let bio: String
    let photo: String
    
    static func getInfoAboutUser() -> Person {
        Person(
            name: "Anna",
            surname: "Sosnitskaya",
            post: "Teacher",
            bio: "Родилась в Краснодаре, закончила художественную школу, также увлекалась гимнастикой и танцами, закончила 11 классов и переехала в Москву учиться на программиста в РАНХиГС, но оказалось, что продолжить изучать swift оказалась куда интереснее, чем универовский С#, поэтому по сей день любимым занятием остается ios разработка. Планирует выпустить свое приложение, связанное с матрицей Эйзенхауэра, которое будет напоминать своеобразный отсортированный планер задач.", 
            photo: "IMG_2440"
        )
    }
}
