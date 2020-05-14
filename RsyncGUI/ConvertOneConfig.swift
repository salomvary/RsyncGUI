//
//  ConvertOneConfig.swift
//  RsyncGUI
//
//  Created by Thomas Evensen on 30/05/2019.
//  Copyright © 2019 Thomas Evensen. All rights reserved.
//
// swiftlint:disable trailing_comma

import Foundation

struct ConvertOneConfig {
    var config: Configuration?

    var dict: NSMutableDictionary {
        let row: NSMutableDictionary = [
            "taskCellID": self.config?.task ?? "",
            "hiddenID": self.config?.hiddenID ?? "",
            "localCatalogCellID": self.config?.localCatalog ?? "",
            "offsiteCatalogCellID": self.config?.offsiteCatalog ?? "",
            "offsiteUsernameID": self.config?.offsiteUsername ?? "",
            "offsiteServerCellID": self.config?.offsiteServer ?? "",
            "backupIDCellID": self.config?.backupID ?? "",
            "runDateCellID": self.config?.dateRun ?? "",
            "daysID": self.config?.dayssincelastbackup ?? "",
            "markdays": self.config?.markdays ?? "",
            "selectCellID": 0,
        ]
        return row
    }

    init(config: Configuration) {
        self.config = config
    }
}
