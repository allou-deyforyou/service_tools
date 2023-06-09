# service_tools

A set of useful widget tools that are missing from the flutter framework.

## [runService]

The [runService] widget allows for grouping of multiple slivers together such that they can be returned as a single widget.
For instance when one wants to wrap a few slivers with some padding or an inherited widget.


### Example
```dart

class MyService extends FlutterService {

    Future<void> production() {
        /// configure production service
    }

    Future<void> development() {
        /// configure development service
    }
}

runService(MyService())

```
