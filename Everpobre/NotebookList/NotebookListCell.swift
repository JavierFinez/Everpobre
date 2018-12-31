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
        super.prepareForReuse()
    }
    
    func configure(with notebook: Notebook) {
        titleLabel.text = notebook.name
        creationDateLabel.text = "Created: \((notebook.creationDate as Date?)?.customStringLabel() ?? "ND")"
    }
    
}
