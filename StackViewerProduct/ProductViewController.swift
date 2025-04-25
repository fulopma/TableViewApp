//
//  ProductViewController.swift
//  StackViewerProduct
//
//  Created by Marcell Fulop on 4/24/25.
//

import UIKit

struct Product{
    var name: String
    var price: String
    // Image is a color but stored as a raw string
    var image: String
    init(name: String, price: String, image: String) {
        self.name = name
        self.price = price
        self.image = image
    }
}

class ProductViewController: UIViewController, UITableViewDataSource
{
    
    
    let products = [
        Product(name: "Apple", price: "$1.00", image: "red"),
        Product(name: "Pear", price: "$1.50", image: "green"),
        Product(name: "Broom", price: "$10.00", image: "brown"),
        Product(name: "Water Bottle", price: "$8.00", image: "blue"),
        Product(name: "Jacket", price: "$34.99", image: "cyan"),
        Product(name: "SIM card", price: "$14.99", image: "magenta"),
        Product(name: "Multivitamin", price: "$6.00", image: "purple"),
        Product(name: "LED Light Bulb", price: "$13.79", image: "yellow"),
        Product(name: "Sandals", price: "$49.95", image: "gray"),
        Product(name: "Pants", price: "$44.99", image: "black")
    ]
    
    // converts a string value to a UIColor
    let stringToUIColor: [String: UIColor] = [
        "red": .red,
        "green": .green,
        "brown": .brown,
        "blue": .blue,
        "cyan": .cyan,
        "magenta": .magenta,
        "purple": .purple,
        "yellow": .yellow,
        "gray": .gray,
        "black": .black
    ]
    
    @IBOutlet weak var productTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        productTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as? ProductTableCell
        cell?.nameLabel.text = "Product: \(products[indexPath.row%10].name)"
        cell?.priceLabel.text = "Price: \(products[indexPath.row%10].price)"
        cell?.productImageView?.backgroundColor = stringToUIColor[products[indexPath.row%10].image]
         return cell ?? UITableViewCell()
    }
    

    

}
