# Responsive Flutter Web

A Flutter package designed to simplify the creation of responsive web applications. With a mobile-first approach, this package combines adaptive layouts, breakpoints, a grid system, and fractional-sized boxes to provide an intuitive and easy-to-use toolset for developers.

## Features

- **Breakpoints**: Predefined breakpoints similar to CSS for better layout control.
- **Adaptive Layouts**: Easily define different layouts for mobile, tablet, and desktop sizes.
- **Responsive Grid**: A grid system that adapts columns based on the screen size.
- **Responsive Fractionally Sized Box**: Size your widgets based on screen size fractions.

## Installation

To use this package, add `next_web` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  next_web: ^0.1.0

Usage
Adaptive Layouts:


AdaptiveLayout(
  mobile: MobileLayout(),
  tablet: TabletLayout(),
  desktop: DesktopLayout(),
)
Responsive Grid:


ResponsiveGrid(
  itemBuilder: (context, index) => GridItemWidget(),
  xs: 1,
  sm: 2,
  md: 3,
  lg: 4,
)
Responsive Fractionally Sized Box:


ResponsiveFractionallySizedBox(
  xsFraction: 0.9,
  smFraction: 0.6,
  child: YourWidget(),
)
... (more examples and details can be added) ...

Feedback & Contributions
Feel free to open an issue on our GitHub repository if you encounter problems or have suggestions for future versions. Contributions are also welcomed via pull requests.

License
This package is licensed under the MIT License. See the LICENSE file for more information.´´´

