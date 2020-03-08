//
//  ViewController.swift
//  UITableViewExample
//
//  Created by Diego Dominguez on 08/03/2020.
//  Copyright © 2020 Diego Dominguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableView = UITableView()
    var contacts: [Contact] = []
    
    struct Cell {
        static let contactCell = "ContactCell"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contacts = getData()
       configureTableView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100 //hardcodding
        tableView.register(TableViewCell.self, forCellReuseIdentifier: Cell.contactCell)
        tableView.pin(to: view)
        
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.contactCell) as! TableViewCell
        let contact = contacts[indexPath.row]
        cell.set(contact: contact)
        return cell
    }
    
    
}

extension ViewController {
    func getData() -> [Contact]{
        let contact1 = Contact(image: UIImage(named: "carlos")!, name: "Carlos")
        let contact2 = Contact(image: UIImage(named: "alfonso")!, name: "Alfonso")
        let contact3 = Contact(image: UIImage(named: "carla")!, name: "Carla")
        let contact4 = Contact(image: UIImage(named: "fruteria")!, name: "Fruteria")
        let contact5 = Contact(image: UIImage(named: "juanjo")!, name: "Juanjo")
        let contact6 = Contact(image: UIImage(named: "kim")!, name: "Kim")
        let contact7 = Contact(image: UIImage(named: "manolo")!, name: "Manolo")
        let contact8 = Contact(image: UIImage(named: "maria")!, name: "Maria")
        let contact9 = Contact(image: UIImage(named: "pepe")!, name: "Pepe")
        let contact10 = Contact(image: UIImage(named: "sue")!, name: "Sue")
        return[contact1,contact2,contact3,contact4,contact5,contact6,contact7,contact8,contact9, contact10]
    }
}
