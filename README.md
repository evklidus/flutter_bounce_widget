Package for adding bounce animation to your widget


---

## Usage

```dart
BounceWidget(
  child: Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'Example',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    ),
  ),
  onPressed: () {
    log('Pressed !)');
  },
)
```

## Example in action

![Alt Text](https://s10.gifyu.com/images/flutter_bounce_widget_example.gif)

## Maintainers

- [Erik Minasov](https://github.com/evklidus)