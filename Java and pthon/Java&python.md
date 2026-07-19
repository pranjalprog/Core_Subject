# Java Interview Questions (5–6 LPA SDE)

## 1. What is Java?

### Answer

Java is a high-level, object-oriented, platform-independent programming language developed by Sun Microsystems (now Oracle).

Java follows the principle:

> Write Once, Run Anywhere (WORA)

It compiles source code into bytecode (.class), which runs on the Java Virtual Machine (JVM).

### Features

- Object-Oriented
- Platform Independent
- Robust
- Secure
- Multithreaded
- Distributed
- Portable
- Automatic Garbage Collection

### Example

```java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello Java");
    }
}
```

### Interview Tip

**Follow-up:** Why is Java platform independent?

**Answer:**
Because Java code is compiled into bytecode, which runs on the JVM available for Windows, Linux, and macOS.

---

# 2. What are JDK, JRE, and JVM?

## JVM (Java Virtual Machine)

- Runs Java bytecode.
- Converts bytecode into machine code.
- Platform dependent.

## JRE (Java Runtime Environment)

Contains:

- JVM
- Java libraries
- Runtime files

Used only for running Java applications.

## JDK (Java Development Kit)

Contains:

- JRE
- Compiler (javac)
- Debugger
- Development tools

Used for developing Java applications.

### Diagram

```
JDK
│
├── JRE
│    │
│    ├── JVM
│    └── Libraries
│
└── Development Tools
```

### Interview Question

Which one do developers install?

**Answer:** JDK

Which one is enough to run Java programs?

**Answer:** JRE

---

# 3. Explain the Java Compilation Process.

### Steps

```
Java Source (.java)
        │
     javac Compiler
        │
Bytecode (.class)
        │
        JVM
        │
Machine Code
        │
 Program Executes
```

### Example

```
Main.java

↓

javac Main.java

↓

Main.class

↓

java Main
```

### Interview Tip

Remember:

Compiler → Bytecode

JVM → Machine Code

---

# 4. Why is Java called Object-Oriented?

Because Java organizes programs into objects instead of functions.

Everything revolves around:

- Classes
- Objects
- Methods
- Data

### Four Pillars

- Encapsulation
- Inheritance
- Polymorphism
- Abstraction

Example

```java
class Student{

    String name;

    void study(){
        System.out.println("Studying");
    }
}
```

---

# 5. Difference between C++ and Java

| C++ | Java |
|------|------|
| Platform dependent | Platform independent |
| Multiple inheritance supported | Through interfaces only |
| Uses pointers | No direct pointers |
| Manual memory management | Garbage Collection |
| Header files | Packages |
| Supports operator overloading | Limited |

### Interview Tip

Most interviewers ask:

Why Java removed pointers?

Answer:

- Security
- Simplicity
- Prevent memory corruption

---

# 6. What is a Class?

A class is a blueprint for creating objects.

Example

```java
class Car{

    String brand;

    void drive(){
        System.out.println("Driving");
    }
}
```

Class contains:

- Variables
- Methods
- Constructors
- Nested classes

---

# 7. What is an Object?

An object is an instance of a class.

Example

```java
class Car{

    String brand;
}

public class Main{

    public static void main(String args[]){

        Car c1 = new Car();

        c1.brand = "BMW";

        System.out.println(c1.brand);
    }
}
```

### Interview Question

Can we create multiple objects from one class?

Answer:

Yes.

Each object has its own state but shares the same behavior defined by the class.

---

# 8. What is the Difference Between Class and Object?

| Class | Object |
|--------|---------|
| Blueprint | Instance |
| Logical entity | Physical entity |
| No memory until object created | Occupies memory |
| Created once | Can create many |

Example

```java
Student s1 = new Student();
Student s2 = new Student();
Student s3 = new Student();
```

One class

Three objects

---

# 9. What is a Constructor?

A constructor is a special method used to initialize objects.

Rules

- Same name as class
- No return type
- Called automatically

Example

```java
class Student{

    Student(){
        System.out.println("Constructor Called");
    }
}
```

Types

- Default constructor
- Parameterized constructor

Example

```java
class Student{

    String name;

    Student(String name){
        this.name = name;
    }
}
```

Interview Tip

Constructors cannot be inherited.

---

# 10. Difference Between Constructor and Method

| Constructor | Method |
|-------------|--------|
| Initializes object | Performs operation |
| Same name as class | Any valid name |
| No return type | Has return type or void |
| Called automatically | Called manually |

Example

```java
class Student{

    Student(){
        System.out.println("Constructor");
    }

    void display(){
        System.out.println("Method");
    }

    public static void main(String args[]){

        Student s = new Student();

        s.display();
    }
}
```

Output

```
Constructor
Method
```

---

# Quick Revision (Top 10)

- Java is platform independent because of JVM.
- JDK = JRE + Development Tools.
- JRE = JVM + Libraries.
- Class is a blueprint.
- Object is an instance.
- Constructor initializes objects.
- Constructors have no return type.
- Java is object-oriented.
- Bytecode runs on JVM.
- WORA = Write Once, Run Anywhere.

# Java Interview Questions (5–6 LPA SDE)

# 11. What are the Four Pillars of OOP?

Object-Oriented Programming (OOP) is based on four main principles:

1. Encapsulation
2. Inheritance
3. Polymorphism
4. Abstraction

### Diagram

```
        OOP
         |
 -----------------------
 |     |      |       |
Encap Inherit Poly  Abstract
```

### Interview Tip

Most Java interview questions revolve around these four concepts.

---

# 12. What is Encapsulation?

Encapsulation is the process of wrapping data (variables) and methods (functions) together into a single unit (class).

It also hides data from direct access using **private** variables.

### Example

```java
class Student {

    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}

public class Main {
    public static void main(String[] args) {

        Student s = new Student();

        s.setName("Rahul");

        System.out.println(s.getName());
    }
}
```

### Advantages

- Data hiding
- Better security
- Better maintainability
- Controlled access

### Interview Question

Why use getters and setters?

**Answer:**
Because private variables cannot be accessed directly from outside the class.

---

# 13. What is Inheritance?

Inheritance allows one class to acquire properties and methods of another class.

Keyword:

```java
extends
```

### Example

```java
class Animal {

    void eat() {
        System.out.println("Eating");
    }
}

class Dog extends Animal {

    void bark() {
        System.out.println("Barking");
    }
}

public class Main {

    public static void main(String[] args) {

        Dog d = new Dog();

        d.eat();
        d.bark();
    }
}
```

### Advantages

- Code reuse
- Easy maintenance
- Supports polymorphism

---

# 14. Types of Inheritance in Java

### Supported

- Single
- Multilevel
- Hierarchical

### Not Supported (with classes)

- Multiple Inheritance

Reason:

Diamond Problem

### Multiple inheritance is achieved using Interfaces.

Example

```java
interface A {}

interface B {}

class C implements A, B {

}
```

### Interview Tip

Java does **not** support multiple inheritance using classes.

---

# 15. What is Polymorphism?

Polymorphism means:

> One interface, many forms.

Types:

1. Compile-time Polymorphism
2. Runtime Polymorphism

### Example

