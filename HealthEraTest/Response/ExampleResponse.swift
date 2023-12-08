//
//  ExampleResponse.swift
//  HealthEra
//
//  Created by Sharad Chauhan on 08/12/23.
//

import Foundation


/*
 
 Adherence

let adherenceData = {
  "data": [
    {
      "_id": "5550a940-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a940-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638260100,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a943-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a943-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638280800,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a946-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a946-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638298800,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a941-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a941-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638346500,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a944-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a944-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638367200,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a947-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a947-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638385200,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a942-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a942-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638432900,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a945-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a945-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638453600,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    },
    {
      "_id": "5550a948-51db-11ec-9b41-e96ff5ce1190",
      "adherence_id": "5550a948-51db-11ec-9b41-e96ff5ce1190",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "alarm_time": 1638471600,
      "action": "scheduled",
      "action_time": null,
      "dose_discrete": null,
      "dose_quantity": 1,
      "note": null
    }
  ]
}


 Remedies - GET all remedies
 


let remediesData = {
  "data": [
    {
      "_id": "6155cdfd4c49560012144b07",
      "remedy_id": "53c0ceb0-21fd-11ec-bc71-b33f3a224f11",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "date_created": 1633013245,
      "is_ongoing": false,
      "start_date": 1632960000,
      "medicine_id": "1b5a1320-f80e-11ea-9b4e-446049757438",
      "instruction": "As needed",
      "medicine_name": "Credalast Flatbed Knit class II cotton kneecap made to measure",
      "medicine_type": "others",
      "end_date": 1633046399,
      "repeat_cycle": 0,
      "allow_edit": false,
      "schedule": [
        
      ],
      "is_current": true,
      "medicine": {
        "_id": "1b5a1320-f80e-11ea-9b4e-446049757438",
        "ampp_id": "6094511000001101",
        "ampp_name": "Credalast Flatbed Knit class II cotton kneecap made to measure Beige (Credenhill Ltd) 2 stocking",
        "amp_id": "6093511000001104",
        "vmpp_id": "6093211000001102",
        "discontinued_date": null,
        "pip_code": null,
        "prescription_charges": 2,
        "nhs_price": 0,
        "nhs_price_date": "1970-01-01T00:00:00.000Z",
        "gtin": [
          "5055156003189"
        ],
        "start_date": "2015-04-09T00:00:00.000Z",
        "medicine_name": "Credalast Flatbed Knit class II cotton kneecap made to measure",
        "generic_name": "Compression hosiery class II kneecap flatbed knit made to measure 2 stocking",
        "course_quantity": 2,
        "medicine_id": "1b5a1320-f80e-11ea-9b4e-446049757438",
        "name": "Credalast Flatbed Knit class II cotton kneecap made to measure",
        "controlled": false
      },
      "price": 18.7
    },
    {
      "_id": "6155ce394c49560012144b08",
      "remedy_id": "776b0e70-21fd-11ec-bc71-b33f3a224f11",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "date_created": 1633013305,
      "medicine_id": "a3c8d520-f80e-11ea-9787-9fa739e9ae41",
      "medicine_type": "others",
      "repeat_cycle": 0,
      "medicine_name": "Sensocard testing strips",
      "start_date": 1632960000,
      "reorder_timestamp": 1638489599,
      "end_date": 1638489599,
      "instruction": "1 Dose, 2 Times, Daily",
      "is_ongoing": null,
      "can_request": false,
      "date_modified": 1638275818,
      "schedule": [
        {
          "day_iterator": 1,
          "alarm_window": 28800,
          "day_offset": null,
          "dose_min": 1,
          "dose_max": 1
        },
        {
          "day_iterator": 1,
          "alarm_window": 72000,
          "day_offset": null,
          "dose_min": 1,
          "dose_max": 1
        }
      ],
      "special_instruction": null,
      "allow_edit": true,
      "is_current": true,
      "medicine": {
        "_id": "a3c8d520-f80e-11ea-9787-9fa739e9ae41",
        "ampp_id": "9296211000001108",
        "ampp_name": "Sensocard testing strips (BBI Healthcare Ltd) 50 strip",
        "amp_id": "9296111000001102",
        "vmpp_id": "1019111000001108",
        "discontinued_date": null,
        "pip_code": null,
        "prescription_charges": 1,
        "nhs_price": 1630,
        "nhs_price_date": "2008-10-01T00:00:00.000Z",
        "medicine_name": "Sensocard testing strips",
        "generic_name": "Blood glucose biosensor testing strips 50 strip",
        "course_quantity": 50,
        "medicine_id": "a3c8d520-f80e-11ea-9787-9fa739e9ae41",
        "name": "Sensocard testing strips",
        "controlled": false
      },
      "price": 9.35
    },
    {
      "_id": "6155d24f4c49560012144b11",
      "remedy_id": "e6b40fa0-21ff-11ec-bc71-b33f3a224f11",
      "patient_id": "01557eb0-1fb3-11ec-89f3-379779116bb8",
      "date_created": 1633014351,
      "is_ongoing": null,
      "medicine_id": "413ce850-f80f-11ea-8598-c3603c90ecc4",
      "repeat_cycle": 28,
      "start_date": 1632960000,
      "end_date": 1638489599,
      "medicine_name": "Nex foam collar filter",
      "reorder_timestamp": 1638489599,
      "medicine_type": "others",
      "instruction": "1 Dose, 3 Times, Daily",
      "can_request": false,
      "date_modified": 1638276301,
      "schedule": [
        {
          "day_iterator": 1,
          "alarm_window": 29700,
          "day_offset": null,
          "dose_min": 1,
          "dose_max": 1
        },
        {
          "day_iterator": 1,
          "alarm_window": 50400,
          "day_offset": null,
          "dose_min": 1,
          "dose_max": 1
        },
        {
          "day_iterator": 1,
          "alarm_window": 68400,
          "day_offset": null,
          "dose_min": 1,
          "dose_max": 1
        }
      ],
      "special_instruction": null,
      "allow_edit": true,
      "is_current": true,
      "medicine": {
        "_id": "413ce850-f80f-11ea-8598-c3603c90ecc4",
        "ampp_id": "12096711000001100",
        "ampp_name": "Nex foam collar filter HNFC (JLJ Healthcare Ltd) 10 device",
        "amp_id": "12096611000001109",
        "vmpp_id": "5879611000001108",
        "discontinued_date": null,
        "pip_code": null,
        "prescription_charges": 1,
        "nhs_price": 2250,
        "nhs_price_date": "1970-01-01T00:00:00.000Z",
        "medicine_name": "Nex foam collar filter",
        "generic_name": "Tracheostomy and laryngectomy protectors 10 device",
        "course_quantity": 10,
        "medicine_id": "413ce850-f80f-11ea-8598-c3603c90ecc4",
        "name": "Nex foam collar filter",
        "controlled": false
      },
      "price": 9.35
    }
  ]
}

*/



struct AdherenceCodable: Decodable {
    let data: [AdherenceData]
}

struct AdherenceData: Decodable {
    
    let id: String
    let remedyID: String
    let action: String
    let alarmTime: Int
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case remedyID = "remedy_id"
        case action
        case alarmTime = "alarm_time"
    }
}


struct RemediesCodable: Decodable {
    let data: [RemediesData]
}


struct RemediesData: Decodable {
    
    let id: String
    let remedyID: String
    let instruction: String
    let medicineName: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case remedyID = "remedy_id"
        case instruction
        case medicineName = "medicine_name"
    }
}


