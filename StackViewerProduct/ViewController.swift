//
//  ViewController.swift
//  StackViewerProduct
//
//  Created by Marcell Fulop on 4/24/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var ColorTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ColorTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let colorChoice = indexPath.row % 3
        switch colorChoice{
        case 0:
            cell.backgroundColor = UIColor.red
            break
        case 1:
            cell.backgroundColor = UIColor.green
            break
        default:
            cell.backgroundColor = UIColor.blue
        }
        return cell 
    }

}

