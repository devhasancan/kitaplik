# Kitaplık

A camera-powered reading journal for iOS. *Kitaplık* means "bookshelf" in Turkish.

> 🚧 **Status:** In active development (v0.1.0). Not yet available on the App Store.

## About

Kitaplık helps readers of physical books keep track of what they read and never lose the sentences they love. Add a book by scanning its barcode, capture a quote by taking a photo of the page, and revisit your favorite passages as flashcards and occasional reminders.

The project is also a deliberate learning exercise: it is designed to practice modern Swift, testable architecture and a real-world UIKit-to-SwiftUI workflow, and it is managed with a Kanban board from the first commit.

## Features

Planned for v1:

- [ ] Search books via the Open Library API with pagination
- [ ] Add books by scanning their ISBN barcode
- [ ] Personal library with reading status (to read, reading, finished)
- [ ] Capture quotes from book pages with on-device text recognition
- [ ] Review quotes as flashcards
- [ ] Quote reminders via local notifications
- [ ] Reading statistics and a yearly reading goal
- [ ] Turkish and English localization, Dark Mode and Dynamic Type support

## Tech Stack

- **UI:** UIKit (programmatic, no storyboards), with SwiftUI screens added via `UIHostingController`
- **Language:** Swift 6 with strict concurrency
- **Concurrency:** async/await, actors, `@MainActor`
- **Networking:** `URLSession` with a generic, testable network layer
- **Persistence:** SwiftData *(planned)*
- **Camera & Vision:** VisionKit `DataScannerViewController`, Vision text recognition *(planned)*
- **Testing:** Swift Testing
- **Data source:** [Open Library API](https://openlibrary.org/developers/api)

## Architecture

MVVM with protocol-based dependency injection. Screens and view models only depend on protocols, so every service can be replaced with a mock in tests. A detailed overview will be added as the architecture takes shape.

## Requirements

- iOS 17.0+
- Xcode 26+
- iPhone only, portrait orientation

## Getting Started

```bash
git clone https://github.com/devhasancan/kitaplik.git
cd kitaplik
open Kitaplik.xcodeproj
```

Select an iPhone simulator and press **⌘R** to run. No API keys are required.

## Roadmap

- [x] Project setup without storyboards
- [ ] Design foundations, logging and localization
- [ ] Networking layer and Open Library integration
- [ ] Book search
- [ ] Library and persistence
- [ ] Barcode scanning and quote capture
- [ ] SwiftUI screens: settings, statistics, quote cards
- [ ] Accessibility, CI and real-device testing
- [ ] App Store release

## Author

**Hasan Can Güler** — iOS Developer

- Portfolio: [devhasancan.com](https://www.devhasancan.com)
- GitHub: [@devhasancan](https://github.com/devhasancan)
