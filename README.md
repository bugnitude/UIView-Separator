# Overview
To add a separator line to a view is a tiresome work. UIView-Separator is an extension of UIView to add a separator line as a subview with one line of code. The default line weight is 1px.

# Example
```
// Add a 1px separator in green color to the left side of someView, and get a reference to it
let separator = someView.addSeparator(at: .left, color: UIColor.green)

// Add a 3pt separator in red color to the bottom side of someView
_ = someView.addSeparator(at: .bottom, color: UIColor.red, weight: 3.0)
```

# Requirements
- Xcode 8.0 and later
- Swift 3.0 and later

# Installation
Add UIView+Separator.swift to your project.