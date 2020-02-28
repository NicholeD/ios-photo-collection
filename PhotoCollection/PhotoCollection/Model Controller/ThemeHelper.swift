//
//  ThemeHelper.swift
//  PhotoCollection
//
//  Created by Nichole Davidson on 2/27/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

class ThemeHelper {
  
    let themePreferenceKey: String
    
    func setThemePreferenceToDark() {
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToYourColorHere() {
        UserDefaults.standard.set("Sienna", forKey: themePreferenceKey)
    }
    
    var themePreference: String? {
        UserDefaults.standard.string(forKey: themePreferenceKey)
        return themePreferenceKey
    }
    
    init(themePreferenceKey: String) {
        self.themePreferenceKey = themePreferenceKey
        
        if themePreference == nil {
            setThemePreferenceToYourColorHere()
        } else {
            setThemePreferenceToDark()
        }
    }
}
