# Value Selector

The Value Selector package facilitates seamless synchronization between UI components and data models in Dart and Flutter applications. It allows developers to effortlessly link UI widgets to underlying data values, ensuring that changes to data are immediately reflected in the UI, and vice versa. This package abstracts the boilerplate involved in manually managing state updates, making it ideal for building highly interactive and dynamic interfaces.

## Features

- **Bi-directional Data Binding**: Automatically syncs changes between your data model and UI elements, ensuring consistency without manual intervention.
- **Widget Agnostic**: Works with any Flutter widget, providing flexibility in UI design while maintaining state synchronization.
- **Easy Integration**: Designed to be integrated with minimal setup, allowing for quick implementation into existing projects.
- **Customizable Behavior**: Offers the ability to customize how changes are handled and propagated through your application, suiting various use cases and performance considerations.
- **Performance Optimized**: Minimizes performance overhead by efficiently managing state changes only when necessary.

These features make the Value Selector package a powerful tool for developers looking to enhance the interactivity and responsiveness of their Flutter applications.

## Usage


### Example: Selectable List in a Modal Bottom Sheet3


You can configure your custom builder for selections using the `SelectValueOption` class. This allows you to specify how each option should be displayed and interacted with within your app. Below is an example of how to set up `SelectValueOption` with a list of examples.
```dart

final examples = <String>[
  'example 1',
  'example 2',
  'example 3',
  'example 4'
];

final selectValueController = SelectValueController<String>();

final selectValueOption = SelectValueOption(
  selectValueController: selectValueController,
  values: examples,
  label: 'Example',
  builder: (
    context,
    value,
    selectedValue,
    onChange,
  ) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          value,
        ),
      ),
);

    
```
How to use options 

```dart
SelectedValueItemWidget(
    selectValueOption: selectValueOption,
    onPressed: () {
      showModalBottomSheet(
        context: context,
        builder: (_) => SelectValueBuilder(
          options: selectValueOption,
        ),
      );
    },
)
```

## Usage Without Custom `builder`

If a custom `builder` function is not provided, `SelectValueOption` utilizes a default builder. This default is designed to be both practical and versatile, suitable for common use cases involving selection inputs.

Here's how to initialize `SelectValueOption` without specifying a custom `builder`:

```dart
final selectValueOption = SelectValueOption(
  selectValueController: selectValueController,
  values: examples,
  label: 'Example',
);
```
In `SelectValueOption` 
```dart
 builder = builder ??
        (
          BuildContext context,
          T value,
          T? selectedValue,
          void Function(T?)? onChanged,
        ) =>
            RadioListTile<T>(
              visualDensity: const VisualDensity(horizontal: -4.0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: value,
              groupValue: selectedValue,
              onChanged: onChanged,
              title: Text(
                value.toString(),
              ),
            );
```


### Installation

To start using this package, add it to your project as a dependency:

```yaml
dependencies:
  value_selector: ^1.0.0

