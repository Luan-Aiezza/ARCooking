import Foundation
import Combine

final class CookingStepManager: ObservableObject {

    @Published private(set) var stepIndex: Int = 0

    private let steps: [CookingStep] = [
        CookingStep(
            title: "Introdução",
            description: "O tacacá é um prato tradicional da região amazônica."
        ),
        CookingStep(
            title: "Tucupi",
            description: "Vamos aquecer o tucupi."
        ),
        CookingStep(
            title: "Jambu",
            description: "Adicione as folhas de jambu ao caldo."
        ),
        CookingStep(
            title: "Goma",
            description: "A goma de mandioca dá textura ao prato."
        ),
        CookingStep(
            title: "Camarão",
            description: "O camarão seco adiciona sabor."
        ),
        CookingStep(
            title: "Finalização",
            description: "Sirva o tacacá na cuia."
        )
    ]

    var currentStep: CookingStep {
        steps[stepIndex]
    }

    func advance() {
        guard stepIndex + 1 < steps.count else { return }
        stepIndex += 1
    }
}
