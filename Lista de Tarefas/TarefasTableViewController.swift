//
//  TarefasTableViewController.swift
//  Lista de Tarefas
//
//  Created by DevMakerMobile on 17/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
           let tarefa = TarefaUserDefaults()
            tarefa.remove(indece: indexPath.row)
            atualizar()
        
    }
}
        
        func atualizar(){
            let tarefa = TarefaUserDefaults()
            tarefas = tarefa.listar()
            tableView.reloadData()
        
 
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        atualizar()
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celula.textLabel?.text = tarefas[indexPath.row]


        return celula
    }

}
