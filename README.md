## CryptoProtfolio (SwiftUI)

Beautiful, lightweight SwiftUI app for tracking a crypto portfolio and exploring SwiftUI component patterns. This repository contains two Xcode projects:

- `cryptOprotfoliO`: the main Crypto Portfolio app
- `LearnXC/L1 Demo`: a small demo app used for learning and experimentation


### Quick start

1) Install prerequisites
- Xcode 15+ (Swift 5.9+) on macOS
- iOS 17 simulator or a physical device with a valid signing team

2) Clone the repository
```bash
git clone https://github.com/<your-username>/CryptoProtfolio.git
cd CryptoProtfolio
```

3) Open and run
- Open `cryptOprotfoliO/cryptOprotfoliO.xcodeproj` in Xcode
- Select an iOS Simulator (e.g., iPhone 15)
- Press Run (⌘R)

Optional: open `LearnXC/L1 Demo/L1 Demo.xcodeproj` to run the learning demo.


### Project structure

```
CryptoProtfolio/
├─ cryptOprotfoliO/
│  ├─ cryptOprotfoliO/
│  │  ├─ Core/
│  │  │  ├─ Components/
│  │  │  │  └─ CirleButton/              # Reusable circle button views/animations
│  │  │  ├─ Home/                        # Home screen feature area
│  │  │  │  ├─ ViewModels/               # (reserved for state/view models)
│  │  │  │  └─ Views/                    # Home screen SwiftUI views
│  │  ├─ Extensions/                     # Reusable helpers and Swift extensions
│  │  ├─ Models/                         # Data models (e.g., CoinModel)
│  │  ├─ Assets.xcassets/                # Colors and app icons
│  │  ├─ ContentView.swift               # Root content view
│  │  └─ cryptOprotfoliOApp.swift        # App entry point
│  └─ cryptOprotfoliO.xcodeproj
└─ LearnXC/
   └─ L1 Demo/                           # Standalone learning/demo project
```


### Detailed sections

- Core/Components/CirleButton/
  - `CircleButtonView.swift`: A reusable circular button with configurable icon and styling.
  - `CircleButtonAnimationView.swift`: A subtle animated accent used with the button (e.g., pulsing).

- Core/Home/Views/
  - `Homeiew.swift`: Main home screen view container for the portfolio (list/state wiring). Note: filename has a minor typo; consider renaming to `HomeView.swift`.
  - `CoinRowView.swift`: Renders a single coin row with symbol, price and other details.

- Extensions/
  - `Color.swift`: Centralized color helpers and theme configuration.
  - `Double.swift`: Numeric formatting helpers for prices, percentages, etc.
  - `PreviewProvider.swift`: Preview scaffolding to improve SwiftUI preview ergonomics.

- Models/
  - `CoinModel.swift`: Model describing a cryptocurrency (symbol, price, change, etc.).

- App bootstrapping
  - `cryptOprotfoliOApp.swift`: SwiftUI `@main` app entry that loads the root `ContentView`.
  - `ContentView.swift`: Root view and navigation shell.


### Features

- Clean SwiftUI architecture with feature folders
- Reusable component patterns (`CircleButtonView`, animation helpers)
- Handy extensions for formatting values (e.g., price/percentage)
- Ready to extend with networking, persistence, and charts


### How to reuse this code in your project

Option A — Copy files into your app
1) Create matching folders in your project: `Core/Components`, `Core/Home`, `Extensions`, `Models`.
2) Drag the corresponding files from this repo into your Xcode project (choose “Copy items if needed”).
3) Resolve any module import or name conflicts.

Option B — Use this repo as a starting point
1) Fork this repository on GitHub.
2) Clone your fork locally and rename the app/bundle id in Xcode.
3) Replace assets and adapt views to your needs.

Signing note: For device builds, set your Team in the target’s Signing & Capabilities.


### Screenshots

You can add screenshots to make this README pop. Place image files in a `docs/images/` folder at the repository root, then update the links below. For now these are placeholders:

![Home Screen](images/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202025-10-16%20at%2019.21.10.png)
![Coin Row](images/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202025-10-16%20at%2019.21.18.png)


### Running the LearnXC demo

1) Open `LearnXC/L1 Demo/L1 Demo.xcodeproj` in Xcode
2) Select a simulator and run (⌘R)
3) Explore the demo code in `L1 Demo/` to learn SwiftUI basics


### Troubleshooting

- Build fails after copying files: Ensure targets include the new files (Target Membership in File Inspector).
- Preview not loading: Clean build folder (Shift+⌘K) and restart previews; check `PreviewProvider.swift`.
- Color not found: Confirm `Assets.xcassets` contains the expected color set names.


### Contributing

PRs and issues are welcome! If you spot typos (e.g., `Homeiew.swift`) or want to improve structure, feel free to open a PR.


### License

This project is available under the MIT License. See `LICENSE`


