//
//  ViewController.swift
//  Rebeca
//
//  Created by Samuel Landaverde on 28/08/17.
//  Copyright © 2017 Samuel Landaverde. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let premium = 69.0
    let selecto = 63.0
    let clasico = 54.0
    let chimichanga = 69.0
    let bebida = 15.0
    let tostito = 15.0
    let brow = 15.0
    let extra = 7.0
    let paqOne = 99.0
    let paqTwo = 92.0
    let paqThree = 83.0
    let paqfour = 154.0
    let burritoDia = 50.0
    
    var operPrem: Double = 0
    var operSelec: Double = 0
    var operClas: Double = 0
    var operChimi: Double = 0
    var operBeb: Double = 0
    var operTost: Double = 0
    var operExtra: Double = 0
    var operPaqUno: Double = 0
    var operPaqDos: Double = 0
    var operPaqTres: Double = 0
    var operPaqCuatro: Double = 0
    var operBurrDia: Double = 0
    var otro: Double = 0
    
    @IBOutlet weak var PremCant: UITextField!
    @IBOutlet weak var premTotal: UILabel!
    @IBOutlet weak var selecCant: UITextField!
    @IBOutlet weak var selecTotal: UILabel!
    @IBOutlet weak var clasCant: UITextField!
    @IBOutlet weak var clasTotal: UILabel!
    @IBOutlet weak var chimiCant: UITextField!
    @IBOutlet weak var chimiTotal: UILabel!
    @IBOutlet weak var bebCant: UITextField!
    @IBOutlet weak var bebTotal: UILabel!
    @IBOutlet weak var tostBrowCant: UITextField!
    @IBOutlet weak var tostBrowTotal: UILabel!
    @IBOutlet weak var extraCant: UITextField!
    @IBOutlet weak var extraTotal: UILabel!
    @IBOutlet weak var paqOneCant: UITextField!
    @IBOutlet weak var paqOneTotal: UILabel!
    @IBOutlet weak var paqTwoCant: UITextField!
    @IBOutlet weak var paqTwoTotal: UILabel!
    @IBOutlet weak var paqThreeCant: UITextField!
    @IBOutlet weak var paqThreeTotal: UILabel!
    @IBOutlet weak var paqFourCant: UITextField!
    @IBOutlet weak var paqFourTotal: UILabel!
    @IBOutlet weak var burrDiaCant: UITextField!
    @IBOutlet weak var burrDiaTotal: UILabel!
    
    @IBOutlet weak var otroAdicional: UITextField!
    @IBOutlet weak var total: UILabel!
    
