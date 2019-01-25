import UIKit

final class LoadedViewController: UIViewController {

    var onLoaded: (() -> Void)?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onLoaded?()
    }
}
