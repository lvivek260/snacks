//
//  ViewController.swift
//  Snacks
//
//  Created by Admin on 23/01/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var snacksArray:[SnacksModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addSnacksData()
        
    }
    
    func addSnacksData(){
        snacksArray.append(SnacksModel(name: "Kosambari", image:#imageLiteral(resourceName:"s1.jpg")))
        snacksArray.append(SnacksModel(name: "Bhelpuri", image: #imageLiteral(resourceName:"s2.jpg")))
        snacksArray.append(SnacksModel(name: "Kachori", image: #imageLiteral(resourceName: "s3.jpg")))
        snacksArray.append(SnacksModel(name: "Masala vada", image: #imageLiteral(resourceName: "s4.jpg")))
        snacksArray.append(SnacksModel(name: "Kozhukkatta", image: #imageLiteral(resourceName: "s5.jpg")))
        snacksArray.append(SnacksModel(name: "Shankarpali", image: #imageLiteral(resourceName: "s6.jpg")))
        snacksArray.append(SnacksModel(name: "Boondi raita", image: #imageLiteral(resourceName: "s7.jpg")))
        snacksArray.append(SnacksModel(name: "Papri chaat", image: #imageLiteral(resourceName: "s8.jpg")))
        snacksArray.append(SnacksModel(name: "Gajak", image: #imageLiteral(resourceName: "s9.jpg")))
        snacksArray.append(SnacksModel(name: "Bikaneri bhujia", image: #imageLiteral(resourceName: "s10.jpg")))
        snacksArray.append(SnacksModel(name: "Masala papad", image: #imageLiteral(resourceName: "s11.jpg")))
        snacksArray.append(SnacksModel(name: "Dahi vada", image: #imageLiteral(resourceName: "s12.jpg")))
        snacksArray.append(SnacksModel(name: "Sev", image: #imageLiteral(resourceName: "s13.jpg")))
        snacksArray.append(SnacksModel(name: "Murukku", image: #imageLiteral(resourceName: "s14.jpg")))
        snacksArray.append(SnacksModel(name: "Dhokla", image: #imageLiteral(resourceName: "s15.jpg")))
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return snacksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SnacksTableViewCell
        cell.snacksName.text = snacksArray[indexPath.row].name
        cell.snacksImage.image = snacksArray[indexPath.row].image
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(265)
    }
    
}
