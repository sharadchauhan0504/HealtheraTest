//
//  ResponseDecoder.swift
//  HealthEraTest
//
//  Created by Sharad Chauhan on 08/12/23.
//

import Foundation

struct ResponseDecoder<T: Decodable> {
    
    static func decode(_ data: Data) -> T? {
        do {
            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: data)
            return result
        } catch {
            print("Decoding error: \(error.localizedDescription)")
        }
        
        return nil
    }
}
