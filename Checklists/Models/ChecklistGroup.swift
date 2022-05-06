//
//  ChecklistGroup.swift
//  Checklists
//
//  Created by New User on 18.04.2022.
//

import Foundation

struct ChecklistGroup {
  let title: String
  let imageName: String
  var items: [ChecklistItem]
  
    func getRemainings() -> String {
        /// To do
        /// 1.All done
        var isAllDone = true
        for item in items {
            if item.isChecked == false {
                isAllDone = false
        }
        }
        
                /// 2. (no items)
        if items.isEmpty {
        return "(No items)"
        } else if !isAllDone, items.count != 0 {
        return"\(items.count) Remaining"
        }
        if isAllDone {
        return "All Done"
        } else {
            return "Incorrect data"
}
}
}
