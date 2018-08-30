//: ## Infinite Animation
//: Replicate the animation attached:
//:
//: ![Animation](InfiniteAnimation.gif)
//:
//: ## Assumptions
//: You are given a container view with the square views already laid out for you, it's (container) subviews are nothing else but the squares, is up to the candidate to create the animation, the duration of animation and size of subviews are trivial.
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    private let containerView: UIView = {
        let colors: [UIColor] = [.red, .blue, .yellow, .green]
        
        let view = UIView()
        
        for (index, color) in colors.enumerated() {
            let square = UIView()
            square.frame = CGRect(x: index*50, y: 10, width: 50, height: 50)
            square.backgroundColor = color
            view.addSubview(square)
        }
        
        return view
    }()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .darkGray
        
        containerView.frame = CGRect(x: 87, y: 200, width: 200, height: 60)
        view.addSubview(containerView)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
