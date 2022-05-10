//
//  AboutAuthorsViewController.swift
//  WateringPlants
//
//  Created by Денис on 09.05.2022.
//

import UIKit

class AboutAuthorsViewController: UITableViewController {
    
    private let authors = Person.getAuthorList()
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 30))

        let label = UILabel()
        label.frame = CGRect.init(x: 20, y: 5, width: headerView.frame.width, height: headerView.frame.height)
        label.text = "Авторы проекта"
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        
        headerView.addSubview(label)

        return headerView
    }
  
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        authors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "authorID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let author = authors[indexPath.row]
        
        content.text = author.fullName
        content.secondaryText = author.contribution

        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
