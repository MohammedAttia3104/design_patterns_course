# Factory Pattern

## 📚 Table of Contents
- [What is the Factory Pattern?](#what-is-the-factory-pattern)
- [When to Use?](#when-to-use)
- [Why Use Factory Pattern?](#why-use-factory-pattern)
- [Pros and Cons](#pros-and-cons)
- [Relationship with Other Patterns](#relationship-with-other-patterns)
- [Real-World Examples](#real-world-examples)
- [Flutter Applications](#flutter-applications)
- [Code Examples Comparison](#code-examples-comparison)
  - [Naive Solution](#naive-solution)
  - [Enhanced Solution (Factory Pattern)](#enhanced-solution-factory-pattern)
  - [Detailed Comparison](#detailed-comparison)
- [UML Diagrams](#uml-diagrams)
- [Summary](#summary)

---

## 🎯 What is the Factory Pattern?

The **Factory Pattern** is a creational design pattern that provides an interface for creating objects in a superclass, but allows subclasses or specialized factory classes to alter the type of objects that will be created. Instead of calling a constructor directly using the `new` operator, you call a factory method to create objects.

### Key Components:
1. **Product Interface/Abstract Class**: Defines the common interface for all objects the factory can create
2. **Concrete Products**: Different implementations of the product interface
3. **Factory**: Contains the logic to decide which concrete product to create
4. **Client**: Uses the factory to get products without knowing their concrete classes

---

## 📅 When to Use?

Use the Factory Pattern when:

1. **You don't know beforehand the exact types and dependencies of the objects your code should work with**
   - The factory can determine at runtime which class to instantiate

2. **You want to provide users of your library/framework with a way to extend its internal components**
   - Users can extend the product interface and provide their own implementations

3. **You want to save system resources by reusing existing objects instead of rebuilding them each time**
   - Factories can implement object pooling or caching

4. **The object creation process is complex and should be centralized**
   - Multiple initialization steps, configuration, or conditional logic

5. **You want to decouple object creation from object usage**
   - The client code doesn't need to know the concrete class names

6. **You need to manage and maintain object creation in one place**
   - Easy to modify creation logic without changing client code

---

## 🤔 Why Use Factory Pattern?

### Benefits:

1. **Single Responsibility Principle**
   - Object creation code is moved to one place, making it easier to maintain

2. **Open/Closed Principle**
   - You can introduce new types of products without breaking existing client code

3. **Loose Coupling**
   - Client code works with abstract interfaces, not concrete classes

4. **Encapsulation**
   - Complex object creation logic is hidden from clients

5. **Flexibility**
   - Easy to change which objects are created at runtime

6. **Centralized Control**
   - All creation logic in one place makes debugging and testing easier

---

## ⚖️ Pros and Cons

### ✅ Pros:

1. **Avoids tight coupling** between creator and concrete products
2. **Single Responsibility Principle**: Creation code is in one place
3. **Open/Closed Principle**: Can introduce new product types without breaking existing code
4. **More flexible** than direct object creation
5. **Easier to test**: Can mock factory to return test objects
6. **Centralized object creation** makes maintenance easier
7. **Can implement object pooling** and caching strategies
8. **Simplifies client code** - no need for complex instantiation logic

### ❌ Cons:

1. **Increased complexity**: More classes and interfaces to manage
2. **Indirection**: One extra layer between client and concrete classes
3. **Can be overkill** for simple object creation
4. **Learning curve** for developers unfamiliar with the pattern
5. **May require updating factory** when adding new product types (depending on implementation)

---

## 🔗 Relationship with Other Patterns

### 1. **Abstract Factory Pattern**
   - **Relationship**: Factory Pattern is a simplified version
   - **Difference**: Abstract Factory creates families of related objects, Factory creates single objects
   - **Usage Together**: Abstract Factory can use Factory Pattern internally

### 2. **Builder Pattern**
   - **Relationship**: Both are creational patterns
   - **Difference**: Builder focuses on constructing complex objects step-by-step, Factory returns objects immediately
   - **Usage Together**: Factory can return a Builder for complex object construction

### 3. **Prototype Pattern**
   - **Relationship**: Both create objects, but differently
   - **Difference**: Prototype clones existing objects, Factory creates new ones
   - **Alternative**: Can be used instead of Factory when cloning is more efficient

### 4. **Singleton Pattern**
   - **Relationship**: Often used together
   - **Usage Together**: The Factory itself is often implemented as a Singleton

### 5. **Strategy Pattern**
   - **Relationship**: Both use polymorphism
   - **Difference**: Strategy focuses on algorithms, Factory on object creation
   - **Usage Together**: Factory can create different Strategy objects

### 6. **Template Method Pattern**
   - **Relationship**: Factory Method is often a step in Template Method
   - **Usage Together**: Template Method can use Factory Method for object creation steps

### 7. **Dependency Injection**
   - **Relationship**: Both decouple object creation
   - **Difference**: DI provides dependencies from outside, Factory creates them internally
   - **Alternative**: DI containers can replace Factory Pattern in some scenarios

---

## 🌍 Real-World Examples

### 1. **Vehicle Manufacturing Plant**
   - **Scenario**: A car manufacturing plant produces different types of vehicles
   - **Factory**: Vehicle factory determines whether to create a sedan, SUV, or truck based on order
   - **Products**: Different vehicle types with common interface (drive, stop, refuel)
   - **Benefit**: Can add new vehicle types without changing the assembly line process

### 2. **Restaurant Kitchen**
   - **Scenario**: Kitchen receives orders and prepares different dishes
   - **Factory**: Kitchen acts as factory, creating dishes based on menu orders
   - **Products**: Different dishes (pizza, pasta, salad) with common interface (prepare, serve)
   - **Benefit**: Can add new dishes without changing order processing system

### 3. **Document Generator**
   - **Scenario**: Application needs to create different document formats
   - **Factory**: Document factory creates PDF, Word, or Excel documents based on user choice
   - **Products**: Different document types with common interface (create, save, export)
   - **Benefit**: Easy to add new document formats

### 4. **Payment Processing System**
   - **Scenario**: E-commerce platform supports multiple payment methods
   - **Factory**: Payment factory creates appropriate payment processor (credit card, PayPal, crypto)
   - **Products**: Different payment processors with common interface (authorize, charge, refund)
   - **Benefit**: Easy to integrate new payment methods

### 5. **Logistics Company**
   - **Scenario**: Company delivers packages using different transport methods
   - **Factory**: Transport factory determines whether to use truck, ship, or plane based on destination/urgency
   - **Products**: Different transport types with common interface (deliver, track, estimate)
   - **Benefit**: Can optimize transport method without changing delivery system (this is our example!)

### 6. **Database Connection Manager**
   - **Scenario**: Application needs to connect to different databases
   - **Factory**: Connection factory creates MySQL, PostgreSQL, or MongoDB connections
   - **Products**: Different database connections with common interface (connect, query, disconnect)
   - **Benefit**: Switch databases without changing data access code

---

## 📱 Flutter Applications

### 1. **Theme Factory**
```dart
abstract class AppTheme {
  ThemeData getThemeData();
}

class LightTheme implements AppTheme {
  @override
  ThemeData getThemeData() => ThemeData.light();
}

class DarkTheme implements AppTheme {
  @override
  ThemeData getThemeData() => ThemeData.dark();
}

class ThemeFactory {
  static AppTheme createTheme(bool isDark) {
    return isDark ? DarkTheme() : LightTheme();
  }
}

// Usage in Flutter app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeFactory.createTheme(true);
    return MaterialApp(
      theme: theme.getThemeData(),
      home: HomeScreen(),
    );
  }
}
```

### 2. **Widget Factory for Different Platforms**
```dart
abstract class PlatformButton {
  Widget build(BuildContext context, VoidCallback onPressed, String text);
}

class AndroidButton implements PlatformButton {
  @override
  Widget build(BuildContext context, VoidCallback onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class IOSButton implements PlatformButton {
  @override
  Widget build(BuildContext context, VoidCallback onPressed, String text) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class PlatformButtonFactory {
  static PlatformButton createButton() {
    if (Platform.isIOS) {
      return IOSButton();
    }
    return AndroidButton();
  }
}
```

### 3. **API Client Factory**
```dart
abstract class ApiClient {
  Future<Response> get(String endpoint);
  Future<Response> post(String endpoint, Map<String, dynamic> data);
}

class RestApiClient implements ApiClient {
  final Dio _dio = Dio();
  
  @override
  Future<Response> get(String endpoint) => _dio.get(endpoint);
  
  @override
  Future<Response> post(String endpoint, Map<String, dynamic> data) {
    return _dio.post(endpoint, data: data);
  }
}

class GraphQLApiClient implements ApiClient {
  final GraphQLClient _client = GraphQLClient(/*...*/);
  
  @override
  Future<Response> get(String endpoint) {
    // GraphQL query implementation
  }
  
  @override
  Future<Response> post(String endpoint, Map<String, dynamic> data) {
    // GraphQL mutation implementation
  }
}

class ApiClientFactory {
  static ApiClient createClient(String type) {
    switch (type) {
      case 'graphql':
        return GraphQLApiClient();
      case 'rest':
      default:
        return RestApiClient();
    }
  }
}
```

### 4. **Navigation Strategy Factory**
```dart
abstract class NavigationStrategy {
  void navigate(BuildContext context, String route);
}

class PushNavigation implements NavigationStrategy {
  @override
  void navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}

class ReplaceNavigation implements NavigationStrategy {
  @override
  void navigate(BuildContext context, String route) {
    Navigator.pushReplacementNamed(context, route);
  }
}

class NavigationFactory {
  static NavigationStrategy createNavigation(bool shouldReplace) {
    return shouldReplace ? ReplaceNavigation() : PushNavigation();
  }
}
```

### 5. **State Management Factory**
```dart
abstract class StateManager<T> {
  T get state;
  void updateState(T newState);
  void dispose();
}

class BlocStateManager<T> implements StateManager<T> {
  // BLoC implementation
}

class RiverpodStateManager<T> implements StateManager<T> {
  // Riverpod implementation
}

class StateManagerFactory {
  static StateManager<T> create<T>(String type) {
    switch (type) {
      case 'bloc':
        return BlocStateManager<T>();
      case 'riverpod':
        return RiverpodStateManager<T>();
      default:
        throw Exception('Unknown state manager type');
    }
  }
}
```

---

## 💻 Code Examples Comparison

### Naive Solution

**Problem:** Direct object creation in client code with tight coupling

#### Structure:
```
track_naive_solution/
├── main.dart
├── transport.dart (interface)
├── track.dart (concrete product)
├── ship.dart (concrete product)
├── transport_way_type.dart (enum)
└── transport_processor.dart (client with creation logic)
```

#### Code Overview:

**Transport Interface:**
```dart
abstract class Transport {
  void deliver();
}
```

**TransportProcessor (Client with Creation Logic):**
```dart
class TransportProcessor {
  void processTransport(TransportWayType transportType) {
    Transport transport;
    switch (transportType) {
      case TransportWayType.land:
        transport = Track(
          title: 'Imagine',
          artist: 'John Lennon',
          duration: Duration(minutes: 3, seconds: 1),
        );
        break;
      case TransportWayType.sea:
        transport = Ship(
          title: 'Bohemian Rhapsody',
          artist: 'Queen',
          duration: Duration(minutes: 5, seconds: 55),
        );
        break;
      case TransportWayType.air:
        throw UnimplementedError();
    }
    transport.deliver();
  }
}
```

#### ❌ Problems with Naive Solution:

1. **Violates Single Responsibility Principle**
   - `TransportProcessor` is responsible for both creating and processing transport
   - Mixing business logic with object creation logic

2. **Violates Open/Closed Principle**
   - Must modify `TransportProcessor` every time you add a new transport type
   - Cannot extend without modifying existing code

3. **Tight Coupling**
   - Client code directly depends on concrete classes (`Track`, `Ship`)
   - Must import all concrete product classes

4. **Code Duplication Risk**
   - If multiple places need to create transports, creation logic gets duplicated
   - Inconsistent object creation across the codebase

5. **Hard to Test**
   - Cannot easily mock or replace creation logic
   - Must test creation and processing together

6. **Scalability Issues**
   - Adding new transport types requires modifying processor
   - Switch statement grows larger and more complex

7. **Limited Flexibility**
   - Cannot change creation logic at runtime
   - Cannot easily swap creation strategies

8. **Error-Prone**
   - Easy to forget updating all switch statements when adding new types
   - Throws `UnimplementedError` for air transport - incomplete implementation

---

### Enhanced Solution (Factory Pattern)

**Solution:** Separate factory class handles object creation

#### Structure:
```
track_enhanced_solution/
├── main.dart
├── transport.dart (interface)
├── track.dart (concrete product)
├── ship.dart (concrete product)
├── cargo_plane.dart (concrete product - NEW!)
├── transport_way_type.dart (enum)
├── transport_factory.dart (FACTORY - NEW!)
└── transport_processor.dart (clean client)
```

#### Code Overview:

**TransportFactory (Dedicated Factory):**
```dart
class TransportFactory {
  Transport createTransport(TransportWayType transportType) {
    switch (transportType) {
      case TransportWayType.land:
        return Track(
          title: 'Highway to Hell',
          artist: 'AC/DC',
          duration: Duration(minutes: 3, seconds: 28),
        );
      case TransportWayType.sea:
        return Ship(
          title: 'Ocean Waves',
          artist: 'Sea Sounds',
          duration: Duration(minutes: 45),
        );
      case TransportWayType.air:
        return CargoPlane(
          title: 'Fly Me to the Moon',
          artist: 'Frank Sinatra',
          duration: Duration(minutes: 2, seconds: 27),
        );
    }
  }
}
```

**TransportProcessor (Clean Client):**
```dart
class TransportProcessor {
  final TransportFactory _factory;

  TransportProcessor() : _factory = TransportFactory();

  void processTransport(TransportWayType transportType) {
    Transport transport = _factory.createTransport(transportType);
    transport.deliver();
  }
}
```

**CargoPlane (New Product):**
```dart
class CargoPlane implements Transport {
  final String title;
  final String artist;
  final Duration duration;

  CargoPlane({
    required this.title,
    required this.artist,
    required this.duration,
  });

  @override
  void deliver() {
    print(
      'Delivering by air with track: "$title" by $artist, duration: ${duration.inMinutes} minutes.',
    );
  }
}
```

#### ✅ Benefits of Enhanced Solution:

1. **Follows Single Responsibility Principle**
   - `TransportFactory` handles only creation
   - `TransportProcessor` handles only processing
   - Clear separation of concerns

2. **Follows Open/Closed Principle**
   - Can add new transport types by updating factory only
   - Client code remains unchanged when adding products

3. **Loose Coupling**
   - Client depends only on factory and interface
   - No direct dependency on concrete classes

4. **Centralized Creation Logic**
   - All creation logic in one place
   - No code duplication
   - Consistent object creation

5. **Easier to Test**
   - Can mock factory in tests
   - Can test creation and processing separately
   - Better unit test isolation

6. **Better Scalability**
   - Easy to add new transport types
   - Creation logic is organized and maintainable

7. **Increased Flexibility**
   - Can inject different factories
   - Can change factory implementation at runtime
   - Can implement factory strategies

8. **Complete Implementation**
   - All three transport types fully implemented
   - No `UnimplementedError` exceptions

---

### Detailed Comparison

| Aspect | Naive Solution | Enhanced Solution (Factory) |
|--------|---------------|----------------------------|
| **Separation of Concerns** | ❌ Mixed creation & processing logic | ✅ Separated into factory & processor |
| **Single Responsibility** | ❌ Processor does too much | ✅ Each class has one responsibility |
| **Open/Closed Principle** | ❌ Must modify processor for new types | ✅ Only modify factory for new types |
| **Coupling** | ❌ Tight coupling to concrete classes | ✅ Loose coupling via interfaces |
| **Testability** | ❌ Difficult to test independently | ✅ Easy to mock and test separately |
| **Code Duplication** | ❌ High risk if creation needed elsewhere | ✅ Centralized, no duplication |
| **Maintainability** | ❌ Harder to maintain and extend | ✅ Easier to maintain and extend |
| **Flexibility** | ❌ Limited, cannot change creation easily | ✅ High, can inject different factories |
| **Number of Classes** | 5 classes | 6 classes (+1 factory) |
| **Complexity** | Lower initial complexity | Slightly higher complexity |
| **Scalability** | ❌ Poor, grows with each new type | ✅ Good, isolated changes |
| **Air Transport** | ❌ Throws UnimplementedError | ✅ Fully implemented (CargoPlane) |
| **Client Code Clarity** | ❌ Cluttered with switch statement | ✅ Clean and focused |
| **Dependencies** | ❌ Many (all concrete classes) | ✅ Few (factory + interface) |
| **Learning Curve** | Easy to understand | Requires pattern knowledge |
| **Best For** | Simple, static scenarios | Complex, evolving applications |

---

## 📊 UML Diagrams

### Naive Solution UML

```
┌─────────────────────────────────────┐
│     TransportProcessor              │
│  (Client + Factory Combined)        │
├─────────────────────────────────────┤
│ - processTransport(type): void      │
│   [Contains switch statement         │
│    to create Track/Ship]            │
└─────────────────┬───────────────────┘
                  │ creates & uses
                  ↓
         ┌────────────────┐
         │   «interface»  │
         │   Transport    │
         ├────────────────┤
         │ + deliver()    │
         └────────┬───────┘
                  △
         ┌────────┴────────┐
         │                 │
    ┌────┴─────┐     ┌────┴─────┐
    │  Track   │     │   Ship   │
    ├──────────┤     ├──────────┤
    │ - title  │     │ - title  │
    │ - artist │     │ - artist │
    │ - duration│    │ - duration│
    ├──────────┤     ├──────────┤
    │+ deliver()│    │+ deliver()│
    └──────────┘     └──────────┘

Problems:
- TransportProcessor knows about all concrete classes
- Tight coupling between client and products
- Creation logic mixed with business logic
```

### Enhanced Solution (Factory Pattern) UML

```
┌──────────────────────────────────────┐
│      TransportProcessor              │
│           (Client)                   │
├──────────────────────────────────────┤
│ - _factory: TransportFactory         │
├──────────────────────────────────────┤
│ + processTransport(type): void       │
└────────────┬─────────────────────────┘
             │ uses
             ↓
┌──────────────────────────────────────┐
│       TransportFactory               │
│          (Factory)                   │
├──────────────────────────────────────┤
│ + createTransport(type): Transport   │
└────────────┬─────────────────────────┘
             │ creates
             ↓
    ┌────────────────┐
    │   «interface»  │
    │   Transport    │
    ├────────────────┤
    │ + deliver()    │
    └────────┬───────┘
             △
    ┌────────┼────────────┐
    │        │            │
┌───┴────┐ ┌─┴──────┐ ┌──┴────────┐
│ Track  │ │  Ship  │ │CargoPlane │
├────────┤ ├────────┤ ├───────────┤
│- title │ │- title │ │ - title   │
│- artist│ │- artist│ │ - artist  │
│- duration│├────────┤│ - duration│
├────────┤ │+ deliver│├───────────┤
│+ deliver│└────────┘│ + deliver()│
└────────┘          └───────────┘

Benefits:
- Client only knows about Factory and Transport interface
- Loose coupling
- Clear separation of concerns
- Easy to extend with new products
```

### Class Interaction Flow

```
Naive Solution Flow:
User → main() → TransportProcessor.processTransport()
                      ↓
                [Switch Statement]
                      ↓
           Creates Track/Ship directly
                      ↓
                transport.deliver()


Enhanced Solution Flow:
User → main() → TransportProcessor.processTransport()
                      ↓
          TransportFactory.createTransport()
                      ↓
                [Switch Statement]
                      ↓
         Creates Track/Ship/CargoPlane
                      ↓
           Returns Transport interface
                      ↓
                transport.deliver()
```

---

## 📝 Summary

### What?
The **Factory Pattern** is a creational design pattern that provides an interface for creating objects without specifying their exact concrete classes. It encapsulates object creation logic in a separate factory class, promoting loose coupling and flexibility.

### When to Use?
- When object creation logic is complex
- When you want to decouple object creation from usage
- When you need to centralize and standardize object creation
- When you expect to add new product types frequently
- When the exact type of object isn't known until runtime

### Why?
- **Loose Coupling**: Clients depend on abstractions, not concrete classes
- **Flexibility**: Easy to introduce new products without changing existing code
- **Maintainability**: Centralized creation logic is easier to maintain
- **Testability**: Can mock factories and test components independently
- **Scalability**: Supports application growth and evolution

### Pros:
✅ Follows SOLID principles (Single Responsibility, Open/Closed)  
✅ Reduces coupling between creator and products  
✅ Centralizes object creation logic  
✅ Makes code more testable and maintainable  
✅ Provides flexibility to change creation logic  
✅ Easier to add new product types  

### Cons:
❌ Increases number of classes  
❌ Adds an extra layer of abstraction  
❌ Can be overkill for simple scenarios  
❌ May require updating factory for new products  

### Our Example Analysis:

#### Naive Solution:
- **Observer**: None (not using Observer pattern)
- **Observable**: None (not using Observer pattern)
- **Pattern Used**: Direct instantiation with conditional logic
- **Issue**: Tight coupling, mixed responsibilities

#### Enhanced Solution (Factory):
- **Observer**: None (not using Observer pattern)
- **Observable**: None (not using Observer pattern)
- **Pattern Used**: **Factory Pattern**
- **Components**:
  - **Products (Observables in spirit)**: `Track`, `Ship`, `CargoPlane` - objects being created
  - **Product Interface**: `Transport` - defines contract
  - **Factory (Creator)**: `TransportFactory` - creates products
  - **Client (User)**: `TransportProcessor` - uses products through factory

**Note**: The terms "Observer" and "Observable" don't apply here as we're implementing the **Factory Pattern**, not the **Observer Pattern**. In Factory Pattern terminology:
- **Products** are the objects being created (Track, Ship, CargoPlane)
- **Factory** is the creator that instantiates products
- **Client** is the code that uses the factory

---

## 🎓 Key Takeaways

1. **Use Factory Pattern when creation logic is complex or likely to change**
2. **Prefer composition over inheritance for flexibility**
3. **Keep factory methods focused and single-purpose**
4. **Consider Abstract Factory for families of related objects**
5. **Balance between simplicity and flexibility based on project needs**
6. **Factory Pattern is fundamental to many other design patterns**
7. **In Flutter, use factories for platform-specific widgets, themes, and services**

---

## 🔄 Evolution Path

```
Direct Instantiation (Naive)
         ↓
   Factory Method
         ↓
   Abstract Factory
         ↓
   Dependency Injection
```

Start simple and refactor to patterns as complexity grows!

---

## 📚 Further Reading

- **Design Patterns: Elements of Reusable Object-Oriented Software** by Gang of Four
- **Head First Design Patterns** by Eric Freeman & Elisabeth Robson
- **Refactoring to Patterns** by Joshua Kerievsky
- **Flutter Design Patterns** - Official Flutter documentation

---

*This README demonstrates the evolution from a naive implementation to a proper Factory Pattern implementation, highlighting the benefits of following design patterns in software development.*

