//
//  ProductResgisterViewController.swift
//  BrunoRaphaelHigashi
//
//  Created by Bruno  Juliano Fernandes Martini on 18/04/17.
//  Copyright © 2017 Bruno  Juliano Fernandes Martini. All rights reserved.
//

import UIKit

class ProductResgisterViewController: UIViewController {

    @IBOutlet weak var tfProdName: UITextField!
    @IBOutlet weak var ivProdPicture: UIImageView!
    @IBOutlet weak var tfStateProd: UITextField!
    @IBOutlet weak var tfProdPrice: UITextField!
    @IBOutlet weak var swProdCard: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addState(_ sender: UIButton) {
    }

    @IBAction func addProduct(_ sender: UIButton) {
    }
}