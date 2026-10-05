# ARCooking

**ARCooking** (app screen title: "Tacacá AR") is an educational **augmented reality app for iOS** built with **SwiftUI** and **RealityKit**. It teaches how to prepare **tacacá**, a traditional dish from the Brazilian Amazon, while presenting its cultural origin and context. It was started as a possible submission to the **Swift Student Challenge**.

> **Status:** early skeleton. The step-by-step flow and the AR session are in place, but the 3D ingredients, narration audio and cultural content are still placeholders (see the code comments marked as future work).

## Features

- Home screen with a "Começar Experiência" (start experience) button that opens the AR view.
- AR view using `ARView` with world tracking and horizontal plane detection.
- Six-step guided recipe, shown in an overlay card: Introdução, Tucupi, Jambu, Goma, Camarão and Finalização.
- "Próximo passo" (next step) button that advances through the steps and stops at the last one.
- `StoryNarrator` hook called on each step (currently only prints to the console; audio is planned).
- UI text is in Brazilian Portuguese.

Not implemented yet: 3D ingredient models in the scene (the AR anchor is an empty placeholder), reacting to step changes in AR, narration audio, and the `Ingredient` model is defined but not used.

## Architecture

| Path | Description |
| --- | --- |
| `ARCooking/AppDelegate.swift` | `@main` app entry point (`ARCooking: App`) showing `ContentView`. |
| `ARCooking/ContentView.swift` | Home screen with `NavigationStack` and link to the experience. |
| `ARCooking/ARExperienceView/ARExperienceView.swift` | AR screen with step overlay and next-step button. |
| `ARCooking/ARExperienceView/ARViewContainer.swift` | `UIViewRepresentable` wrapping `ARView` and the AR session configuration. |
| `ARCooking/ARExperienceView/CookingStepManager.swift` | `ObservableObject` holding the list of steps and the current index. |
| `ARCooking/ARExperienceView/StoryNarrator.swift` | Placeholder for per-step narration. |
| `ARCooking/Models/CookingStep.swift` | `CookingStep` model (title, description). |
| `ARCooking/Models/Ingredient.swift` | `Ingredient` model (name, main-ingredient flag). |
| `ARCooking/Assets.xcassets` | App icon and accent color. |

## Tech stack

![Swift](https://img.shields.io/badge/Swift-F05138?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-0D96F6?style=for-the-badge&logo=swift&logoColor=white)
![RealityKit](https://img.shields.io/badge/RealityKit-000000?style=for-the-badge&logo=apple&logoColor=white)
![ARKit](https://img.shields.io/badge/ARKit-000000?style=for-the-badge&logo=apple&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-147EFB?style=for-the-badge&logo=xcode&logoColor=white)

## Running the project

Requirements:

- A Mac with Xcode that supports the iOS 26.2 SDK (the project's deployment target is iOS 26.2).
- A physical iPhone or iPad running iOS 26.2 or later (ARKit world tracking needs a real camera; the simulator is not enough).

Steps:

1. Clone the repository: `git clone https://github.com/Luan-Aiezza/ARCooking.git`
2. Open `ARCooking.xcodeproj` in Xcode.
3. In *Signing & Capabilities*, select your own development team (the bundle identifier is `mooncat.ARCooking`; change it if needed).
4. Select your device and press **Run**. Allow camera access when prompted.

## Author

- **Luan Gabriel Fernandes Aiezza** - [@Luan-Aiezza](https://github.com/Luan-Aiezza) - [LinkedIn](https://www.linkedin.com/in/luan-aiezza/) - luangabrielsf@gmail.com
