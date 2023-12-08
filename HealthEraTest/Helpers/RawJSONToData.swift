//
//  RawJSONToData.swift
//  HealthEra
//
//  Created by Sharad Chauhan on 08/12/23.
//

import Foundation

struct RawJSONToData {
    
    static func covertJSONToData(_ fileName: String) -> Data? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json")     {
            do {
                let data = try Data(contentsOf: url)
                return data
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
}
