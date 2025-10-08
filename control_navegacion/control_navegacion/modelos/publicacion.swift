//
//  publicacion.swift
//  control_navegacion
//
//  Created by alumno on 08/10/25.
//
import Foundation

struct Publicacion: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
