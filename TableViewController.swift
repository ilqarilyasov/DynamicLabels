//
//  TableViewController.swift
//  DynamicLabels
//
//  Created by Ilgar Ilyasov on 6/15/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private let longTexts = [
        "Table view data source",
        "Uncomment the following line to preserve selection between presentations. Uncomment the following line to preserve selection between presentations. Uncomment the following line to preserve selection between presentations. Uncomment the following line to preserve selection between presentations.",
        "Override to support conditional editing of the table view. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable. Return false if you do not want the item to be re-orderable.",
        "Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller. Pass the selected object to the new view controller."
    ]
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return longTexts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = longTexts[indexPath.row]

        return cell
    }

}
