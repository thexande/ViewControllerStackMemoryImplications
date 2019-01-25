import UIKit

final class AppCoordinator {

    var root = LoadedViewController()
    private var stack = ClassStack<UIViewController>()

    init() {

        stack.push(root)

        let intArray: [Int] = Array(0...1000)

        let views: [UIViewController] = intArray.map { i in
            let view = PresentedViewController()
            view.title = String(i)
            return UINavigationController(rootViewController: view)
        }

        root.onLoaded = { [weak self] in
            DispatchQueue.main.async {
                self?.presentViewControllers(views)
            }
        }
    }

    func presentViewControllers(_ viewControllers: [UIViewController],
                                completion: ((Bool) -> Void)? = nil) {

        var views = viewControllers

        guard views.isEmpty == false else {
            completion?(false)
            return
        }

        let view = views.removeFirst()
        stack.peek()?.present(view, animated: true) { [weak self] in

            self?.stack.push(view)

            DispatchQueue.main.async {
                self?.presentViewControllers(views) { completed in
                    if completed {
                        return
                    }
                }
            }
        }
    }
}
