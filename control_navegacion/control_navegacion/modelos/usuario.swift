//
//  usuario.swift
//  control_navegacion
//
//  Created by alumno on 16/10/25.
//

import Foundation

struct Usuario: Identifiable, Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
}
