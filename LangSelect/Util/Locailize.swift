//
//  Locailize.swift
//  LangSelect
//
//  Created by JWLK on 2021/04/07.
//

import Foundation

class Identifier: ObservableObject {
//    @AppStorage("localCode") var localCode : String = UserDefaults.standard.set("en", forKey: "localCode")
    
//    @Published var localCode = "en"
}

extension String {
    func locailzed(bundle: Bundle = .main, tableName: String = "Localizable") -> String{
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
