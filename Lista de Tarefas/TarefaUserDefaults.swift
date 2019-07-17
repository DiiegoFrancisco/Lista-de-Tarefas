//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by DevMakerMobile on 17/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class TarefaUserDefaults{
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func remove (indece: Int){
        
        tarefas = listar()
        
        tarefas.remove(at: indece)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func salvar (tarefa: String){
        
      //Recuperar tarefas ja salvas
        tarefas = listar()
        
        
        // Salvar Tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
        
        
    }
    
    func listar () -> Array<String>{
        
          
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
        }
        
    }
    
}
