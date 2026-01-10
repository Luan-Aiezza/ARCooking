# ARCooking 🍲🌿

**ARCooking** é uma experiência educacional em **Realidade Aumentada para iOS**, desenvolvida com **SwiftUI** e **RealityKit**.  
O projeto ensina o preparo do **Tacacá**, um prato tradicional da região amazônica, enquanto apresenta sua origem cultural, contexto histórico e elementos de narrativa pessoal.

Este projeto está sendo desenvolvido com foco educacional e como possível submissão para o **Swift Student Challenge**.

---

## ✨ Conceito

O tacacá vai além da alimentação: ele carrega história, identidade cultural e conhecimento indígena transmitido por gerações, especialmente no estado do Pará.

O objetivo deste app é:
- Ensinar o preparo do tacacá passo a passo
- Utilizar a Realidade Aumentada como ferramenta de aprendizado prático
- Unir culinária, cultura e storytelling em uma experiência interativa
- Valorizar a culinária amazônica por meio da tecnologia

---

## 🧭 Visão Geral da Experiência

1. O usuário inicia a experiência em um ambiente AR simples (bancada/cozinha)
2. Os ingredientes aparecem como objetos 3D na cena
3. Cada etapa do preparo é guiada por instruções visuais
4. Curiosidades e contexto cultural são apresentados durante o processo
5. A experiência termina com o tacacá servido em uma cuia tradicional

---

## 🏗️ Arquitetura do Projeto

```text
ARCookingApp
 ├── ContentView (SwiftUI)
 ├── ARExperienceView
 │    ├── ARViewContainer
 │    ├── CookingStepManager
 │    └── StoryNarrator
 ├── Models
 │    ├── Ingredient.swift
 │    └── CookingStep.swift
 └── Assets
```

Componentes Principais
SwiftUI
Responsável pela navegação, interface e textos de orientação.
RealityKit / ARKit
Gerencia a cena de Realidade Aumentada, âncoras e objetos 3D.
CookingStepManager
Controla o fluxo do preparo através de uma máquina de estados simples, garantindo que as etapas ocorram na ordem correta.
StoryNarrator
Responsável pela narrativa do projeto e, futuramente, pela narração em áudio.
🚧 Estado Atual do Projeto
✅ Implementado
Estrutura base do app em SwiftUI
Navegação inicial (Tela inicial → Experiência AR)
Integração básica com ARView
Máquina de estados para o preparo do tacacá
Textos descritivos por etapa
Lógica inicial de narrativa (placeholder)
Arquitetura organizada e escalável
Execução no simulador
❌ Ainda Não Implementado
Modelos 3D dos ingredientes e utensílios
Narração em áudio e efeitos sonoros
Interações com objetos AR (toque e arrastar)
Feedback visual por etapa
Lógica de posicionamento baseada em plano detectado
Animações (despejar, misturar, servir)
Melhorias de acessibilidade
🛣️ Roadmap
Curto Prazo
Adicionar entidades 3D temporárias (formas simples)
Associar cada etapa a um ingrediente específico
Implementar interações básicas (tap e drag)
Médio Prazo
Importar modelos 3D finais (USDZ)
Substituir placeholders pelos assets reais
Adicionar animações simples
Melhorar feedback visual durante o preparo
Longo Prazo
Adicionar narração em áudio
Incluir curiosidades culturais por ingrediente
Refinar UX e acessibilidade
Polimento final para submissão
🎓 Objetivos Educacionais
Ensinar uma receita tradicional real
Preservar e compartilhar conhecimento cultural
Estimular o aprendizado por meio da interação
Demonstrar o uso da Realidade Aumentada com propósito
Integrar storytelling e tecnologia
🧠 Tecnologias Utilizadas
Swift
SwiftUI
RealityKit
ARKit
Xcode
📱 Plataforma
iOS (iPhone e iPad)
Compatível com simulador (com limitações de AR)
📄 Licença
Este projeto está em desenvolvimento.
Licenças e créditos de assets externos serão adicionados conforme forem integrados.
