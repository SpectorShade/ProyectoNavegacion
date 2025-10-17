//
//  controlador_app.swift
//  control_navegacion
//
//  Created by alumno on 03/10/25.
//

import SwiftUI
import Foundation

@Observable
@MainActor
class ControladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"
    
    var publicaciones: [Publicacion] = []
    var comentarios: [Comentario] = []
    var publicacion_actual: Publicacion? = nil

     init(){
        Task{
            await descargar_publicaciones()
        }
    }
    
    func descargar_publicaciones() async {
        guard let publicaciones_descargadas: [Publicacion] = await ServicioWeb().descargar_datos(url: "\(url_base)/posts")
        else { return }
        publicaciones = publicaciones_descargadas
        
        do{
            try await Task.sleep(for: .seconds(30))
        }
        catch{
            
        }
    }
    private func _descargar_comentarios(id_publicacion: Int) async {
        guard let comentarios_descargados: [Comentario] = await ServicioWeb().descargar_datos(url: "\(url_base)/posts\(id_publicacion)/comments")
        else { return }
        comentarios = comentarios_descargados
    }
    
    func descargar_comentarios(_ id_publicacion: Int){
        Task{
            await _descargar_comentarios(id_publicacion: id_publicacion)
        }
    }
    
    func publicacion_seleccionada(_ id: Int){
//        print("La publicacion es: ")
        for publicacion in publicaciones{
            if publicacion.id == id{
                publicacion_actual = publicacion
                break
            }
        }
        
        descargar_comentarios(publicacion_actual?.id ?? 0)
    }
}
