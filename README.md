A simple progress indicator which will display an indicator after a delay
## Features

* A progress indicator which displays after a delay (2s by default)
* Customize the loader widget
* Customize the delay

## Usage

```dart
import 'package:delayed_progress_indicator/delayed_progress_indicator.dart';

// by default
DelayedProgressIndicator();

// customize the delay
DelayedProgressIndicator(delay: Duration(seconds: 5));

// customize the loader widget
DelayedProgressIndicator(
  loader: MyCustomIndicator(),
);
```