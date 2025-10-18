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
    var usuario_actual: Usuario? = nil

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

    private func _descargar_usuario(id_usuario: Int) async {
        guard let usuario_descargado: Usuario = await ServicioWeb().descargar_datos(url: "\(url_base)/users/\(id_usuario)")
        else { return }
        usuario_actual = usuario_descargado
    }
    
    func descargar_usuario(_ id_usuario: Int){
        Task{
            await _descargar_usuario(id_usuario: id_usuario)
        }
    }
    
    func publicacion_seleccionada(_ id: Int){
        for publicacion in publicaciones{
            if publicacion.id == id{
                publicacion_actual = publicacion
                break
            }
        }
        
        if let publicacion_actual = publicacion_actual {
            descargar_comentarios(publicacion_actual.id)
            descargar_usuario(publicacion_actual.userId)
        }
    }
}
