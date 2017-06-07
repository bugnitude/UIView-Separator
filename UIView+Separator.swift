import UIKit

extension UIView {
	
	enum SeparatorPosition {
		case top
		case bottom
		case left
		case right
	}
	
	func addSeparator(at position: SeparatorPosition, color: UIColor, weight: CGFloat = 1.0 / UIScreen.main.scale) -> UIView {
		let view = UIView()
		view.backgroundColor = color
		view.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(view)
		
		var constraints = [NSLayoutConstraint]()
		let views = ["view": view]
		let metrics = ["weight": weight]
		switch position {
		case .top:
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: [], metrics: nil, views: views))
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|[view(weight)]", options: [], metrics: metrics, views: views))
		case .bottom:
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: [], metrics: nil, views: views))
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:[view(weight)]|", options: [], metrics: metrics, views: views))
		case .left:
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|[view(weight)]", options: [], metrics: metrics, views: views))
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: [], metrics: nil, views: views))
		case .right:
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:[view(weight)]|", options: [], metrics: metrics, views: views))
			constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: [], metrics: nil, views: views))
		}
		NSLayoutConstraint.activate(constraints)

		return view
	}
	
}
