//
//  ARExperienceView.swift
//  ARCooking
//
//  Created by Luan Gabriel Fernandes Aiezza on 10/01/26.
//

import SwiftUI

struct ARExperienceView: View {
    @StateObject private var stepManager = CookingStepManager()
    private let narrator = StoryNarrator()

    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer(stepManager: stepManager)

            VStack(spacing: 12) {
                Text(stepManager.currentStep.title)
                    .font(.headline)

                Text(stepManager.currentStep.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)

                Button("Próximo passo") {
                    stepManager.advance()
                    narrator.narrate(step: stepManager.currentStep)
                }
                .padding()
                .background(.black)
                .foregroundStyle(.white)
                .cornerRadius(10)
            }
            .padding()
            .background(.ultraThinMaterial)
        }
        .navigationTitle("Preparo")
        .navigationBarTitleDisplayMode(.inline)
    }
}
