Flutter MCQ Quiz Widget 📝

A comprehensive, animated quiz widget package for Flutter with navigation, progress tracking, gradient backgrounds, and customizable styling

## Features ✨

- 🎯 **Multiple Choice Questions** - Support for dynamic question and answer lists
- 🧭 **Smart Navigation** - Navigate between questions with embedded controls
- 📊 **Progress Tracking** - Visual progress indicator showing current question (e.g., 2/10)
- 🚀 **Auto-Navigation** - Automatic progression after answer selection with customizable delay
- 🔒 **Answer Validation** - Require answers before allowing progression
- 📐 **Consistent Height** - Maintains consistent widget height throughout the quiz
- 🎨 **Gradient Backgrounds** - Beautiful gradient backgrounds with completion state changes
- 🎉 **Completion Feedback** - Green gradient background when quiz is completed
- ✨ **Smooth Animations** - Elegant slide and fade animations with fixed container
- 📱 **Mobile Optimized** - Responsive design with proper overflow handling

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_mcq_template: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:flutter_mcq_template/mcq_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("MCQ Quiz Example")),
        body: MCQQuiz(
          questions: [
            Question(
              text: "What language is used by Flutter?",
              options: ["Dart", "Kotlin", "Swift", "Java"],
              correctIndex: 0,
            ),
            Question(
              text: "Who developed Flutter?",
              options: ["Google", "Apple", "Meta", "Microsoft"],
              correctIndex: 0,
            ),
          ],
          onCompleted: (score) {
            debugPrint("Quiz completed! Score: $score");
          },
        ),
      ),
    );
  }
}

```

### Question Model Properties

```dart
class Question {
  final String text;          // Question text
  final List<String> options; // List of answer options
  final int correctIndex;     // Index of the correct answer

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
  });
}

```

## Configuration Options

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `backgroundColor` | `Color` | `Color(0xFF1E3A8A)` | Background color (used when gradients disabled) |
| `textColor` | `Color` | `Colors.white` | Text color for options and UI elements |
| `questionTextColor` | `Color` | `Colors.white` | Text color for question text |
| `cornerRadius` | `double` | `12` | Corner radius for rounded edges |
| `padding` | `EdgeInsetsGeometry` | `EdgeInsets.all(20)` | Internal padding of the widget |
| `showProgressIndicator` | `bool` | `true` | Show/hide progress indicator |
| `requireAnswerToProgress` | `bool` | `true` | Require answer before going to next question |
| `allowBackwardNavigation` | `bool` | `true` | Allow going back to previous questions |
| `enableAutoNavigation` | `bool` | `true` | Auto-navigate after answer selection |
| `autoNavigationDelay` | `Duration` | `Duration(milliseconds: 800)` | Delay before auto-navigation |
| `useGradientBackground` | `bool` | `true` | Enable gradient backgrounds |
| `gradientColors` | `List<Color>?` | `null` | Custom gradient colors (uses default if null) |
| `animationDuration` | `Duration` | `Duration(milliseconds: 300)` | Animation duration for transitions |
| `questionFontSize` | `double` | `20` | Font size for question text |
| `optionFontSize` | `double` | `18` | Font size for option text |

## Navigation Behavior

- **Embedded Controls**: Progress indicator is embedded within the quiz widget
- **Auto-Navigation**: Automatically moves to next question after answer selection (configurable delay)
- **Progress Indicator**: Shows current position (e.g., "2/10") in the top-left corner
- **Quiz Completion**: Background changes to green gradient and triggers `onQuizCompleted` callback


Styling & Customization 🎨

You can customize:

- **Card styling**: Background color, border radius, elevation

- **Option styling**: Text color, font size, selection color

- **Progress indicator**: Shows current position

Example:
```dart 
MCQQuiz(
  questions: myQuestions,
  onCompleted: (score) {
    print("Quiz completed! Score: $score");
  },
)
```

Callbacks 🔔
onCompleted
``` dart
onCompleted: (score) {
  print('Quiz finished! Score: $score');
  // Use _score to save or display results
}
```

## Example App

Check out the `example/` directory for a complete working example that demonstrates:

- Multiple question types
- Custom styling and gradients
- Answer handling and results display
- Responsive design patterns

To run the example:

```bash
cd example
flutter pub get
flutter run
```

## Requirements

- Flutter SDK: `>=3.0.0`
- Dart SDK: `^3.4.0`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.

## Support

If you like this package, please give it a ⭐ on [GitHub](https://github.com/DhruvSingh19/MCQ_Template_Package) and a 👍 on [pub.dev](https://pub.dev/packages/flutter_mcq_template)!

For issues and feature requests, please use the [GitHub issue tracker](https://github.com/DhruvSingh19/MCQ_Template_Package/issues).
