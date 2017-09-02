//
//  InventarioTableViewController.swift
//  Rebeca
//
//  Created by Samuel Landaverde on 31/08/17.
//  Copyright © 2017 Samuel Landaverde. All rights reserved.
//

import UIKit
import CoreData

class InventarioViewController: UIViewController {
    
    @IBOutlet weak var cantPrem: UILabel!
    @IBOutlet weak var cantSelec: UILabel!
    @IBOutlet weak var cantClas: UILabel!
    @IBOutlet weak var cantChimi: UILabel!
    @IBOutlet weak var cantBeb: UILabel!
    @IBOutlet weak var cantTost: UILabel!
    @IBOutlet weak var cantExtra: UILabel!
    @IBOutlet weak var cantPaqUno: UILabel!
    @IBOutlet weak var cantPaqDos: UILabel!
    @IBOutlet weak var cantPaqTres: UILabel!
    @IBOutlet weak var cantPaqCuatro: UILabel!
    @IBOutlet weak var cantBurrDia: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            
//            let request : NSFetchRequest<Cantidades> = NSFetchRequest(entityName: "Cantidades")
//            
//            do {
//                let datos = try context.fetch(request)
//                if datos.count > 0 {
//                    var sumPrem = 0.0
//                    var sumSelec = 0.0
//                    var sumClas = 0.0
//                    var sumChimi = 0.0
//                    var sumBeb = 0.0
//                    var sumTost = 0.0
//                    var sumExtra = 0.0
//                    var sumPaqU = 0.0
//                    var sumPaqD = 0.0
//                    var sumPaqT = 0.0
//                    var sumPaqC = 0.0
//                    var sumBurrD = 0.0
//
//                    for result in datos {
//                        let entPrem = Double(result.premium!)
//                        let entSelec = Double(result.selecto!)
//                        let entClas = Double(result.clasico!)
//                        let entChimi = Double(result.chimichanga!)
//                        let entBeb = Double(result.bebida!)
//                        let entTost = Double(result.tostada!)
//                        let entExtra = Double(result.extra!)
//                        let entPaqU = Double(result.paqueteUno!)
//                        let entPaqD = Double(result.paqueteDos!)
//                        let entPaqT = Double(result.paqueteTres!)
//                        let entPaqC = Double(result.paqueteCuatro!)
//                        let entBurrD = Double(result.burritoDia!)
//
//                        sumPrem = sumPrem + entPrem!
//                        sumSelec = sumSelec + entSelec!
//                        sumClas = sumClas + entClas!
//                        sumChimi = sumChimi + entChimi!
//                        sumBeb = sumBeb + entBeb!
//                        sumTost = sumTost + entTost!
//                        sumExtra = sumExtra + entExtra!
//                        sumPaqU = sumPaqU + entPaqU!
//                        sumPaqD = sumPaqD + entPaqD!
//                        sumPaqT = sumPaqT + entPaqT!
//                        sumPaqC = sumPaqC + entPaqC!
//                        
//                        cantPrem.text = result.value(forKey: "premium") as! String
//                        cantSelec.text = result.value(forKey: "selecto") as! String
//                        cantClas.text = result.value(forKey: "clasico") as! String as! String
//                        cantChimi.text = result.value(forKey: "chimichanga") as! String
//                        cantBeb.text = result.value(forKey: "bebida") as! String
//                        cantTost.text = result.value(forKey: "tostada") as! String
//                        cantExtra.text = result.value(forKey: "extra") as! String
//                        cantPaqUno.text = result.value(forKey: "paqueteUno") as! String
//                        cantPaqDos.text = result.value(forKey: "paqueteDos") as! String
//                        cantPaqTres.text = result.value(forKey: "paqueteTres") as! String
//                        cantPaqCuatro.text = result.value(forKey: "paqueteCuatro") as! String
//                        cantBurrDia.text = result.value(forKey: "burritoDia") as! String
//
//                        print("Suma: \(sumPrem)")
//                        print(result.value(forKey: "premium")!)
//                        
//                    }
//                } else {
//                    print("No hay resultados")
//                }
//            } catch {
//                print("Error: \(error)")
//            }
//        }
    }
    
