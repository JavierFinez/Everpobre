//
//  NotebookListCell.swift
//  Everpobre
//
//  Created by Javier Finez de Dios on 22/12/18.
//  Copyright © 2018 Javier Finez de Dios. All rights reserved.
//

import UIKit

class NotebookListCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var creationDateLabel: UILabel!
    
    override func prepareForReuse() {
        titleLabel.text = nil
        creationDateLabel.text = nil
    }
    
    func configure(with notebook: Notebook) {
        titleLabel.text = notebook.name
        creationDateLabel.text = creationString(from: notebook.creationDate)
    }
    
    func creationString(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        
        return "Created: \(dateFormatter.string(from: date))"
    }
    
    
}
