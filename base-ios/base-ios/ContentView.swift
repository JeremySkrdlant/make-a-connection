//
//  ContentView.swift
//  base-ios
//
//  Created by Jeremy Skrdlant on 5/7/25.
//

import SwiftUI

struct BaseResult{
	var name:String
}

func getResult()async throws->BaseResult{
	return BaseResult(name: "Update Please")
}

struct ContentView: View {
	@State var result = ""
    var body: some View {
        VStack {
            
            Text(result)
			
			Button {
				Task{
					let fullResult = try await getResult()
					result = fullResult.name
				}
			} label: {
				Text("Fetch Data")
			}

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
