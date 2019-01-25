final class ClassStack<T> {

    private var stack: [T] = []

    func push(_ item: T) {
        stack.append(item)
    }

    func pop() -> T {
        return stack.removeLast()
    }

    func peek() -> T? {
        return stack.last
    }
}