```java
class Animal {

    void sound() {
        System.out.println("Animal Sound");
    }
}

class Dog extends Animal {

    @Override
    void sound() {
        System.out.println("Bark");
    }
}

public class Main {

    public static void main(String[] args) {

        Animal a = new Dog();

        a.sound();
    }
}
```

Output

```
Bark
```

---

# 16. Method Overloading

Method Overloading means multiple methods with the same name but different parameters.

Compile-time Polymorphism

### Example

```java
class Calculator {

    int add(int a, int b) {
        return a + b;
    }

    int add(int a, int b, int c) {
        return a + b + c;
    }

    double add(double a, double b) {
        return a + b;
    }
}
```

### Rules

Can change:

- Number of parameters
- Type of parameters
- Order of parameters

Cannot overload by only changing return type.

❌ Invalid

```java
int add(int a, int b)

double add(int a, int b)
```

---

# 17. Method Overriding

Method Overriding means redefining the parent class method in the child class.

Runtime Polymorphism

### Example

```java
class Animal {

    void sound() {
        System.out.println("Animal");
    }
}

class Dog extends Animal {

    @Override
    void sound() {
        System.out.println("Bark");
    }
}
```

### Rules

- Same method name
- Same parameters
- Same return type (or covariant)
- Cannot reduce access level

### Interview Question

Difference between Overloading and Overriding?

| Overloading | Overriding |
|-------------|------------|
| Compile Time | Runtime |
| Same class | Parent & Child |
| Different parameters | Same parameters |
| Improves readability | Achieves runtime polymorphism |

---

# 18. What is the this Keyword?

`this` refers to the current object.

Uses:

- Refer current object's variables
- Call current class methods
- Invoke constructor
- Pass current object

### Example

```java
class Student {

    String name;

    Student(String name) {
        this.name = name;
    }

    void display() {
        System.out.println(this.name);
    }
}
```

### Constructor Chaining

```java
class Demo {

    Demo() {
        this(10);
    }

    Demo(int x) {
        System.out.println(x);
    }
}
```

Output

```
10
```

---

# 19. What is the super Keyword?

`super` refers to the immediate parent class.

Uses

- Access parent variable
- Call parent method
- Call parent constructor

### Example

```java
class Animal {

    Animal() {
        System.out.println("Animal Constructor");
    }
}

class Dog extends Animal {

    Dog() {
        super();
        System.out.println("Dog Constructor");
    }
}
```

Output

```
Animal Constructor
Dog Constructor
```

### Calling Parent Method

```java
class Animal {

    void sound() {
        System.out.println("Animal");
    }
}

class Dog extends Animal {

    void sound() {
        super.sound();
        System.out.println("Dog");
    }
}
```

---

# 20. Access Modifiers in Java

Java provides four access modifiers.

| Modifier | Same Class | Same Package | Subclass | Other Package |
|-----------|------------|--------------|-----------|---------------|
| private | ✅ | ❌ | ❌ | ❌ |
| default | ✅ | ✅ | ❌ | ❌ |
| protected | ✅ | ✅ | ✅ | ❌* |
| public | ✅ | ✅ | ✅ | ✅ |

`protected` is accessible in other packages only through inheritance.

### Example

```java
public class Student {

    private int age;

    protected String name;

    public void display() {

    }
}
```

### Interview Tip

**Most restrictive → Least restrictive**

```
private
↓

default

↓

protected

↓

public
```

---

# Quick Revision (11–20)

- OOP has four pillars.
- Encapsulation = Data Hiding.
- Inheritance = Code Reuse.
- Polymorphism = One interface, many forms.
- Overloading = Compile Time.
- Overriding = Runtime.
- `this` refers to the current object.
- `super` refers to the parent object.
- Java doesn't support multiple inheritance using classes.
- `private` is the most restrictive access modifier.

# Java Interview Questions (5–6 LPA SDE)

# 21. What is the Java Collections Framework?

The Java Collections Framework (JCF) is a set of classes and interfaces used to store and manipulate groups of objects efficiently.

### Advantages

- Dynamic size
- Built-in algorithms
- Faster searching and sorting
- Code reusability

### Collection Hierarchy

```
                 Iterable
                     |
                Collection
          _________|__________
         |         |          |
       List       Set      Queue
         |         |
 ArrayList      HashSet
 LinkedList     LinkedHashSet
 Vector         TreeSet

             Map (Separate Interface)
              |
      -----------------------
      |         |          |
   HashMap  LinkedHashMap TreeMap
```

---

# 22. Difference Between Array and ArrayList

| Array | ArrayList |
|-------|-----------|
| Fixed size | Dynamic size |
| Stores primitives & objects | Stores objects only |
| Faster | Slightly slower |
| Length property | size() method |
| Not part of Collection | Part of Collection |

### Example

```java
ArrayList<String> list = new ArrayList<>();

list.add("Java");
list.add("Spring");

System.out.println(list);
```

### Interview Tip

Primitive values are stored using wrapper classes.

```java
ArrayList<Integer> list = new ArrayList<>();
```

---

# 23. ArrayList vs LinkedList

| ArrayList | LinkedList |
|-----------|------------|
| Dynamic Array | Doubly Linked List |
| Fast Random Access | Slow Random Access |
| Slow Insert/Delete | Fast Insert/Delete |
| Less Memory | More Memory |

### When to Use?

Use **ArrayList** if:
- Searching is frequent
- Random access is needed

Use **LinkedList** if:
- Insertions and deletions are frequent

---

# 24. What is a HashMap?

HashMap stores data in **key-value pairs**.

Features:
- Keys must be unique.
- Values can be duplicated.
- Allows one null key.
- Not synchronized.
- No insertion order guarantee.

### Example

```java
HashMap<Integer, String> map = new HashMap<>();

map.put(1, "Rahul");
map.put(2, "Aman");

System.out.println(map);
```

Output

```
{1=Rahul, 2=Aman}
```

### Interview Question

Can HashMap have duplicate keys?

**Answer:** No. A new value replaces the old one.

---

# 25. HashMap vs Hashtable

| HashMap | Hashtable |
|----------|-----------|
| Not synchronized | Synchronized |
| Faster | Slower |
| Allows one null key | No null key |
| Allows null values | No null values |

### Interview Tip

In modern applications, **HashMap** is preferred. For thread safety, use `ConcurrentHashMap`.

---

# 26. HashSet vs TreeSet

## HashSet

- No duplicate elements
- Unordered
- Backed by HashMap
- Faster

```java
HashSet<Integer> set = new HashSet<>();

set.add(10);
set.add(20);
set.add(10);

System.out.println(set);
```

Output

```
[10, 20]
```

## TreeSet

- No duplicates
- Sorted order
- Uses Red-Black Tree
- Slower than HashSet

```java
TreeSet<Integer> set = new TreeSet<>();

set.add(30);
set.add(10);
set.add(20);

System.out.println(set);
```

Output

```
[10, 20, 30]
```

---

# 27. HashMap vs TreeMap

| HashMap | TreeMap |
|----------|----------|
| Unordered | Sorted |
| O(1) Average Search | O(log n) Search |
| Uses Hash Table | Uses Red-Black Tree |
| Allows one null key | No null keys |

