# 🥞 Memory implications for using a `struct` vs. `class` based stack implementation

![](./memory_present.gif)

## The Purpose

In order to test this, I have created an app to present 1000 view controllers in succession utilizing a stack.

Which of these two Stack implementations requries more memory?

### Struct
```swift
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

```

### Class
```swift
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
```

## Resuts
Class based stack implementation requires 1 more MB than the Struct based implementation. 🤣
