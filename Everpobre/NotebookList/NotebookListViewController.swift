//
//  NotebookListViewController.swift
//  Everpobre
//
//  Created by Javier Finez de Dios on 16/12/18.
//  Copyright © 2018 Javier Finez de Dios. All rights reserved.
//

import UIKit
import CoreData

class NotebookListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var managedContext: NSManagedObjectContext! // Beware to have a value before presenting the VC
    
    var model: [deprecated_Notebook] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        model = deprecated_Notebook.dummyNotebookModel
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        super.viewDidLoad()
    }
    
}


// MARK :- UITableViewDataSource implementation

extension NotebookListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotebookListCell", for: indexPath) as! NotebookListCell
        
        cell.configure(with: model[indexPath.row])
        
        return cell
    }
    
}

// MARK :- UITableViewDelegate implementation

extension NotebookListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let notebook = model[indexPath.row]
        let notesListVC = NotesListViewController(notebook: notebook)
        self.show(notesListVC, sender: nil)
    }
    
}



