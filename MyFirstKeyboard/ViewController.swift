//
//  ViewController.swift
//  MyFirstKeyboard
//
//  Created by Jessi Febria on 23/04/21.
//

import UIKit

class ViewController: UITableViewController {

    let sentences = ["aaa", "bbb", "ccc"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // datasource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sentences.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        cell.textLabel?.text = sentences[indexPath.row]
        return cell
    }
    
    // delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
}