//    @IBOutlet weak var totalDia: UILabel!
//    var premCan = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    @IBAction func premSum(_ sender: Any) {
        let cant = Double(PremCant.text!)
        if cant != nil {
            self.operPrem = cant! * premium
            premTotal.text = "$ \(self.operPrem)"
      
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Premium", into: context) as? Premium
            
            cantidad?.premium = "\(PremCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }

        }
        


    }
    
    @IBAction func selecSum(_ sender: Any) {
        let cant = Double(selecCant.text!)
        if cant != nil {
            self.operSelec = cant! * selecto
            selecTotal.text = "$ \(self.operSelec)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Selecto", into: context) as? Selecto
            
            cantidad?.selecto = "\(selecCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func clasSum(_ sender: Any) {
        let cant = Double(clasCant.text!)
        if cant != nil {
            self.operClas = cant! * clasico
            clasTotal.text = "$ \(self.operClas)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Clasico", into: context) as? Clasico
            
            cantidad?.clasico = "\(clasCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func chimiSum(_ sender: Any) {
        let cant = Double(chimiCant.text!)
        if cant != nil {
            self.operChimi = cant! * chimichanga
            chimiTotal.text = "$ \(self.operChimi)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Chimichanga", into: context) as? Chimichanga
            
            cantidad?.chimichanga = "\(chimiCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func bebSum(_ sender: Any) {
        let cant = Double(bebCant.text!)
        if cant != nil {
            self.operBeb = cant! * bebida
            bebTotal.text = "$ \(self.operBeb)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Bebida", into: context) as? Bebida
            
            cantidad?.bebida = "\(bebCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func tostBrowSum(_ sender: Any) {
        let cant = Double(tostBrowCant.text!)
        if cant != nil {
            self.operTost = cant! * tostito
            tostBrowTotal.text = "$ \(self.operTost)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Tostada", into: context) as? Tostada
            
            cantidad?.tostada = "\(tostBrowCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Error")
            }
            
        }
    }
 
    @IBAction func extraSum(_ sender: Any) {
        let cant = Double(extraCant.text!)
        if cant != nil {
            self.operExtra = cant! * extra
            extraTotal.text = "$ \(self.operExtra)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Extra", into: context) as? Extra
            
            cantidad?.extra = "\(extraCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Error")
            }
            
        }
    }
    
    @IBAction func paqOneSum(_ sender: Any) {
        let cant = Double(paqOneCant.text!)
        if cant != nil {
            self.operPaqUno = cant! * paqOne
            paqOneTotal.text = "$ \(self.operPaqUno)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "PaqueteUno", into: context) as? PaqueteUno
            
            cantidad?.paqueteUno = "\(paqOneCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func paqTwoSum(_ sender: Any) {
        let cant = Double(paqTwoCant.text!)
        if cant != nil {
            self.operPaqDos = cant! * paqTwo
            paqTwoTotal.text = "$ \(self.operPaqDos)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "PaqueteDos", into: context) as? PaqueteDos
            
            cantidad?.paqueteDos = "\(paqTwoCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func paqThreeSum(_ sender: Any) {
        let cant = Double(paqThreeCant.text!)
        if cant != nil {
            self.operPaqTres = cant! * paqThree
            paqThreeTotal.text = "$ \(self.operPaqTres)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "PaqueteTres", into: context) as? PaqueteTres
            
            cantidad?.paqueteTres = "\(paqThreeCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func paqFourSum(_ sender: Any) {
        let cant = Double(paqFourCant.text!)
        if cant != nil {
            self.operPaqCuatro = cant! * paqfour
            paqFourTotal.text = "$ \(self.operPaqCuatro)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "PaqueteCuatro", into: context) as? PaqueteCuatro
            
            cantidad?.paqueteCuatro = "\(paqFourCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func burrDiaSum(_ sender: Any) {
        let cant = Double(burrDiaCant.text!)
        if cant != nil {
            self.operBurrDia = cant! * burritoDia
            burrDiaTotal.text = "\(self.operBurrDia)"
        } else {
            let alertController = UIAlertController(title: "¡Ingresa los datos 🐰!", message: "", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "BurritoDia", into: context) as? BurritoDia
            
            cantidad?.burritoDia = "\(burrDiaCant.text!)"
            
            do {
                try context.save()
            } catch {
                print("Grave error XD")
            }
            
        }
    }
    
    @IBAction func sumTotal(_ sender: Any) {
        
        let otroAd = Double(otroAdicional.text!)
        
        if otroAd != nil {
            self.otro = otroAd!
        }
        
        let sum = operPrem + operSelec + operClas + operChimi + operBeb + operTost + operExtra + operPaqUno + operPaqDos + operPaqTres + operPaqCuatro + operBurrDia + otro
        

        
        total.text = "\(sum)"
        
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            var cantidad = NSEntityDescription.insertNewObject(forEntityName: "Total", into: context) as? Total
            
            cantidad?.totalDia = "\(total.text!)"
            
            do {
                try context.save()
                print("S guardo con exito")
            } catch {
                print("Grave error XD")
            }
        
        
        
    }
    
//    @IBAction func totalDia(_ sender: Any) {
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            
//            let request : NSFetchRequest<Total> = NSFetchRequest(entityName: "Total")
//            
//            do {
//                let datos = try context.fetch(request)
//                if datos.count > 0 {
//                    var sum = 0.0
//                    for result in datos {
//                        let entero = Double(result.total!)
//                        sum = sum + entero!
//                        totalDia.text = String(sum)
//                        print("Suma: \(sum)")
//                        print(result.value(forKey: "total")!)
//                    }
//                } else {
//                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
//                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
//                    alertController.addAction(okAction)
//                    present(alertController, animated: true, completion: nil)
//                    print("No hay resultados XD")
//                }
//            } catch {
//                print("Error \(error)")
//            }
//        }
//    }
//    
//    @IBAction func borrarTotalDia(_ sender: Any) {
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            
//            let request : NSFetchRequest<Total> = NSFetchRequest(entityName: "Total")
//            
//            do {
//                let datos = try context.fetch(request)
//                if datos.count > 0 {
//                    for result in datos {
//                        context.delete(result)
//                    }
//                    _ = try? context.save()
//                    
//                } else {
//                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
//                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
//                    alertController.addAction(okAction)
//                    present(alertController, animated: true, completion: nil)
//                    print("No hay resultados XD")
//                }
//            } catch {
//                print("Error \(error)")
//            }
//        }
//    }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view?.endEditing(true)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

