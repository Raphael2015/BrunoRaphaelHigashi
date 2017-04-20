//
//  ProductResgisterViewController.swift
//  BrunoRaphaelHigashi
//
//  Created by Bruno  Juliano Fernandes Martini on 18/04/17.
//  Copyright © 2017 Bruno  Juliano Fernandes Martini. All rights reserved.
//
import Foundation
import UIKit
import CoreData


class ProductResgisterViewController: UIViewController {
    
    

    @IBOutlet weak var tfProdName: UITextField!
    @IBOutlet weak var ivProdPicture: UIImageView!
    @IBOutlet weak var tfStateProd: UITextField!
    @IBOutlet weak var tfProdPrice: UITextField!
    @IBOutlet weak var swProdCard: UISwitch!
    @IBOutlet weak var btnAddUpdate: UIButton!
    
    
    var product: Product!
    var smallImage: UIImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if product != nil {
            tfProdName.text = product.name
            tfProdPrice.text = "\(product.usPrice)"
            if let image = product.picture as? UIImage {
                ivProdPicture.image = image
            }
            btnAddUpdate.setTitle("Atualizar" , for: .normal)
            
        }
        
        
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
    
    @IBAction func close(_ sender: UIButton?) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addState(_ sender: UIButton) {
    }

    @IBAction func addProduct(_ sender: UIButton) {
        
        if product == nil { product = Product(context: context)    }
        product.name = tfProdName.text!
        product.usPrice = Double(tfProdPrice.text!)!
        if smallImage != nil {
            product.picture = smallImage
        }
        do{
            try context.save()
        } catch {
                print(error.localizedDescription)
        }
        
        close(nil)
        
    }
    
    
    
}