### Use Cases

**HashMap**
- Fast lookups
- Caching

**TreeMap**
- Sorted data
- Ranking
- Leaderboards

---

# 28. Comparable vs Comparator

## Comparable

- Used for natural sorting.
- Implemented inside the class.

```java
class Student implements Comparable<Student> {

    int age;

    @Override
    public int compareTo(Student s) {
        return this.age - s.age;
    }
}
```

## Comparator

- Used for custom sorting.
- Implemented outside the class.

```java
Comparator<Student> comp =
    (a, b) -> a.age - b.age;
```

### Difference

| Comparable | Comparator |
|-------------|------------|
| compareTo() | compare() |
| Natural ordering | Custom ordering |
| Inside class | Outside class |

---

# 29. What is an Iterator?

An `Iterator` is used to traverse elements of a collection.

### Example

```java
ArrayList<String> list = new ArrayList<>();

list.add("Java");
list.add("Python");

Iterator<String> it = list.iterator();

while(it.hasNext()) {
    System.out.println(it.next());
}
```

### Methods

- hasNext()
- next()
- remove()

### Interview Tip

Use `Iterator` when you need to remove elements safely during iteration.

---

# 30. for-each Loop vs Iterator

## for-each Loop

```java
for(String s : list) {
    System.out.println(s);
}
```

### Pros

- Easy to read
- Less code

### Cons

- Cannot safely remove elements while iterating

## Iterator

```java
Iterator<String> it = list.iterator();

while(it.hasNext()) {

    if(it.next().equals("Java")) {
        it.remove();
    }
}
```

### Pros

- Safe removal of elements
- Explicit traversal

---

# Quick Revision (21–30)

- Collection Framework stores groups of objects.
- ArrayList uses a dynamic array.
- LinkedList uses a doubly linked list.
- HashMap stores key-value pairs.
- HashSet removes duplicates.
- TreeSet stores sorted unique elements.
- TreeMap stores sorted key-value pairs.
- Comparable = Natural sorting.
- Comparator = Custom sorting.
- Iterator is used for traversing collections safely.

# Java Interview Questions (5–6 LPA SDE)

# 31. What is Exception Handling?

Exception Handling is a mechanism to handle runtime errors so that the normal flow of the program is maintained.

### Common Exceptions

- ArithmeticException
- NullPointerException
- ArrayIndexOutOfBoundsException
- NumberFormatException
- IOException

### Example

```java
public class Main {

    public static void main(String[] args) {

        try {
            int result = 10 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Cannot divide by zero.");
        }

        System.out.println("Program continues...");
    }
}
```

### Output

```
Cannot divide by zero.
Program continues...
```

---

# 32. Difference Between Checked and Unchecked Exceptions

## Checked Exception

- Checked at compile time.
- Must be handled or declared.

Examples:
- IOException
- SQLException
- FileNotFoundException

## Unchecked Exception

- Occurs at runtime.
- Extends RuntimeException.

Examples:
- NullPointerException
- ArithmeticException
- ArrayIndexOutOfBoundsException

### Comparison

| Checked | Unchecked |
|----------|-----------|
| Compile-time | Runtime |
| Must handle | Optional |
| Extends Exception | Extends RuntimeException |

---

# 33. Explain try, catch, finally, throw, and throws

### try

Contains code that may throw an exception.

### catch

Handles the exception.

### finally

Always executes (except in rare cases like JVM termination).

### throw

Used to explicitly throw an exception.

```java
throw new IllegalArgumentException("Invalid age");
```

### throws

Declares that a method may throw an exception.

```java
void readFile() throws IOException {

}
```

---

# 34. What is Multithreading?

Multithreading allows multiple threads to execute concurrently within the same process.

### Advantages

- Better CPU utilization
- Faster execution
- Improved responsiveness

### Example

```java
class MyThread extends Thread {

    @Override
    public void run() {
        System.out.println("Thread is running");
    }
}

public class Main {

    public static void main(String[] args) {

        MyThread t = new MyThread();
        t.start();
    }
}
```

### Interview Tip

Always use `start()` to create a new thread. Calling `run()` directly executes it like a normal method.

---

# 35. Thread Class vs Runnable Interface

## Using Thread

```java
class MyThread extends Thread {

    @Override
    public void run() {
        System.out.println("Running");
    }
}
```

## Using Runnable

```java
class MyTask implements Runnable {

    @Override
    public void run() {
        System.out.println("Running");
    }
}

Thread t = new Thread(new MyTask());
t.start();
```

### Difference

| Thread | Runnable |
|----------|-----------|
| Extends Thread | Implements Runnable |
| No multiple inheritance | Supports multiple inheritance |
| Less flexible | More flexible |

### Interview Answer

Prefer **Runnable** because Java supports only single inheritance.

---

# 36. What is Synchronization?

Synchronization prevents multiple threads from accessing shared resources simultaneously, avoiding data inconsistency.

### Example

```java
class Counter {

    int count = 0;

    synchronized void increment() {
        count++;
    }
}
```

### Why Synchronization?

Without synchronization:

- Race conditions
- Incorrect results
- Data corruption

---

# 37. String vs StringBuilder vs StringBuffer

## String

- Immutable
- Thread-safe due to immutability
- New object created on every modification

```java
String s = "Java";
s = s + " Programming";
```

## StringBuilder

- Mutable
- Not synchronized
- Faster

```java
StringBuilder sb = new StringBuilder();

sb.append("Java");
sb.append(" Programming");
```

## StringBuffer

- Mutable
- Synchronized
- Slower than StringBuilder

### Comparison

| Feature | String | StringBuilder | StringBuffer |
|----------|--------|---------------|--------------|
| Mutable | ❌ | ✅ | ✅ |
| Thread-safe | Yes (immutable) | ❌ | ✅ |
| Performance | Slow | Fast | Moderate |

### Interview Tip

Use:
- `String` for constant text.
- `StringBuilder` for single-threaded modifications.
- `StringBuffer` for thread-safe modifications.

---

# 38. What are final, finally, and finalize()?

## final

Used to restrict modification.

```java
final int MAX = 100;
```

A final method cannot be overridden.

A final class cannot be inherited.

```java
final class Demo {

}
```

## finally

Always executes after `try` and `catch`.

## finalize()

A method that was historically called before garbage collection.

**Note:** `finalize()` is deprecated and should not be used in modern Java.

### Comparison

| Keyword | Purpose |
|----------|---------|
| final | Restrict changes |
| finally | Cleanup block |
| finalize() | Deprecated GC callback |

---

# 39. What is Garbage Collection?

Garbage Collection automatically removes objects that are no longer reachable, freeing heap memory.

### Example

```java
public class Main {

    public static void main(String[] args) {

        Main obj = new Main();

        obj = null;

        System.gc();
    }
}
```

### Interview Questions

Who performs Garbage Collection?

**Answer:** JVM

Can we force Garbage Collection?

**Answer:** No. `System.gc()` is only a request to the JVM.

---

# 40. What is the Difference Between == and equals()?

## ==

Compares references for objects (or values for primitives).

## equals()

Compares object content (if overridden appropriately).

### Example

