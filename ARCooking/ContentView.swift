//
//  ContentView.swift
//  ARCooking
//
//  Created by Luan Gabriel Fernandes Aiezza on 10/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Text("Tacacá AR")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Aprenda a preparar tacacá enquanto conhece sua história.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                NavigationLink {
                    ARExperienceView()
                } label: {
                    Text("Começar Experiência")
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .foregroundStyle(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
            }
        }
    }
}
