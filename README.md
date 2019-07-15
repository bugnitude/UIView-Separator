# Overview
To add a separator line to a view is a tiresome work. UIView-Separator is a Swift extension of UIView to add a separator line as a subview with one line of code. The default line weight is 1px.

# Example
```
// Add a 1px separator in green color to the left side of someView
someView.addSeparator(at: .left, color: .green)

// Add a 3pt separator in red color to the bottom side of someView
someView.addSeparator(at: .bottom, color: .red, weight: 3.0)
```

# Requirements
* iOS 9.0+
* Swift 4.0+
* Xcode 9.0+

# Installation
Add UIView+Separator.swift to your project.
