# Overview
To add a separator line to a view is a tiresome work. UIView-Separator is an extension of UIView to add a separator line as a subview with one line of code. The default line weight is 1px.

# Example
The example below is assumed that `someView` is a view to add separators.

```
// If you need a reference to a separator
let separator = someView.addSeparator(at: .left, color: UIColor.green)

// If you don't need a reference to a separator
_ = someView.addSeparator(at: .bottom, color: UIColor.red)
```
