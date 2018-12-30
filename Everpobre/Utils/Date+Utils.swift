//
//  Date+Utils.swift
//  Everpobre
//
//  Created by Javier Finez de Dios on 24/12/18.
//  Copyright © 2018 Javier Finez de Dios. All rights reserved.
//

import Foundation

extension Date {
    func customStringLabel() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        
        return "\(dateFormatter.string(from: self))"
    }
}
