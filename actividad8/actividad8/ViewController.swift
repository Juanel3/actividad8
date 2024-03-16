//
//  ViewController.swift
//  actividad8
//
//  Created by Juan Miguel Flores on 15/03/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nombre: UITextField!
    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Olvidé mi contraseña"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Olvidé mi nombre de usuario"
        } else {
            segue.destination.navigationItem.title = nombre.text
        }
    }

    @IBAction func forgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword" , sender: forgotUsername)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPassword)
    }
    
    
}

