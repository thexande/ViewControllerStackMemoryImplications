import UIKit

final class PresentedViewController: UIViewController {
    override func viewDidLoad() {

        let random = {
            CGFloat(arc4random_uniform(255)) / 255.0
        }

        view.backgroundColor = UIColor(red: random(), green: random(), blue: random(), alpha: 1)
    }
}