```java
String s1 = new String("Java");
String s2 = new String("Java");

System.out.println(s1 == s2);
System.out.println(s1.equals(s2));
```

### Output

```
false
true
```

### Comparison

| == | equals() |
|----|-----------|
| Reference comparison | Content comparison |
| Works for primitives and objects | Primarily for objects |
| Can be overridden? No | Yes |

### Interview Tip

For Strings and custom objects, prefer `equals()` when comparing values.

# Java Interview Questions (5–6 LPA SDE)

# 41. What are Heap and Stack Memory?

Java mainly uses two types of memory:

## Stack Memory

Stores:
- Method calls
- Local variables
- References

Characteristics:
- Fast access
- Thread-specific
- Automatically cleared after method execution

## Heap Memory

Stores:
- Objects
- Instance variables

Characteristics:
- Shared among threads
- Managed by Garbage Collector

### Example

```java
class Student {

    int age;
}

public class Main {

    public static void main(String[] args) {

        int x = 10;              // Stack

        Student s = new Student(); // Object -> Heap
    }
}
```

### Interview Tip

- Local variables → Stack
- Objects → Heap

---

# 42. What is the String Pool?

The String Pool is a special memory area inside the Heap that stores string literals.

### Example

```java
String s1 = "Java";
String s2 = "Java";

System.out.println(s1 == s2);
```

Output

```
true
```

Because both references point to the same object in the String Pool.

### Using new

```java
String s1 = new String("Java");
String s2 = new String("Java");

System.out.println(s1 == s2);
```

Output

```
false
```

---

# 43. What is a Lambda Expression?

A Lambda Expression is a concise way to represent anonymous functions.

Introduced in Java 8.

### Syntax

```java
(parameters) -> expression
```

### Example

```java
Runnable r = () -> System.out.println("Hello");

r.run();
```

Another Example

```java
(a, b) -> a + b
```

### Advantages

- Less code
- More readable
- Functional programming support

---

# 44. What is a Functional Interface?

A Functional Interface contains exactly one abstract method.

It can have:
- Default methods
- Static methods

### Example

```java
@FunctionalInterface
interface Calculator {

    int add(int a, int b);
}
```

### Common Functional Interfaces

- Runnable
- Comparator
- Callable
- Predicate
- Function
- Consumer
- Supplier

### Interview Question

Can a functional interface have multiple default methods?

**Answer:** Yes. It can have only one abstract method.

---

# 45. What is the Stream API?

The Stream API processes collections efficiently using functional-style operations.

Introduced in Java 8.

### Example

```java
List<Integer> list =
Arrays.asList(1,2,3,4,5);

list.stream()
    .filter(n -> n % 2 == 0)
    .forEach(System.out::println);
```

Output

```
2
4
```

### Common Operations

- filter()
- map()
- sorted()
- distinct()
- limit()
- skip()
- reduce()
- collect()
- forEach()

---

# 46. map() vs filter()

## map()

Transforms data.

```java
List<String> names =
Arrays.asList("java","python");

names.stream()
     .map(String::toUpperCase)
     .forEach(System.out::println);
```

Output

```
JAVA
PYTHON
```

## filter()

Filters data.

```java
numbers.stream()
       .filter(n -> n > 10);
```

### Difference

| map() | filter() |
|---------|-----------|
| Transforms | Filters |
| Same number of elements (usually) | May reduce elements |

---

# 47. What is Optional?

Optional is a container object used to avoid NullPointerException.

### Example

```java
Optional<String> name =
Optional.of("Rahul");

System.out.println(name.get());
```

### Empty Optional

```java
Optional<String> name =
Optional.empty();
```

### Safe Access

```java
name.orElse("Default");
```

### Interview Tip

Use Optional instead of returning null from methods when appropriate.

---

# 48. What are Default and Static Methods in Interfaces?

## Default Method

```java
interface Demo {

    default void display() {
        System.out.println("Default");
    }
}
```

## Static Method

```java
interface Demo {

    static void print() {
        System.out.println("Static");
    }
}
```

### Why Introduced?

To add new methods to interfaces without breaking existing implementations.

---

# 49. Difference Between Abstract Class and Interface

| Abstract Class | Interface |
|----------------|-----------|
| Can have constructors | No constructors |
| Can have instance variables | Constants only |
| Single inheritance | Multiple inheritance |
| Uses `extends` | Uses `implements` |
| Can contain implemented methods | Default/static methods and one abstract method pattern isn't required |

### When to Use?

Abstract Class:
- Shared state and common implementation.

Interface:
- Common behavior across unrelated classes.

---

# 50. What are the Most Frequently Asked Java Interview Questions?

### Q1. Why is String immutable?

Answer:
- Security
- String Pool
- Thread safety
- HashMap key reliability

---

### Q2. Why is Java platform independent?

Answer:
Because bytecode runs on the JVM available for different operating systems.

---

### Q3. Difference between HashMap and HashSet?

HashMap

- Key-value pairs

HashSet

- Unique elements only

(HashSet internally uses a HashMap.)

---

### Q4. Difference between == and equals()?

- `==` compares references (for objects).
- `equals()` compares object content (when overridden).

---

### Q5. Why is Java not 100% Object-Oriented?

Because Java has primitive data types:

- int
- char
- float
- double
- boolean
- byte
- short
- long

---

### Q6. Can we overload the main() method?

Yes.

```java
public static void main(int x){

}
```

However, the JVM invokes only:

```java
public static void main(String[] args)
```

---

### Q7. Can we override static methods?

No.

They are **method hidden**, not overridden.

---

### Q8. Can constructors be inherited?

No.

---

### Q9. Why is multiple inheritance not supported using classes?

To avoid the **Diamond Problem** and ambiguity.

---

### Q10. Difference between `throw` and `throws`?

| throw | throws |
|--------|---------|
| Throws an exception explicitly | Declares exceptions |
| Used inside a method | Used in the method signature |

# Python Interview Questions (4–8 LPA SDE)

# 1. What is Python?

### Answer

Python is a high-level, interpreted, object-oriented, and dynamically typed programming language developed by Guido van Rossum and first released in 1991.

Python is known for its simple syntax, readability, and extensive standard library.

### Features

- Easy to Learn
- Interpreted Language
- Object-Oriented
- Dynamically Typed
- Platform Independent
- Open Source
- Large Standard Library
- Automatic Memory Management

### Example

```python
print("Hello, Python!")
```

### Interview Tip

**Why is Python so popular?**

Answer:

- Simple syntax
- Rapid development
- Huge community support
- Used in Web Development, AI, Data Science, Automation, DevOps, and Backend Development.

---

# 2. Is Python Compiled or Interpreted?

### Answer

Python is an interpreted language, but internally it is both compiled and interpreted.

### Execution Process

```
Python Source (.py)
        │
     Python Compiler
        │
Bytecode (.pyc)
        │
Python Virtual Machine (PVM)
        │
Program Executes
```

### Interview Tip

Python first compiles source code into bytecode and then executes it using the Python Virtual Machine (PVM).

---

# 3. What are Python Data Types?

Python has several built-in data types.

### Numeric

```python
int
float
complex
```

### Sequence

```python
list
tuple
range
```

### Text

```python
str
```

### Mapping

