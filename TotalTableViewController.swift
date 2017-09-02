//
//  TotalTableViewController.swift
//  Rebeca
//
//  Created by Samuel Landaverde on 30/08/17.
//  Copyright © 2017 Samuel Landaverde. All rights reserved.
//

import UIKit
import CoreData

class TotalViewController: UIViewController {
    
    @IBOutlet weak var totalDia: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let fetchRequest : NSFetchRequest<Cantidades> = NSFetchRequest(entityName: "Cantidades")
//        
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            self.fetchResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
//            self.fetchResultsController.delegate = self
//            do {
//                try fetchResultsController.performFetch()
//                let datos = fetchResultsController.fetchedObjects!
//            } catch {
//                print("Error XD \(error)")
//            }
//        }
        
        
        
        
//        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
//            let context = container.viewContext
//            
//            let request : NSFetchRequest<Premium> = NSFetchRequest(entityName: "Premium")
//            
//            do {
//                let datos = try context.fetch(request)
//                if datos.count > 0 {
//                    var sum = 0.0
//                    for result in datos {
//                        let entero = Double(result.premium!)
//                        sum = sum + entero!
//                        print("Suma: \(sum)")
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
    
    @IBAction func totalDia(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Total> = NSFetchRequest(entityName: "Total")
            
            do {
                let datos = try context.fetch(request)
                if datos.count > 0 {
                    var sum = 0.0
                    for result in datos {
                        let entero = Double(result.totalDia!)
                        sum = sum + entero!
                        totalDia.text = String(sum)
                        print("Suma: \(sum)")
                        print(result.value(forKey: "totalDia")!)
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

    @IBAction func borrarTotalDia(_ sender: Any) {
        if let container = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer {
            let context = container.viewContext
            
            let request : NSFetchRequest<Total> = NSFetchRequest(entityName: "Total")
            
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
 
