struct StructStack<T> {

    private var stack: [T] = []

    mutating func push(_ item: T) {
        stack.append(item)
    }

    mutating func pop() -> T {
        return stack.removeLast()
    }

    func peek() -> T? {
        return stack.last
    }
}