```python
dict
```

### Set

```python
set
frozenset
```

### Boolean

```python
bool
```

### Binary

```python
bytes
bytearray
memoryview
```

### Example

```python
a = 10
b = 10.5
c = "Python"
d = True

print(type(a))
print(type(b))
print(type(c))
print(type(d))
```

---

# 4. What is Dynamic Typing?

Python is dynamically typed, meaning you don't need to declare variable types explicitly.

Example

```python
x = 10

x = "Python"

x = 10.5
```

The same variable can store different data types.

### Advantages

- Less code
- Faster development
- Flexible

### Interview Question

Does Python support static typing?

Answer:

Not by default. Type hints were introduced in Python 3.5+.

```python
name: str = "Rahul"
```

---

# 5. List vs Tuple

| List | Tuple |
|------|------|
| Mutable | Immutable |
| [] | () |
| Slower | Faster |
| More memory | Less memory |
| Can modify elements | Cannot modify elements |

### List Example

```python
numbers = [1,2,3]

numbers.append(4)

print(numbers)
```

### Tuple Example

```python
numbers = (1,2,3)

print(numbers)
```

### Interview Tip

Use:

- List → Data changes frequently.
- Tuple → Fixed data.

---

# 6. List vs Set vs Dictionary

| List | Set | Dictionary |
|------|------|------------|
| Ordered | Unordered | Key-Value |
| Duplicate allowed | No duplicates | Unique keys |
| Indexed | No indexing | Access using keys |

### Examples

List

```python
a = [1,2,3]
```

Set

```python
a = {1,2,3}
```

Dictionary

```python
student = {
    "name":"Rahul",
    "age":21
}
```

---

# 7. What is a Dictionary?

A dictionary stores data as key-value pairs.

### Example

```python
student = {

    "name":"Rahul",

    "age":21,

    "city":"Delhi"
}

print(student["name"])
```

Output

```
Rahul
```

### Important Properties

- Mutable
- Ordered (Python 3.7+)
- Unique keys
- Fast lookup

---

# 8. Difference Between == and is

### ==

Compares values.

```python
a = [1,2]

b = [1,2]

print(a == b)
```

Output

```
True
```

### is

Compares object identity (memory location).

```python
print(a is b)
```

Output

```
False
```

### Interview Tip

- `==` → Value comparison
- `is` → Identity comparison

---

# 9. What are Mutable and Immutable Objects?

### Mutable

Objects whose values can be changed.

Examples

- list
- dict
- set
- bytearray

```python
numbers = [1,2]

numbers.append(3)
```

### Immutable

Objects that cannot be changed after creation.

Examples

- int
- float
- str
- tuple
- frozenset

```python
name = "Python"

name = name + "3"
```

A new string object is created.

---

# 10. What are Type Casting and Type Conversion?

Type Casting converts one data type into another.

### Example

```python
a = "100"

b = int(a)

print(b + 50)
```

Output

```
150
```

### Common Functions

```python
int()

float()

str()

list()

tuple()

set()

dict()

bool()
```

### Interview Tip

Converting incompatible types raises a `ValueError`.

```python
int("abc")
```

Output

```
ValueError
```

---

# Quick Revision (1–10)

- Python is interpreted and dynamically typed.
- Python source is compiled to bytecode and executed by the PVM.
- List = Mutable.
- Tuple = Immutable.
- Dictionary stores key-value pairs.
- Set stores unique elements.
- `==` compares values.
- `is` compares object identity.
- Mutable objects can be modified.
- Type casting converts data from one type to another.

# Python Interview Questions (4–8 LPA SDE)

# 11. What is a Function in Python?

### Answer

A function is a reusable block of code that performs a specific task.

Functions help in:

- Code Reusability
- Better Readability
- Easy Maintenance

### Syntax

```python
def greet():
    print("Hello")
```

### Example

```python
def add(a, b):
    return a + b

print(add(10, 20))
```

Output

```
30
```

### Interview Tip

Python functions can return multiple values.

```python
def data():
    return 10, 20

a, b = data()
```

---

# 12. What are *args and **kwargs?

## *args

Used to pass a variable number of positional arguments.

```python
def add(*args):

    print(args)

add(1,2,3,4)
```

Output

```
(1, 2, 3, 4)
```

### Sum Example

```python
def add(*args):

    return sum(args)

print(add(10,20,30))
```

Output

```
60
```

---

## **kwargs

Used to pass a variable number of keyword arguments.

```python
def student(**kwargs):

    print(kwargs)

student(name="Rahul", age=21)
```

Output

```
{'name': 'Rahul', 'age': 21}
```

### Difference

| *args | **kwargs |
|--------|-----------|
| Positional arguments | Keyword arguments |
| Tuple | Dictionary |

---

# 13. What is a Lambda Function?

Lambda is an anonymous (unnamed) function.

### Syntax

```python
lambda arguments : expression
```

### Example

```python
square = lambda x: x*x

print(square(5))
```

Output

```
25
```

### Multiple Arguments

```python
add = lambda a,b:a+b

print(add(5,10))
```

Output

```
15
```

### Interview Tip

Use lambda for short, one-line functions.

---

# 14. What are map(), filter(), and reduce()?

## map()

Transforms every element.

```python
numbers = [1,2,3,4]

result = list(map(lambda x:x*2, numbers))

print(result)
```

Output

```
[2,4,6,8]
```

---

## filter()

Filters elements based on a condition.

```python
numbers = [1,2,3,4,5]

result = list(filter(lambda x:x%2==0, numbers))

print(result)
```

Output

```
[2,4]
```

---

## reduce()

Reduces all values into one.

```python
from functools import reduce

numbers=[1,2,3,4]

result=reduce(lambda a,b:a+b,numbers)

print(result)
```

Output

```
10
```

### Difference

| Function | Purpose |
|-----------|----------|
| map() | Transform |
| filter() | Filter |
| reduce() | Aggregate |

---

# 15. What is Object-Oriented Programming (OOP)?

OOP is a programming paradigm that organizes code using objects and classes.

### Four Pillars

- Encapsulation
- Inheritance
- Polymorphism
- Abstraction

### Example

```python
class Student:

    def study(self):

        print("Studying")

s = Student()

s.study()
```

---

# 16. What are Class and Object?

## Class

A blueprint for creating objects.

```python
class Car:

    pass
```

## Object

An instance of a class.

```python
class Car:

    brand = "BMW"

car = Car()

print(car.brand)
```

### Interview Tip

One class can create multiple objects.

---

# 17. What is __init__()?

`__init__()` is the constructor in Python.

It is automatically called when an object is created.

### Example

```python
class Student:

    def __init__(self,name):

        self.name=name

s=Student("Rahul")

print(s.name)
```

Output

```
Rahul
```

### Interview Tip

Unlike Java, Python allows only one constructor. Use default arguments to simulate constructor overloading.

---

# 18. What is self?

`self` refers to the current object of the class.

It is used to access instance variables and methods.

### Example

```python
class Student:

    def __init__(self,name):

        self.name=name

    def display(self):

        print(self.name)

s=Student("Rahul")

s.display()
```

### Interview Question

Is `self` a keyword?

