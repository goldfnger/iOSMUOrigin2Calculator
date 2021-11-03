//
//  AccessoryTableViewController.swift
//  mu origin 2 calc
//
//  Created by Aleksandr Kornjushko on 18.01.2021.
//

import UIKit

class AccessoryTableViewController: UITableViewController {
    
    var accessoryRelations = [AccessoryRelation]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        accessoryRelations.append(contentsOf: K.accesoryRelation)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accessoryRelations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.accessoryRelationCell, for: indexPath) as! AccessoryTableViewCell
        
        cell.icon.image = nil
        cell.icon2.image = nil
        cell.icon3.image = nil
        cell.icon4.image = nil
        cell.icon5.image = nil
         
        let relation = accessoryRelations[indexPath.row]
        let name = relation.relationName
        let stats = relation.relationStats
        let icons = relation.relationAccessoryIcons
        
        cell.relationName.textColor = #colorLiteral(red: 0.9989822507, green: 0.2641133964, blue: 0.003798623336, alpha: 1)
        cell.relationName.text = "\(name)"

        // will fit relations with corresponding images
        switch icons.count {
        case 2:
            cell.icon.image = UIImage(named: icons[0])
            cell.icon2.image = UIImage(named: icons[1])
        case 3:
            cell.icon.image = UIImage(named: icons[0])
            cell.icon2.image = UIImage(named: icons[1])
            cell.icon3.image = UIImage(named: icons[2])

        case 4:
            cell.icon.image = UIImage(named: icons[0])
            cell.icon2.image = UIImage(named: icons[1])
            cell.icon3.image = UIImage(named: icons[2])
            cell.icon4.image = UIImage(named: icons[3])
        case 5:
            cell.icon.image = UIImage(named: icons[0])
            cell.icon2.image = UIImage(named: icons[1])
            cell.icon3.image = UIImage(named: icons[2])
            cell.icon4.image = UIImage(named: icons[3])
            cell.icon5.image = UIImage(named: icons[4])

        default:
            print("error in setting up images for relation")
        }
        
        cell.relationStats.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.relationStats.text = "\(stats)"
        cell.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.1450980392, blue: 0.09411764706, alpha: 1)
        cell.isUserInteractionEnabled = false
        
        return cell
    }
}
