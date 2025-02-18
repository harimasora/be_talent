# be_talent

##  Table of Contents

- [ Overview](#-overview)
- [ Screenshots](#-screenschots)
- [ Features](#-features)
- [ Project Structure](#-project-structure)
  - [ Project Index](#-project-index)
- [ Getting Started](#-getting-started)
  - [ Prerequisites](#-prerequisites)
  - [ Installation](#-installation)
  - [ Usage](#-usage)

---

##  Overview

**be_talent** is a project developed using Flutter as a technical challenge for [BeTalent](https://betalent.tech/)'s hiring process. The details of the challenge can be found [here](https://github.com/BeMobile/teste-pratico-mobile).

---

## Screenshots

<img width="386" alt="Captura de Tela 2025-02-17 às 21 47 37" src="https://github.com/user-attachments/assets/37344fa8-916b-4ea9-a79b-79ba70cb67ac" />

---

##  Features

|      | Feature         | Summary       |
| :--- | :---:           | :---          |
| ⚙️  | **Architecture**  | <ul><li>Modular architecture with clear separation of concerns.</li><li>Follows MVVM design principles.</li></ul> |
| 🔩 | **Code Quality**  | <ul><li>Utilizes custom lint rules from the `flutter_lints` package for improved code quality.</li><li>Enforces linting rules to maintain code consistency. |
| 🧩 | **Modularity**    | <ul><li>Highly modular codebase with clear separation of functionalities.</li><li>Encourages reusability and maintainability through modular design.</li><li>`ds` folder container design system widgets.</li></ul> |
| ⚡️  | **Performance**   | <ul><li>Utilizes `CustomScrollView` and `SliverList.builder` for best performance.</li><li>Utilizes const widgets whenever possible to minimize redraws.</li><li>Handles loading and error state accordingly.</li><li>Utilizes best practices for performance improvements.</li></ul> |
| 📦 | **Dependencies**  | <ul><li>State management using [riverpod](https://riverpod.dev/).</li><li>Display SVG graphics using [flutter_svg](https://pub.dev/packages/flutter_svg).</li><li>Code generation using [build_runner](https://pub.dev/packages/build_runner).</li></ul> |

---

##  Project Structure

```sh
└── be_talent/
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   ├── build.gradle
    │   ├── gradle
    │   ├── gradle.properties
    │   └── settings.gradle
    ├── assets
    │   ├── icons
    │   └── images
    ├── ios
    │   ├── .gitignore
    │   ├── Flutter
    │   ├── Runner
    │   ├── Runner.xcodeproj
    │   ├── Runner.xcworkspace
    │   └── RunnerTests
    ├── lib
    │   ├── common
    │   ├── ds
    │   ├── employees
    │   └── main.dart
    ├── pubspec.lock
    ├── pubspec.yaml
    └── web
        ├── favicon.png
        ├── icons
        ├── index.html
        └── manifest.json
```


###  Project Index
<details open>
  <summary><b><code>BE_TALENT</code></b></summary>
  <details> <!-- __root__ Submodule -->
    <summary><b>__root__</b></summary>
    <blockquote>
      <table>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/analysis_options.yaml'>analysis_options.yaml</a></b></td>
        <td>- Improve code quality by incorporating custom lint rules from the `flutter_lints` package<br>- Ignore specific errors and enforce linting rules using the `analysis_options.yaml` file<br>- This setup enhances the overall architecture by promoting consistent coding standards and identifying potential issues early in the development process.</td>
      </tr>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/pubspec.yaml'>pubspec.yaml</a></b></td>
        <td>- Manages project dependencies and configurations for a Flutter app<br>- Handles packages like dio, flutter_hooks, and riverpod for network requests, state management, and dependency injection<br>- Facilitates code generation with freezed and json_serializable for efficient development.</td>
      </tr>
      </table>
    </blockquote>
  </details>
  <details> <!-- android Submodule -->
    <summary><b>android</b></summary>
    <blockquote>
      <table>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/android/settings.gradle'>settings.gradle</a></b></td>
        <td>Configure plugin management and include necessary plugins for Flutter and Android projects in the settings.gradle file to ensure proper integration and functionality within the codebase architecture.</td>
      </tr>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/android/build.gradle'>build.gradle</a></b></td>
        <td>Configure project repositories and build directories for Android projects.</td>
      </tr>
      </table>
      <details>
        <summary><b>app</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/android/app/build.gradle'>build.gradle</a></b></td>
            <td>- Configure Android application settings and dependencies for the project, ensuring compatibility with Flutter and Kotlin<br>- Set up versioning, namespaces, and build configurations to support the development and deployment of the mobile application.</td>
          </tr>
          </table>
          <details>
            <summary><b>src</b></summary>
            <blockquote>
              <details>
                <summary><b>main</b></summary>
                <blockquote>
                  <details>
                    <summary><b>kotlin</b></summary>
                    <blockquote>
                      <details>
                        <summary><b>com</b></summary>
                        <blockquote>
                          <details>
                            <summary><b>example</b></summary>
                            <blockquote>
                              <details>
                                <summary><b>be_talent</b></summary>
                                <blockquote>
                                  <table>
                                  <tr>
                                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/android/app/src/main/kotlin/com/example/be_talent/MainActivity.kt'>MainActivity.kt</a></b></td>
                                    <td>- Enables Flutter functionality in the Android app by extending FlutterActivity in the MainActivity.kt file<br>- This integration allows seamless communication between the Flutter framework and the Android platform, enhancing the user experience and enabling cross-platform development capabilities within the project architecture.</td>
                                  </tr>
                                  </table>
                                </blockquote>
                              </details>
                            </blockquote>
                          </details>
                        </blockquote>
                      </details>
                    </blockquote>
                  </details>
                </blockquote>
              </details>
            </blockquote>
          </details>
        </blockquote>
      </details>
    </blockquote>
  </details>
  <details> <!-- ios Submodule -->
    <summary><b>ios</b></summary>
    <blockquote>
      <details>
        <summary><b>Runner.xcodeproj</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcodeproj/project.pbxproj'>project.pbxproj</a></b></td>
            <td>- The provided code file, located at ios/Runner.xcodeproj/project.pbxproj, plays a crucial role in managing build configurations and resources within the project architecture<br>- It orchestrates the inclusion of various source files, such as GeneratedPluginRegistrant.m, RunnerTests.swift, AppDelegate.swift, and resources like Main.storyboard and AppFrameworkInfo.plist, ensuring their integration into the project build process<br>- This file acts as a central hub for defining the project's structure and dependencies, facilitating the seamless compilation and deployment of the iOS application.</td>
          </tr>
          </table>
          <details>
            <summary><b>project.xcworkspace</b></summary>
            <blockquote>
              <table>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata'>contents.xcworkspacedata</a></b></td>
                <td>- Facilitates workspace configuration for the iOS project by defining the project structure and dependencies<br>- This file plays a crucial role in organizing and managing the various components of the codebase within the Xcode workspace.</td>
              </tr>
              </table>
              <details>
                <summary><b>xcshareddata</b></summary>
                <blockquote>
                  <table>
                  <tr>
                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                    <td>Enables the IDE to compute Mac 32-bit warning in the Xcode project workspace.</td>
                  </tr>
                  <tr>
                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
                    <td>Enables disabling of previews in the Xcode workspace settings to improve project performance and focus on development tasks.</td>
                  </tr>
                  </table>
                </blockquote>
              </details>
            </blockquote>
          </details>
          <details>
            <summary><b>xcshareddata</b></summary>
            <blockquote>
              <details>
                <summary><b>xcschemes</b></summary>
                <blockquote>
                  <table>
                  <tr>
                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme'>Runner.xcscheme</a></b></td>
                    <td>- Defines Xcode scheme configurations for building, testing, profiling, analyzing, and archiving the iOS project<br>- Specifies build actions, test configurations, launch settings, profiling options, analysis, and archiving configurations<br>- This file plays a crucial role in orchestrating the various development and deployment tasks within the project's Xcode environment.</td>
                  </tr>
                  </table>
                </blockquote>
              </details>
            </blockquote>
          </details>
        </blockquote>
      </details>
      <details>
        <summary><b>Flutter</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Flutter/AppFrameworkInfo.plist'>AppFrameworkInfo.plist</a></b></td>
            <td>- Defines essential metadata for the Flutter app, such as version, identifier, and minimum OS requirements<br>- This file plays a crucial role in configuring the app's properties and ensuring compatibility with the target operating system.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Flutter/Release.xcconfig'>Release.xcconfig</a></b></td>
            <td>Integrates generated configurations into the iOS project build process, enhancing project structure and ensuring seamless compatibility with Flutter.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Flutter/Debug.xcconfig'>Debug.xcconfig</a></b></td>
            <td>Integrates generated configurations into the iOS project structure, enhancing build settings for improved development workflows.</td>
          </tr>
          </table>
        </blockquote>
      </details>
      <details>
        <summary><b>RunnerTests</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/RunnerTests/RunnerTests.swift'>RunnerTests.swift</a></b></td>
            <td>- Implements XCTest for testing Flutter code in the Runner application<br>- Provides a structured approach to adding and running tests within the iOS project<br>- Ensures the reliability and functionality of the Flutter codebase through automated testing.</td>
          </tr>
          </table>
        </blockquote>
      </details>
      <details>
        <summary><b>Runner.xcworkspace</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcworkspace/contents.xcworkspacedata'>contents.xcworkspacedata</a></b></td>
            <td>Facilitates linking the Runner.xcodeproj file within the iOS workspace, ensuring seamless integration and organization of project resources.</td>
          </tr>
          </table>
          <details>
            <summary><b>xcshareddata</b></summary>
            <blockquote>
              <table>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist'>IDEWorkspaceChecks.plist</a></b></td>
                <td>Enables IDE to compute Mac 32-bit warning in the project's workspace configuration.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings'>WorkspaceSettings.xcsettings</a></b></td>
                <td>- Enables disabling of previews in the iOS Runner project by setting the PreviewsEnabled key to false in the WorkspaceSettings.xcsettings file<br>- This configuration helps streamline the development process by turning off unnecessary previews, enhancing focus on essential tasks within the project architecture.</td>
              </tr>
              </table>
            </blockquote>
          </details>
        </blockquote>
      </details>
      <details>
        <summary><b>Runner</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Runner-Bridging-Header.h'>Runner-Bridging-Header.h</a></b></td>
            <td>Facilitates plugin registration in the iOS Runner project by importing the GeneratedPluginRegistrant header.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/AppDelegate.swift'>AppDelegate.swift</a></b></td>
            <td>- Registers generated plugins in the Flutter application during the launch process<br>- The code in AppDelegate.swift ensures proper initialization and integration of plugins with the Flutter framework, enhancing the functionality and features of the application.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Info.plist'>Info.plist</a></b></td>
            <td>- Defines essential app configurations such as display name, bundle identifier, and version information<br>- Specifies supported interface orientations and launch screen details<br>- Ensures compatibility with iPhone and iPad devices.</td>
          </tr>
          </table>
          <details>
            <summary><b>Base.lproj</b></summary>
            <blockquote>
              <table>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Base.lproj/Main.storyboard'>Main.storyboard</a></b></td>
                <td>Defines the initial view controller for the Flutter module in the iOS app, specifying layout guides and view properties.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Base.lproj/LaunchScreen.storyboard'>LaunchScreen.storyboard</a></b></td>
                <td>- Defines the launch screen layout for the iOS app, specifying the initial view controller and its components<br>- It sets up the background color, image view, and constraints for positioning elements<br>- This file is crucial for presenting a visually appealing and consistent launch experience to users.</td>
              </tr>
              </table>
            </blockquote>
          </details>
          <details>
            <summary><b>Assets.xcassets</b></summary>
            <blockquote>
              <details>
                <summary><b>AppIcon.appiconset</b></summary>
                <blockquote>
                  <table>
                  <tr>
                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json'>Contents.json</a></b></td>
                    <td>- Defines the various sizes and scales for app icons across different iOS devices<br>- Organizes the icon assets in a structured manner within the project architecture, ensuring proper display on iPhones, iPads, and for marketing purposes<br>- Maintains consistency and clarity in managing app icon assets for a seamless user experience.</td>
                  </tr>
                  </table>
                </blockquote>
              </details>
              <details>
                <summary><b>LaunchImage.imageset</b></summary>
                <blockquote>
                  <table>
                  <tr>
                    <td><b><a href='https://github.com/harimasora/be_talent/blob/master/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json'>Contents.json</a></b></td>
                    <td>Define launch images for different screen resolutions in the iOS project's asset catalog.</td>
                  </tr>
                  </table>
                </blockquote>
              </details>
            </blockquote>
          </details>
        </blockquote>
      </details>
    </blockquote>
  </details>
  <details> <!-- lib Submodule -->
    <summary><b>lib</b></summary>
    <blockquote>
      <table>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/main.dart'>main.dart</a></b></td>
        <td>Initialize the app with a ProviderScope, setting the theme and home page to EmployeesPage.</td>
      </tr>
      </table>
      <details>
        <summary><b>ds</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/static_colors.dart'>static_colors.dart</a></b></td>
            <td>Defines static color constants for the project's UI theme.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/spacings.dart'>spacings.dart</a></b></td>
            <td>Define consistent spacing values for the project's UI components using multiples of a base grid size.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/horizontal_space.dart'>horizontal_space.dart</a></b></td>
            <td>Defines a reusable Flutter widget for creating horizontal spacing within the project's UI components.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/text.dart'>text.dart</a></b></td>
            <td>- Define text styles for headings and footnotes in a Flutter project<br>- The code in the provided file sets up typography styles for different text elements like headings and footnotes, allowing for consistent visual presentation across the app.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/skeleton.dart'>skeleton.dart</a></b></td>
            <td>- Define a reusable Flutter widget, Skeleton, for displaying loading placeholders with customizable dimensions and shapes<br>- The widget supports rounded corners and circular shapes, enhancing the user experience during data fetching.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/bt_click_region.dart'>bt_click_region.dart</a></b></td>
            <td>- Enables detection of clicks on the screen using a transparent widget that covers a child<br>- Supports click responses, hover effects, and focus management<br>- Integrates with Flutter's mouse and keyboard interactions for enhanced user experience.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/vertical_space.dart'>vertical_space.dart</a></b></td>
            <td>- Defines a reusable Flutter widget for creating vertical spacing within the app layout<br>- The VerticalSpace class encapsulates a specific height value, allowing developers to easily add vertical gaps between UI elements<br>- This component enhances code readability and maintainability by promoting consistent spacing throughout the project.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/bt_actionable_item.dart'>bt_actionable_item.dart</a></b></td>
            <td>Implements a customizable actionable item widget for Flutter apps, facilitating user interaction with a variety of properties like onPressed action, child widget, and analytics tracking.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/ds/bt_expansion_list_tile.dart'>bt_expansion_list_tile.dart</a></b></td>
            <td>- Implements expandable list tiles with headers and content toggling based on user interaction<br>- Enhances user experience by providing a collapsible view of content within the app interface.</td>
          </tr>
          </table>
        </blockquote>
      </details>
      <details>
        <summary><b>common</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/common/use_listen_to_focus_change.dart'>use_listen_to_focus_change.dart</a></b></td>
            <td>- Enables listening to focus changes on a specified node within the Flutter application<br>- Tracks the focus state of the node and updates it accordingly<br>- This functionality enhances user interaction and accessibility features by providing real-time feedback on focus changes.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/common/dio_provider.dart'>dio_provider.dart</a></b></td>
            <td>Defines a Riverpod provider for Dio HTTP client, setting a base URL for API requests.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/common/use_map_focus_to_value.dart'>use_map_focus_to_value.dart</a></b></td>
            <td>- Enables mapping focus state to values for a given node in the Flutter project<br>- Uses provided functions to determine the value based on focus status<br>- This function enhances user interaction by dynamically updating UI elements based on focus changes.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/common/dio_provider.g.dart'>dio_provider.g.dart</a></b></td>
            <td>- Generates a Riverpod provider for Dio HTTP client, ensuring its proper management and disposal<br>- This code file plays a crucial role in the project's architecture by facilitating the injection of Dio instances across the codebase.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/common/use_focus_node_or_default.dart'>use_focus_node_or_default.dart</a></b></td>
            <td>- Enables managing focus nodes efficiently in Flutter by providing a hook to use a specified focus node or create a new one if none is provided<br>- This code file enhances the codebase architecture by simplifying focus node handling for UI elements.</td>
          </tr>
          </table>
        </blockquote>
      </details>
      <details>
        <summary><b>employees</b></summary>
        <blockquote>
          <table>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_notifier.dart'>employees_notifier.dart</a></b></td>
            <td>- Manages employee data and state, interacting with the employees API and updating the UI accordingly<br>- Refreshes data and updates filter settings.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_state.freezed.dart'>employees_state.freezed.dart</a></b></td>
            <td>Generates immutable state classes for managing employee data within the project architecture.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_api.dart'>employees_api.dart</a></b></td>
            <td>- Handles fetching a list of employees using Riverpod for state management and Dio for network requests<br>- The function retrieves employee data from an API endpoint and maps it to Employee objects<br>- This file serves as the bridge between the UI layer and the backend, facilitating seamless data retrieval for employee-related operations in the project.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_page.dart'>employees_page.dart</a></b></td>
            <td>- Improve the user interface by displaying a list of employees with a search bar on the Employees Page<br>- The page layout includes a custom app bar and a scrollable list of employees, enhancing the overall user experience within the project architecture.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_api.g.dart'>employees_api.g.dart</a></b></td>
            <td>- Generates a provider for fetching a list of employees<br>- The code file `employees_api.g.dart` is responsible for creating an auto-dispose future provider that supplies a list of employees<br>- This provider is a crucial component in the project's architecture for managing employee data retrieval.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_state.dart'>employees_state.dart</a></b></td>
            <td>- Defines the state for employees in the application, including a list of employees and a filter subject<br>- It provides a method to filter employees based on the filter subject, returning a list of employees that match the criteria<br>- This file plays a crucial role in managing and filtering employee data within the project architecture.</td>
          </tr>
          <tr>
            <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/employees_notifier.g.dart'>employees_notifier.g.dart</a></b></td>
            <td>- Generates a provider for managing employee state in the codebase architecture<br>- The code file lib/employees/employees_notifier.g.dart is responsible for creating an AutoDisposeNotifierProvider that handles state management for employees<br>- This provider is crucial for efficiently managing and updating employee-related data within the project.</td>
          </tr>
          </table>
          <details>
            <summary><b>widgets</b></summary>
            <blockquote>
              <table>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/widgets/sliver_app_bar.dart'>sliver_app_bar.dart</a></b></td>
                <td>- Implements a customizable SliverAppBar for the BeTalent project, displaying user profile and notification buttons with dynamic content<br>- The widget adjusts its size based on user interaction, maintaining a consistent visual presence in the app's UI.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/widgets/search_bar.dart'>search_bar.dart</a></b></td>
                <td>- Improve user experience by implementing an interactive search bar widget that allows users to search and clear input easily<br>- The widget integrates focus management, dynamic button display, and clear functionality, enhancing the overall usability of the employee search feature within the application.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/widgets/notification_button.dart'>notification_button.dart</a></b></td>
                <td>- Implements a notification button widget that displays a bell icon and optional text<br>- The widget is actionable and triggers an event when pressed<br>- It enhances user interaction within the application by providing visual cues for notifications.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/widgets/profile_button.dart'>profile_button.dart</a></b></td>
                <td>- Creates a profile button widget displaying initials within a circle avatar<br>- The widget utilizes predefined colors and text styles for consistency across the application<br>- This component enhances the user interface by providing a visually appealing and functional element for accessing user profiles.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/widgets/employee_list_view.dart'>employee_list_view.dart</a></b></td>
                <td>- Implements an interactive Employee List View with loading, error handling, and expansion functionality<br>- Displays employee details in a structured layout, allowing users to expand for more information<br>- Enhances user experience by providing visual feedback during loading and error states.</td>
              </tr>
              </table>
            </blockquote>
          </details>
          <details>
            <summary><b>models</b></summary>
            <blockquote>
              <table>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/models/employee.freezed.dart'>employee.freezed.dart</a></b></td>
                <td>Define Employee model serialization and deserialization using Freezed and JsonSerializable for the project's data layer.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/models/employee.dart'>employee.dart</a></b></td>
                <td>- Defines an Employee model with essential attributes and methods for formatting data<br>- It includes fields for ID, name, job, admission date, phone, and image<br>- The model provides functions to format the admission date and phone number<br>- The file also includes methods for JSON serialization and deserialization.</td>
              </tr>
              <tr>
                <td><b><a href='https://github.com/harimasora/be_talent/blob/master/lib/employees/models/employee.g.dart'>employee.g.dart</a></b></td>
                <td>- Generates JSON serialization methods for the Employee model, facilitating conversion between JSON and Dart objects<br>- This code file plays a crucial role in seamlessly transforming Employee data to and from JSON format within the project's architecture.</td>
              </tr>
              </table>
            </blockquote>
          </details>
        </blockquote>
      </details>
    </blockquote>
  </details>
  <details> <!-- web Submodule -->
    <summary><b>web</b></summary>
    <blockquote>
      <table>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/web/manifest.json'>manifest.json</a></b></td>
        <td>- Define the web app's appearance and behavior by configuring its manifest.json file<br>- Specify essential details like the app's name, start URL, display mode, and icon properties<br>- Ensure a seamless user experience with correct orientation and color settings.</td>
      </tr>
      <tr>
        <td><b><a href='https://github.com/harimasora/be_talent/blob/master/web/index.html'>index.html</a></b></td>
        <td>- The `index.html` file sets the base path and initializes the Flutter project for web deployment<br>- It configures meta tags, icons, and scripts necessary for the web app<br>- This file plays a crucial role in defining the starting point and behavior of the Flutter project when accessed through a web browser.</td>
      </tr>
      </table>
    </blockquote>
  </details>
</details>

---
##  Getting Started

###  Prerequisites

Before getting started with be_talent, ensure your runtime environment meets the following requirements:

- **Programming Language:** Dart
- **Programming Framework:** Flutter
- **Package Manager:** Pub


###  Installation

Install be_talent by following these steps:

1. Clone the be_talent repository:
```sh
❯ git clone https://github.com/harimasora/be_talent
```

2. Navigate to the project directory:
```sh
❯ cd be_talent
```

3. Install the project dependencies:

```sh
❯ flutter pub get
```

###  Usage
Run be_talent using the following command:
**Using `flutter`** &nbsp; [<img align="center" src="https://img.shields.io/badge/Dart-0175C2.svg?style={badge_style}&logo=dart&logoColor=white" />](https://dart.dev/)

```sh
❯ flutter run
```

---