//    @IBAction func borrarDatos(_ sender: Any) {
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            
//            let request : NSFetchRequest<Premium> = NSFetchRequest(entityName: "Premium")
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
//        
//
//    }
    
    
    @IBAction func datosPrem(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Premium> = NSFetchRequest(entityName: "Premium")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sumPrem = 0.0
                    for result in datos {
                        let entPrem = Double(result.premium!)
                        print("Entero \(entPrem)")
                        sumPrem = sumPrem + entPrem!
                        cantPrem.text = String(sumPrem)
                        print("Suma: \(sumPrem)")
                        print(result.value(forKey: "premium")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
    }
    @IBAction func datosSelec(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Selecto> = NSFetchRequest(entityName: "Selecto")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sumSelec = 0.0
                    for result in datos {
                        let entSelec = Double(result.selecto!)
                        sumSelec = sumSelec + entSelec!
                        cantSelec.text = String(sumSelec)
                        print("Suma: \(sumSelec)")
                        print(result.value(forKey: "selecto")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosClas(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Clasico> = NSFetchRequest(entityName: "Clasico")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.clasico!)
                        sum = sum + entero!
                        cantClas.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "clasico")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosChimi(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Chimichanga> = NSFetchRequest(entityName: "Chimichanga")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.chimichanga!)
                        sum = sum + entero!
                        cantChimi.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "chimichanga")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosBeb(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Bebida> = NSFetchRequest(entityName: "Bebida")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.bebida!)
                        sum = sum + entero!
                        cantBeb.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "bebida")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosTost(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Tostada> = NSFetchRequest(entityName: "Tostada")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.tostada!)
                        sum = sum + entero!
                        cantTost.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "tostada")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosExtra(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Extra> = NSFetchRequest(entityName: "Extra")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.extra!)
                        sum = sum + entero!
                        cantExtra.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "extra")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosPaqU(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteUno> = NSFetchRequest(entityName: "PaqueteUno")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.paqueteUno!)
                        sum = sum + entero!
                        cantPaqUno.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "paqueteUno")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosPaqD(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteDos> = NSFetchRequest(entityName: "PaqueteDos")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.paqueteDos!)
                        sum = sum + entero!
                        cantPaqDos.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "paqueteDos")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosPaqT(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteTres> = NSFetchRequest(entityName: "PaqueteTres")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.paqueteTres!)
                        sum = sum + entero!
                        cantPaqTres.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "paqueteTres")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosPaqC(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteCuatro> = NSFetchRequest(entityName: "PaqueteCuatro")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.paqueteCuatro!)
                        sum = sum + entero!
                        cantPaqCuatro.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "paqueteCuatro")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    @IBAction func datosBurrDia(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<BurritoDia> = NSFetchRequest(entityName: "BurritoDia")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.burritoDia!)
                        sum = sum + entero!
                        cantBurrDia.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "burritoDia")!)
                    }
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
    }
    
    @IBAction func borrarPrem(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Premium> = NSFetchRequest(entityName: "Premium")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarSelec(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Selecto> = NSFetchRequest(entityName: "Selecto")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarClas(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Clasico> = NSFetchRequest(entityName: "Clasico")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarChimi(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Chimichanga> = NSFetchRequest(entityName: "Chimichanga")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarBeb(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Bebida> = NSFetchRequest(entityName: "Bebida")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarTost(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Tostada> = NSFetchRequest(entityName: "Tostada")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarExtra(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Extra> = NSFetchRequest(entityName: "Extra")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarPaqU(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteUno> = NSFetchRequest(entityName: "PaqueteUno")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarPaqD(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteDos> = NSFetchRequest(entityName: "PaqueteDos")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarPaqT(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteTres> = NSFetchRequest(entityName: "PaqueteTres")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarPaqC(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<PaqueteCuatro> = NSFetchRequest(entityName: "PaqueteCuatro")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    @IBAction func borrarBurrD(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<BurritoDia> = NSFetchRequest(entityName: "BurritoDia")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    for result in datos {
                        context.delete(result)
                    }
                    _ = try? context.save()
                    
                } else {
                    let alertController = UIAlertController(title: "¡No hay Datos 🐰!", message: "", preferredStyle: .actionSheet)
                    let okAction = UIAlertAction(title: "OK", style: .default , handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    print("No hay resultados XD")
                }
            } catch {
                print("Error \(error)")
            }
        }
        
        
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