**Answer:** No. It is a naming convention. Any valid identifier could be used, but `self` is the standard.

---

# 19. What is Inheritance?

Inheritance allows one class to inherit properties and methods from another class.

### Example

```python
class Animal:

    def eat(self):

        print("Eating")

class Dog(Animal):

    def bark(self):

        print("Barking")

d=Dog()

d.eat()

d.bark()
```

### Types of Inheritance

- Single
- Multiple
- Multilevel
- Hierarchical
- Hybrid (possible in Python)

### Interview Tip

Unlike Java, Python supports multiple inheritance.

---

# 20. What are Polymorphism, Encapsulation, and Abstraction?

## Polymorphism

Same method name, different behavior.

```python
class Dog:

    def sound(self):

        print("Bark")

class Cat:

    def sound(self):

        print("Meow")

animals=[Dog(),Cat()]

for animal in animals:

    animal.sound()
```

Output

```
Bark
Meow
```

---

## Encapsulation

Hide internal data using naming conventions.

```python
class Student:

    def __init__(self):

        self.__age=20

    def get_age(self):

        return self.__age

s=Student()

print(s.get_age())
```

---

## Abstraction

Hide implementation details and expose only essential functionality.

```python
from abc import ABC, abstractmethod

class Shape(ABC):

    @abstractmethod
    def area(self):
        pass

class Circle(Shape):

    def area(self):
        return "Area of Circle"

c=Circle()

print(c.area())
```

### Interview Tip

Python provides abstraction using the `abc` module.


# Python Interview Questions (4–8 LPA SDE)

# 11. What is a Function in Python?

### Answer

A function is a reusable block of code that performs a specific task.

Functions help in:

- Code Reusability
- Better Readability
- Easy Maintenance

### Syntax

```python
def greet():
    print("Hello")
```

### Example

```python
def add(a, b):
    return a + b

print(add(10, 20))
```

Output

```
30
```

### Interview Tip

Python functions can return multiple values.

```python
def data():
    return 10, 20

a, b = data()
```

---

# 12. What are *args and **kwargs?

## *args

Used to pass a variable number of positional arguments.

```python
def add(*args):

    print(args)

add(1,2,3,4)
```

Output

```
(1, 2, 3, 4)
```

### Sum Example

```python
def add(*args):

    return sum(args)

print(add(10,20,30))
```

Output

```
60
```

---

## **kwargs

Used to pass a variable number of keyword arguments.

```python
def student(**kwargs):

    print(kwargs)

student(name="Rahul", age=21)
```

Output

```
{'name': 'Rahul', 'age': 21}
```

### Difference

| *args | **kwargs |
|--------|-----------|
| Positional arguments | Keyword arguments |
| Tuple | Dictionary |

---

# 13. What is a Lambda Function?

Lambda is an anonymous (unnamed) function.

### Syntax

```python
lambda arguments : expression
```

### Example

```python
square = lambda x: x*x

print(square(5))
```

Output

```
25
```

### Multiple Arguments

```python
add = lambda a,b:a+b

print(add(5,10))
```

Output

```
15
```

### Interview Tip

Use lambda for short, one-line functions.

---

# 14. What are map(), filter(), and reduce()?

## map()

Transforms every element.

```python
numbers = [1,2,3,4]

result = list(map(lambda x:x*2, numbers))

print(result)
```

Output

```
[2,4,6,8]
```

---

## filter()

Filters elements based on a condition.

```python
numbers = [1,2,3,4,5]

result = list(filter(lambda x:x%2==0, numbers))

print(result)
```

Output

```
[2,4]
```

---

## reduce()

Reduces all values into one.

```python
from functools import reduce

numbers=[1,2,3,4]

result=reduce(lambda a,b:a+b,numbers)

print(result)
```

Output

```
10
```

### Difference

| Function | Purpose |
|-----------|----------|
| map() | Transform |
| filter() | Filter |
| reduce() | Aggregate |

---

# 15. What is Object-Oriented Programming (OOP)?

OOP is a programming paradigm that organizes code using objects and classes.

### Four Pillars

- Encapsulation
- Inheritance
- Polymorphism
- Abstraction

### Example

```python
class Student:

    def study(self):

        print("Studying")

s = Student()

s.study()
```

---

# 16. What are Class and Object?

## Class

A blueprint for creating objects.

```python
class Car:

    pass
```

## Object

An instance of a class.

```python
class Car:

    brand = "BMW"

car = Car()

print(car.brand)
```

### Interview Tip

One class can create multiple objects.

---

# 17. What is __init__()?

`__init__()` is the constructor in Python.

It is automatically called when an object is created.

### Example

```python
class Student:

    def __init__(self,name):

        self.name=name

s=Student("Rahul")

print(s.name)
```

Output

```
Rahul
```

### Interview Tip

Unlike Java, Python allows only one constructor. Use default arguments to simulate constructor overloading.

---

# 18. What is self?

`self` refers to the current object of the class.

It is used to access instance variables and methods.

### Example

```python
class Student:

    def __init__(self,name):

        self.name=name

    def display(self):

        print(self.name)

s=Student("Rahul")

s.display()
```

### Interview Question

Is `self` a keyword?

**Answer:** No. It is a naming convention. Any valid identifier could be used, but `self` is the standard.

---

# 19. What is Inheritance?

Inheritance allows one class to inherit properties and methods from another class.

### Example

```python
class Animal:

    def eat(self):

        print("Eating")

class Dog(Animal):

    def bark(self):

        print("Barking")

d=Dog()

d.eat()

d.bark()
```

### Types of Inheritance

- Single
- Multiple
- Multilevel
- Hierarchical
- Hybrid (possible in Python)

### Interview Tip

Unlike Java, Python supports multiple inheritance.

---

# 20. What are Polymorphism, Encapsulation, and Abstraction?

## Polymorphism

Same method name, different behavior.

```python
class Dog:

    def sound(self):

        print("Bark")

class Cat:

    def sound(self):

        print("Meow")

animals=[Dog(),Cat()]

for animal in animals:

    animal.sound()
```

Output

```
Bark
Meow
```

---

## Encapsulation

Hide internal data using naming conventions.

```python
class Student:

    def __init__(self):

        self.__age=20

    def get_age(self):

        return self.__age

s=Student()

print(s.get_age())
```

---

## Abstraction

Hide implementation details and expose only essential functionality.

```python
from abc import ABC, abstractmethod

class Shape(ABC):

    @abstractmethod
    def area(self):
        pass

class Circle(Shape):

    def area(self):
        return "Area of Circle"

c=Circle()

print(c.area())
```

### Interview Tip

Python provides abstraction using the `abc` module.


# Python Interview Questions (4–8 LPA SDE)

# 21. What is List Comprehension?

### Answer

List comprehension is a concise way to create lists.

### Syntax

```python
[expression for item in iterable if condition]
```

### Example

```python
numbers = [1,2,3,4,5]

squares = [x*x for x in numbers]

print(squares)
```

Output

```
[1,4,9,16,25]
```

### With Condition

```python
even = [x for x in range(10) if x % 2 == 0]

print(even)
```

Output

```
[0,2,4,6,8]
```

### Interview Tip

List comprehension is usually faster and more readable than using loops.

