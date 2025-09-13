//
//  Aplicativo.swift
//  aula17pt2
//
//  Created by Ana Luísa on 13/09/25.
//

import Foundation

struct App:Decodable{
    var feed:Feed
}
struct Feed:Decodable{
    var entry:Entry
}
struct Entry:Decodable{
    var title:Title
    var image:[Info]
    enum CodingKeys:String,CodingKey{
        case image = "im:image"
        case title
    }
}
struct Title:Decodable{
    var label:String
}
//enum CodingKeys porque na Apple o campo
//de image se chama im:name e não podemos
//usar ":" aqui que representa o tip de dado

struct Info:Decodable{
    var label:String
}
