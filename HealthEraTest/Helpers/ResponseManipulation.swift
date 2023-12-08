//
//  ResponseManipulation.swift
//  HealthEra
//
//  Created by Sharad Chauhan on 08/12/23.
//

import Foundation

struct MedicineListData {
    let id: String
    let remedy: [MergedResponse]
}

struct MergedResponse: Decodable {
    let alarmTime: Int
    let instruction: String
    let medicineName: String
}


struct ResponseManipulation {
    
    func mergeResponse(_ remediesArray: [RemediesData], _ adherenceArray: [AdherenceData]) -> [MedicineListData] {
        var medicineListData: [MedicineListData] = []
        for remedy in remediesArray {
            let medicineData = getMergedResponse(remedy, adherenceArray)
            if !medicineData.isEmpty {
                let data = MedicineListData(id: remedy.id, remedy: medicineData)
                medicineListData.append(data)
            }
        }
        
        return medicineListData
    }
    
    
    func getMergedResponse(_ remedy: RemediesData, _ adherenceArray: [AdherenceData]) -> [MergedResponse] {
        
        let filteredData = adherenceArray.filter { $0.remedyID == remedy.remedyID }.map { MergedResponse(alarmTime: $0.alarmTime, instruction: remedy.instruction, medicineName: remedy.medicineName)  }
        return filteredData
        
    }
    
    
}