---

# 22. What is a Generator?

### Answer

A generator is a function that returns values one at a time using the `yield` keyword.

Unlike `return`, `yield` pauses execution and resumes from the same place.

### Example

```python
def numbers():

    yield 1
    yield 2
    yield 3

for num in numbers():

    print(num)
```

Output

```
1
2
3
```

### Advantages

- Memory Efficient
- Lazy Evaluation
- Useful for large datasets

---

# 23. Iterator vs Generator

## Iterator

Uses

- `__iter__()`
- `__next__()`

Example

```python
nums = [1,2,3]

it = iter(nums)

print(next(it))
print(next(it))
```

Output

```
1
2
```

---

## Generator

```python
def demo():

    yield 10
    yield 20

g = demo()

print(next(g))
```

Output

```
10
```

### Difference

| Iterator | Generator |
|-----------|-----------|
| Implements `__iter__()` and `__next__()` | Uses `yield` |
| More code | Less code |
| Less memory efficient | More memory efficient |

---

# 24. What is a Decorator?

### Answer

A decorator is a function that modifies the behavior of another function without changing its code.

### Example

```python
def decorator(func):

    def wrapper():

        print("Before Function")

        func()

        print("After Function")

    return wrapper

@decorator
def greet():

    print("Hello")

greet()
```

Output

```
Before Function
Hello
After Function
```

### Interview Tip

Decorators are commonly used for:

- Logging
- Authentication
- Authorization
- Timing
- Caching

---

# 25. What are Modules and Packages?

## Module

A single Python file containing functions, classes, or variables.

Example

```python
math.py
```

Import

```python
import math

print(math.sqrt(25))
```

---

## Package

A collection of related modules.

Example

```
project/

    utils/

        __init__.py

        math.py

        string.py
```

### Difference

| Module | Package |
|----------|-----------|
| Single .py file | Folder containing modules |
| Easier to manage small code | Organizes large projects |

---

# 26. What is the Difference Between append() and extend()?

## append()

Adds one element.

```python
numbers = [1,2]

numbers.append([3,4])

print(numbers)
```

Output

```
[1,2,[3,4]]
```

---

## extend()

Adds multiple elements individually.

```python
numbers=[1,2]

numbers.extend([3,4])

print(numbers)
```

Output

```
[1,2,3,4]
```

### Interview Tip

`append()` adds a single object.

`extend()` iterates over an iterable and adds each element.

---

# 27. Difference Between remove(), pop(), and del

## remove()

Removes by value.

```python
numbers=[1,2,3]

numbers.remove(2)
```

---

## pop()

Removes by index and returns the removed value.

```python
numbers=[10,20,30]

print(numbers.pop())
```

Output

```
30
```

---

## del

Deletes element, slice, or variable.

```python
numbers=[1,2,3]

del numbers[0]
```

### Difference

| Method | Removes |
|----------|---------|
| remove() | Value |
| pop() | Index |
| del | Index, slice, or variable |

---

# 28. Deep Copy vs Shallow Copy

## Shallow Copy

Copies only the outer object.

Nested objects are shared.

```python
import copy

a = [[1,2],3]

b = copy.copy(a)
```

---

## Deep Copy

Copies everything recursively.

```python
import copy

a = [[1,2],3]

b = copy.deepcopy(a)
```

### Difference

| Shallow Copy | Deep Copy |
|---------------|-----------|
| Shared nested objects | Independent nested objects |
| Faster | Slower |
| Less memory | More memory |

---

# 29. What is Exception Handling?

Exception handling prevents program crashes due to runtime errors.

### Example

```python
try:

    x = 10 / 0

except ZeroDivisionError:

    print("Cannot divide by zero")

finally:

    print("Finished")
```

Output

```
Cannot divide by zero

Finished
```

### Keywords

- try
- except
- else
- finally
- raise

### Interview Tip

`finally` executes whether an exception occurs or not.

---

# 30. What are Common Built-in Modules?

### math

```python
import math

print(math.sqrt(16))
```

---

### random

```python
import random

print(random.randint(1,10))
```

---

### datetime

```python
from datetime import datetime

print(datetime.now())
```

---

### os

```python
import os

print(os.getcwd())
```

---

### sys

```python
import sys

print(sys.version)
```

---

### collections

```python
from collections import Counter

print(Counter("banana"))
```

Output

```
Counter({'a':3,'n':2,'b':1})
```

---

# Quick Revision (21–30)

- List comprehension creates lists concisely.
- Generators use `yield`.
- Generators are memory efficient.
- Iterators use `__iter__()` and `__next__()`.
- Decorators modify function behavior.
- Module = `.py` file.
- Package = Collection of modules.
- `append()` adds one object.
- `extend()` adds multiple elements.
- `remove()` removes by value.
- `pop()` removes by index.
- `del` deletes variables or elements.
- `deepcopy()` creates independent copies.
- `try-except-finally` handles exceptions.


# Python Interview Questions (4–8 LPA SDE)

# 31. How do you handle files in Python?

### Answer

Python provides built-in functions to read and write files.

### Syntax

```python
file = open("data.txt", "r")
```

### File Modes

| Mode | Description |
|------|-------------|
| r | Read |
| w | Write (overwrites) |
| a | Append |
| x | Create new file |
| rb | Read Binary |
| wb | Write Binary |

### Example

```python
file = open("data.txt", "r")

print(file.read())

file.close()
```

### Recommended Way

```python
with open("data.txt", "r") as file:
    print(file.read())
```

### Interview Tip

Always use **with** because it automatically closes the file.

---

# 32. Difference Between read(), readline(), and readlines()

## read()

Reads the complete file.

```python
with open("data.txt") as f:
    print(f.read())
```

---

## readline()

Reads one line.

```python
with open("data.txt") as f:
    print(f.readline())
```

---

## readlines()

Returns all lines as a list.

```python
with open("data.txt") as f:
    print(f.readlines())
```

### Difference

| Method | Returns |
|---------|----------|
| read() | Entire file |
| readline() | One line |
| readlines() | List of lines |

---

# 33. What is Exception Handling?

Exception handling prevents the program from terminating unexpectedly due to runtime errors.

### Example

```python
try:
    num = 10 / 0

except ZeroDivisionError:
    print("Cannot divide by zero")

finally:
    print("Program Finished")
```

Output

```
Cannot divide by zero
Program Finished
```

### Keywords

- try
- except
- else
- finally
- raise

---

# 34. What is raise?

`raise` is used to throw an exception manually.

### Example

```python
age = -5

if age < 0:
    raise ValueError("Age cannot be negative")
```

Output

```
ValueError: Age cannot be negative
```

### Interview Tip

Use `raise` to validate inputs and enforce business rules.

---

# 35. What is PEP 8?

PEP 8 is the official Python style guide.

### Rules

- 4 spaces for indentation
- Variable names in `snake_case`
- Class names in `PascalCase`
- Constant names in `UPPER_CASE`
- Maximum line length ≈ 79 characters (traditional guideline)

### Example

Good

```python
student_name = "Rahul"
```

Bad

```python
StudentName = "Rahul"
```

### Interview Tip

Following PEP 8 improves readability and maintainability.

---

