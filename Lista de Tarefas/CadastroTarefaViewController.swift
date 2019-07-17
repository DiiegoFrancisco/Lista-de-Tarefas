//
//  CadastroTarefaViewController.swift
//  Lista de Tarefas
//
//  Created by DevMakerMobile on 17/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var txText: UITextField!
    @IBAction func btAdd(_ sender: Any) {
        
        
        if let text = txText.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: text)
            txText.text = ""
        
            
            let dados = tarefa.listar()
            
            print(dados)
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
