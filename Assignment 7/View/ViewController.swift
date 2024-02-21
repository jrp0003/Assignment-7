//
//  ViewController.swift
//  Assignment 7
//
//  Created by Owner on 2/20/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var cats = [
        NameLocation("Biggest Cats in the World", "Location"),
        NameLocation("#1 Tiger *War Eagle!*", "Asia"),
        NameLocation("#2 Lion", "Africa"),
        NameLocation("#3 Jaguar", "North & South America"),
        NameLocation("#4 Leopard", "Africa & Asia"),
        NameLocation("#5 Puma", "North & South America"),
        NameLocation("#6 Cheetah", "Africa & Asia"),
        NameLocation("#7 Snow Leopard", "Asia"),
        NameLocation("#8 Eurasian Lynx", "Europe & Asia"),
        NameLocation("#9 Sunda Clouded Leopard", "Asia"),
        NameLocation("#10 Mainland Clouded Leopard", "Asia"),
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = cats[indexPath.row].name
        content.secondaryText = cats[indexPath.row].location
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, _) in
            print("Deleted " + self.cats[indexPath.row].name)
            self.cats.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCat = cats[indexPath.row]
        performSegue(withIdentifier: "toCatInfo", sender: selectedCat)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCatInfo",
           let catInfoController = segue.destination as? CatInfoController,
           let selectedCat = sender as? NameLocation {
            print("Selected cat: \(selectedCat.name), \(selectedCat.location)")
            catInfoController.catName = selectedCat.name
            catInfoController.catLocation = selectedCat.location
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


