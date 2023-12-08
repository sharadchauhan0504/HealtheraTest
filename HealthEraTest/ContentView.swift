//
//  ContentView.swift
//  HealthEraTest
//
//  Created by Sharad Chauhan on 08/12/23.
//

import SwiftUI

final class ViewModel : ObservableObject {
    
    @Published var medicineListData: [MedicineListData] = []
    private var remedies: [RemediesData] = []
    private var adherences: [AdherenceData] = []
    
    private let responseManipulation: ResponseManipulation
    
    init(_ responseManipulation: ResponseManipulation) {
        self.responseManipulation = responseManipulation
        loadRemediesData()
        loadAdherenceData()
    }
    
    
    private func loadRemediesData() {
        guard let remediesData = RawJSONToData.covertJSONToData("remedies"),
            let remediesResponse = ResponseDecoder<RemediesCodable>.decode(remediesData) else {return}
        remedies = remediesResponse.data
    }
    
    private func loadAdherenceData() {
        guard let adherenceData = RawJSONToData.covertJSONToData("adherence"),
            let adherenceResponse = ResponseDecoder<AdherenceCodable>.decode(adherenceData) else {return}
        adherences = adherenceResponse.data
    }
    
    func getMedicineData() {
        medicineListData = responseManipulation.mergeResponse(remedies, adherences)
    }
    
    func getMedicineDescription(_ mergedResponse: [MergedResponse]) -> String {
        let description = mergedResponse.map { "Time: \($0.alarmTime)\n Medicine: \($0.medicineName)\n Instruction: \($0.instruction) \n"}.joined(separator: "\n")
        return description
    }
    
}


struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel(ResponseManipulation())
    
    var body: some View {
        VStack {
            List(viewModel.medicineListData, id: \.id) { mergedResponse in
                VStack {
                    CardView(description: viewModel.getMedicineDescription(mergedResponse.remedy), remedyId: mergedResponse.id)
                }
                .listRowSeparator(.hidden)
            }
            .onAppear(perform: viewModel.getMedicineData)
            .scrollContentBackground(.hidden)
        }
        
    }
}

struct CardView: View {
    var description: String
    var remedyId: String
    @State private var startAnimation
    : Bool = false
    
    var body: some View {
        VStack {
            Text("Remedy: \(remedyId)").padding()
            Text(description).padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 4)
        .opacity(startAnimation ? 1.0 : 0.0)
        .offset(CGSize(width: 0, height: startAnimation ? 0.0 : -10.0))
        .animation(.easeInOut(duration: 0.7).delay(0.35), value: startAnimation)
        .onAppear {
            startAnimation = true
        }
        
    }
}


#Preview {
    ContentView()
}