# 36. What is a Virtual Environment?

A virtual environment creates an isolated Python environment for each project.

### Create

```bash
python -m venv venv
```

### Activate

Windows

```bash
venv\Scripts\activate
```

Linux / macOS

```bash
source venv/bin/activate
```

### Install Package

```bash
pip install flask
```

### Advantages

- Dependency isolation
- Prevents version conflicts
- Easier deployment

---

# 37. What is GIL (Global Interpreter Lock)?

### Answer

The Global Interpreter Lock (GIL) allows only one thread to execute Python bytecode at a time in CPython.

### Advantages

- Simpler memory management
- Thread safety for Python objects

### Disadvantages

- Limits CPU-bound multithreading

### Interview Tip

GIL mainly affects **CPU-bound** tasks, not I/O-bound tasks.

---

# 38. Multithreading vs Multiprocessing

## Multithreading

Uses multiple threads in one process.

```python
import threading
```

Best for:

- File operations
- API calls
- Database operations
- Network requests

---

## Multiprocessing

Uses multiple processes.

```python
import multiprocessing
```

Best for:

- Image processing
- Machine Learning
- Heavy computations
- CPU-intensive tasks

### Difference

| Multithreading | Multiprocessing |
|----------------|-----------------|
| Threads | Processes |
| Shared memory | Separate memory |
| Affected by GIL | Not affected by GIL |
| Good for I/O | Good for CPU |

---

# 39. What is Python Memory Management?

Python manages memory automatically.

### Components

- Reference Counting
- Garbage Collector
- Private Heap

### Example

```python
a = [1, 2, 3]

b = a

del a
```

The object remains alive because `b` still references it.

### Interview Tip

Python frees memory when no references to an object remain.

---

# 40. What is Garbage Collection?

Garbage Collection removes objects that are no longer reachable.

Python primarily uses:

- Reference Counting
- Cyclic Garbage Collector

### Example

```python
import gc

gc.collect()
```

### Interview Questions

Who manages memory?

**Answer:** Python Interpreter

Can we manually trigger Garbage Collection?

**Answer:** Yes.

```python
import gc

gc.collect()
```

# Python Interview Questions (4–8 LPA SDE)

# 41. Reverse a String

### Method 1: Slicing (Most Preferred)

```python
text = "Python"

print(text[::-1])
```

Output

```
nohtyP
```

### Method 2: reversed()

```python
text = "Python"

print("".join(reversed(text)))
```

### Time Complexity

```
O(n)
```

### Interview Tip

Slicing (`[::-1]`) is the most common interview answer.

---

# 42. Check if a String is Palindrome

### Example

```python
def palindrome(text):

    return text == text[::-1]

print(palindrome("madam"))
```

Output

```
True
```

### Time Complexity

```
O(n)
```

---

# 43. Fibonacci Series

```python
def fibonacci(n):

    a, b = 0, 1

    for _ in range(n):

        print(a, end=" ")

        a, b = b, a + b

fibonacci(8)
```

Output

```
0 1 1 2 3 5 8 13
```

### Time Complexity

```
O(n)
```

---

# 44. Check Prime Number

```python
def is_prime(num):

    if num <= 1:
        return False

    for i in range(2, int(num**0.5) + 1):

        if num % i == 0:
            return False

    return True

print(is_prime(17))
```

Output

```
True
```

### Time Complexity

```
O(√n)
```

---

# 45. Count Frequency of Characters

```python
from collections import Counter

text = "banana"

print(Counter(text))
```

Output

```
Counter({'a':3,'n':2,'b':1})
```

### Without Counter

```python
text = "banana"

freq = {}

for ch in text:

    freq[ch] = freq.get(ch, 0) + 1

print(freq)
```

---

# 46. Remove Duplicates from a List

### Method 1

```python
numbers = [1,2,2,3,4,4]

unique = list(set(numbers))

print(unique)
```

### Method 2 (Preserves Order)

```python
numbers = [1,2,2,3,4,4]

unique = list(dict.fromkeys(numbers))

print(unique)
```

### Interview Tip

`dict.fromkeys()` preserves insertion order (Python 3.7+).

---

# 47. Most Useful Built-in Functions

### len()

```python
len([1,2,3])
```

Output

```
3
```

---

### max()

```python
max([5,10,2])
```

Output

```
10
```

---

### min()

```python
min([5,10,2])
```

Output

```
2
```

---

### sum()

```python
sum([1,2,3])
```

Output

```
6
```

---

### sorted()

```python
sorted([3,1,2])
```

Output

```
[1,2,3]
```

---

### zip()

```python
a = [1,2]

b = ["A","B"]

print(list(zip(a,b)))
```

Output

```
[(1,'A'), (2,'B')]
```

---

### enumerate()

```python
names = ["A","B","C"]

for index, value in enumerate(names):

    print(index, value)
```

Output

```
0 A
1 B
2 C
```

---

# 48. Difference Between List, Tuple, Set, and Dictionary

| Feature | List | Tuple | Set | Dictionary |
|----------|------|-------|-----|------------|
| Ordered | ✅ | ✅ | ❌ | ✅ |
| Mutable | ✅ | ❌ | ✅ | ✅ |
| Duplicate Values | ✅ | ✅ | ❌ | Values only |
| Indexed | ✅ | ✅ | ❌ | By key |

### Interview Tip

Remember:

- List → Mutable sequence
- Tuple → Immutable sequence
- Set → Unique elements
- Dictionary → Key-value mapping

---

# 49. Common Time Complexities

| Operation | Complexity |
|-----------|------------|
| List Index | O(1) |
| List Search | O(n) |
| List Append | O(1) (amortized) |
| Dictionary Lookup | O(1) Average |
| Set Lookup | O(1) Average |
| Sorting | O(n log n) |

### Interview Tip

Python dictionaries and sets use **hash tables**, which is why lookups are usually O(1) on average.

---

# 50. Most Frequently Asked Python Interview Questions

## Q1. Why is Python dynamically typed?

Variables store references to objects, so the type is determined at runtime.

---

## Q2. Is Python object-oriented?

Yes.

Everything in Python is an object, including:

- int
- float
- string
- list
- function
- class

---

## Q3. Difference Between `is` and `==`

| `is` | `==` |
|-------|-------|
| Identity | Value |
| Memory location | Object content |

---

## Q4. What is `__name__ == "__main__"`?

It ensures code executes only when the file is run directly.

---

## Q5. Why use virtual environments?

To isolate project dependencies and avoid package conflicts.

---

## Q6. Difference Between `append()` and `extend()`

| append() | extend() |
|-----------|----------|
| Adds one object | Adds all elements from an iterable |

---

## Q7. Difference Between Generator and Iterator

| Generator | Iterator |
|------------|----------|
| Uses `yield` | Uses `__next__()` |
| Easier to write | More boilerplate |

---

## Q8. What is the GIL?

The Global Interpreter Lock allows only one thread to execute Python bytecode at a time in CPython.

---

## Q9. Why is Python slower than Java?

- Interpreted execution
- Dynamic typing
- Runtime overhead

---

## Q10. How is memory managed?

Python uses:

- Reference Counting
- Cyclic Garbage Collector
- Private Heap