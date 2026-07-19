# Object-Oriented Programming (OOP) in Java

Object-Oriented Programming (OOP) is a programming method that organizes a program using classes and objects. It helps in making programs easier to develop, reuse, and maintain.

---

# 1. Class

A **class** is a blueprint or template used to create objects. It contains:

* **Data members (variables)** → Properties
* **Methods (functions)** → Behavior

## Example

A `Student` class contains student information and actions.

```java
class Student {
    int id;
    String name;

    void display() {
        System.out.println(id + " " + name);
    }
}
```

### Here:

* `id` and `name` are properties.
* `display()` is a method.

A class itself does not occupy memory for its data members until objects are created.

---

# 2. Object

An **object** is an instance of a class.

## Syntax

```java
Student s = new Student();
```

* `new` creates the object.
* Memory is allocated for the object.
* `s` stores the reference (address) of the object.

## Example

```java
class Student {
    int id;
    String name;

    void display() {
        System.out.println(id + " " + name);
    }
}

public class Main {
    public static void main(String[] args) {
        Student s = new Student();

        s.id = 101;
        s.name = "Rahul";

        s.display();
    }
}
```

### Output

```text
101 Rahul
```
```
` static `
Means the method belongs to the class, not to an object.
The JVM can call main() without creating an object of the class.
```
---

# 3. Inheritance

Inheritance allows one class to acquire the properties and methods of another class.

* Existing class → **Parent (Base/Super class)**
* New class → **Child (Derived/Sub class)**

## Syntax

```java
class Parent {
}

class Child extends Parent {
}
```

---

## Example of Inheritance

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

### Output

```text
Eating
Barking
```

The `Dog` class inherits the `eat()` method from `Animal`.

---

# Types of Inheritance in Java

## 1. Single Inheritance

One child class inherits one parent class.

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
```

```text
Animal
   ↓
 Dog
```

---

## 2. Multilevel Inheritance

A class inherits another derived class.

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

class Puppy extends Dog {
    void weep() {
        System.out.println("Weeping");
    }
}
```

```text
Animal
   ↓
 Dog
   ↓
Puppy
```

---

## 3. Hierarchical Inheritance

Multiple classes inherit from one parent class.

```java
class Animal {
    void eat() {
        System.out.println("Eating");
    }
}

class Dog extends Animal {
}

class Cat extends Animal {
}
```

```text
      Animal
      /    \
    Dog    Cat
```

Both `Dog` and `Cat` inherit `eat()`.

---

## 4. Multiple Inheritance

One class inherits from multiple classes.

```java
class A {
}

class B {
}

// class C extends A, B ❌ Not allowed
```

Java does not support multiple inheritance using classes because it creates ambiguity.

Java achieves multiple inheritance using interfaces.

```java
interface A {
    void show();
}

interface B {
    void display();
}

class C implements A, B {
    public void show() {
        System.out.println("Show");
    }

    public void display() {
        System.out.println("Display");
    }
}
```

---

## 5. Hybrid Inheritance

Hybrid inheritance is a combination of two or more inheritance types.

Java does not support hybrid inheritance with classes directly, but it can be achieved using interfaces.

```java
interface A {
    void show();
}

class B {
    void display() {
        System.out.println("Display");
    }
}

class C extends B implements A {
    public void show() {
        System.out.println("Show");
    }
}
```

---

# Summary Table

| Type         | Description                      | Java Support            |
| ------------ | -------------------------------- | ----------------------- |
| Single       | One parent → One child           | ✅ Yes                   |
| Multilevel   | Grandparent → Parent → Child     | ✅ Yes                   |
| Hierarchical | One parent → Many children       | ✅ Yes                   |
| Multiple     | Many parents → One child         | ❌ Classes, ✅ Interfaces |
| Hybrid       | Combination of inheritance types | ✅ Using interfaces      |

---

# Real-Life Example

* **Animal** → Parent class
* **Dog** → Child class

Dog automatically gets:

* `eat()`
* `sleep()`

Dog can also have its own method:

* `bark()`

This saves code and allows reuse, which is the main purpose of inheritance in OOP.

# `this`, `final`, `finally`, and `finalize()` in Java

These are four different keywords/features in Java. Although their names are similar, they have completely different purposes.

---

# 1. `this` Keyword

The `this` keyword refers to the **current object** of a class.

It is mainly used to:
- Access current object's variables.
- Call current object's methods.
- Call another constructor of the same class.

## Why do we use `this`?

Sometimes local variables and instance variables have the same name.

Without `this`, Java gets confused.

### Example

```java
class Student {
    int id;

    Student(int id) {
        this.id = id;
    }

    void display() {
        System.out.println(id);
    }
}

public class Main {
    public static void main(String[] args) {
        Student s = new Student(101);
        s.display();
    }
}
```

### Output

```
101
```

### Explanation

```java
this.id = id;
```

- `this.id` → Instance variable (current object's variable)
- `id` → Constructor parameter

Without `this`:

```java
id = id;
```

Both refer to the constructor parameter, so the instance variable would never be updated.

---

# 2. `final` Keyword

The `final` keyword is used to **restrict modification**.

It can be used with:
- Variables
- Methods
- Classes

---

## A. Final Variable

A final variable cannot be changed after it is assigned.

### Example

```java
final int age = 20;

age = 25;    // Error
```

### Example Program

```java
public class Main {
    public static void main(String[] args) {
        final int age = 20;

        System.out.println(age);
    }
}
```

### Output

```
20
```

---

## B. Final Method

A final method cannot be overridden by a child class.

### Example

```java
class Animal {
    final void eat() {
        System.out.println("Eating");
    }
}

class Dog extends Animal {

    // void eat() {} ❌ Error
}
```

---

## C. Final Class

A final class cannot be inherited.

### Example

```java
final class Animal {
}

// class Dog extends Animal {} ❌ Error
```

---

# Summary of `final`

| Used With | Meaning |
|-----------|---------|
| Variable | Value cannot change |
| Method | Cannot be overridden |
| Class | Cannot be inherited |

---

# 3. `finally` Block

`finally` is used with **exception handling**.

The code inside the `finally` block **always executes**, whether an exception occurs or not.

It is commonly used to:
- Close files
- Close database connections
- Release resources

## Syntax

```java
try {

}
catch(Exception e) {

}
finally {

}
```

### Example

```java
public class Main {
    public static void main(String[] args) {

        try {
            int a = 10 / 0;
        }
        catch(Exception e) {
            System.out.println("Exception caught");
        }
        finally {
            System.out.println("Finally block executed");
        }

    }
}
```

### Output

```
Exception caught
Finally block executed
```

Even if an exception occurs, the `finally` block executes.

---

# 4. `finalize()` Method

`finalize()` is a method of the `Object` class.

It was intended to execute just before an object is removed from memory by the Garbage Collector.

### Example

```java
class Student {

    protected void finalize() {
        System.out.println("Object destroyed");
    }
}
```

However, **`finalize()` is deprecated** and should **not** be used in modern Java.

Modern Java uses:
- `try-with-resources`
- `AutoCloseable`
- Proper resource management

instead of `finalize()`.

---

# Difference Between `finally` and `finalize()`

| finally | finalize() |
|----------|------------|
| Keyword | Method |
| Used in exception handling | Used by Garbage Collector |
| Always executes after `try`/`catch` | May execute before object removal |
| Used to release resources | Deprecated and should not be used |

---

# Difference Between `final`, `finally`, and `finalize()`

| Feature | Type | Purpose |
|---------|------|---------|
| `final` | Keyword | Prevent modification (variable, method, class) |
| `finally` | Block | Executes after `try`/`catch`, used for cleanup |
| `finalize()` | Method | Called by Garbage Collector before object removal (deprecated) |

---

# Quick Revision

| Keyword | Purpose |
|----------|---------|
| `this` | Refers to the current object |
| `final` | Prevents modification |
| `finally` | Always executes after `try`/`catch` |
| `finalize()` | Garbage Collector method (deprecated) |

---

# Easy Way to Remember

- **`this`** → **This object**
- **`final`** → **Cannot change**
- **`finally`** → **Always runs**
- **`finalize()`** → **Runs before object destruction (deprecated)**

# Constructors and Destructors in Java

A **constructor** is a special method that is automatically called when an object is created. Its main purpose is to initialize the object's data.

---

# Constructor

## Definition

A constructor is a special method that:

- Has the **same name as the class**.
- Has **no return type** (not even `void`).
- Is automatically called when an object is created using the `new` keyword.

## Syntax

```java
class Student {

    Student() {
        // Constructor
    }

}
```

---

# Why Do We Use Constructors?

Constructors are used to:

- Initialize object variables.
- Assign default values.
- Execute setup code when an object is created.

Instead of writing:

```java
Student s = new Student();

s.id = 101;
s.name = "Rahul";
```

we can initialize everything inside the constructor.

---

# Example

```java
class Student {

    int id;
    String name;

    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    void display() {
        System.out.println(id + " " + name);
    }
}

public class Main {

    public static void main(String[] args) {

        Student s = new Student(101, "Rahul");

        s.display();
    }
}
```

### Output

```
101 Rahul
```

---

# Types of Constructors

Java mainly has **two types of constructors**.

## 1. Default Constructor

A constructor with **no parameters**.

It initializes the object with default values.

### Example

```java
class Student {

    Student() {
        System.out.println("Object Created");
    }

}

public class Main {

    public static void main(String[] args) {

        Student s = new Student();

    }
}
```

### Output

```
Object Created
```

> **Note:** If you do not write any constructor, the Java compiler automatically provides a **default constructor** (also called an implicit default constructor). However, if you define any constructor yourself, the compiler no longer creates this default constructor automatically.

---

## 2. Parameterized Constructor

A constructor that accepts one or more parameters.

It is used to initialize objects with different values.

### Example

```java
class Student {

    int id;
    String name;

    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    void display() {
        System.out.println(id + " " + name);
    }

}

public class Main {

    public static void main(String[] args) {

        Student s1 = new Student(101, "Rahul");
        Student s2 = new Student(102, "Aman");

        s1.display();
        s2.display();

    }
}
```

### Output

```
101 Rahul
102 Aman
```

---

# Constructor Overloading

A class can have multiple constructors with different parameter lists.

### Example

```java
class Student {

    Student() {
        System.out.println("Default Constructor");
    }

    Student(int id) {
        System.out.println("ID = " + id);
    }

    Student(int id, String name) {
        System.out.println(id + " " + name);
    }

}

public class Main {

    public static void main(String[] args) {

        new Student();
        new Student(101);
        new Student(101, "Rahul");

    }
}
```

### Output

```
Default Constructor
ID = 101
101 Rahul
```

---

# `this()` Constructor

`this()` is used to call another constructor of the same class.

### Example

```java
class Student {

    Student() {
        this(101);
        System.out.println("Default Constructor");
    }

    Student(int id) {
        System.out.println("ID = " + id);
    }

}

public class Main {

    public static void main(String[] args) {

        Student s = new Student();

    }
}
```

### Output

```
ID = 101
Default Constructor
```

> **Rule:** `this()` must be the **first statement** inside a constructor.

---

# Constructor vs Method

| Constructor | Method |
|-------------|--------|
| Same name as class | Any valid name |
| No return type | Has a return type (or `void`) |
| Called automatically | Called explicitly |
| Used to initialize objects | Used to perform operations |

---

# Destructor

A **destructor** is a special method that destroys an object and releases its resources.

Languages like **C++** have destructors.

### Example (C++)

```cpp
class Student {
public:
    ~Student() {
        cout << "Object Destroyed";
    }
};
```

---

# Does Java Have a Destructor?

**No.**

Java **does not have destructors**.

Java automatically manages memory using the **Garbage Collector (GC)**.

When an object is no longer referenced, the Garbage Collector reclaims its memory automatically.

### Example

```java
Student s = new Student();

s = null;
```

Now the object has no reference.

Later, the Garbage Collector may remove it from memory automatically.

> You cannot predict exactly **when** the Garbage Collector will run.

---

# What About `finalize()`?

Earlier versions of Java provided the `finalize()` method, which could be called before an object was removed.

```java
class Student {

    protected void finalize() {
        System.out.println("Object Destroyed");
    }

}
```

However:

- `finalize()` is **deprecated**.
- It is **not guaranteed** to execute.
- It should **not** be used in modern Java.

Modern Java uses:
- Garbage Collector (GC)
- `try-with-resources`
- `AutoCloseable`

for proper resource management.

---

# Summary

| Feature | Constructor | Destructor |
|---------|-------------|------------|
| Purpose | Initialize an object | Destroy an object |
| Available in Java | ✅ Yes | ❌ No |
| Called Automatically | Yes, when an object is created | Java uses the Garbage Collector instead |
| Can Be Overloaded | ✅ Yes | Not applicable |

---

# Quick Revision

- Constructor → Initializes an object.
- Constructor name must match the class name.
- Constructors have no return type.
- Types:
  - Default Constructor
  - Parameterized Constructor
- Constructors can be overloaded.
- `this()` calls another constructor in the same class.
- Java does **not** support destructors.
- Memory is managed automatically by the Garbage Collector.
- `finalize()` is deprecated and should not be used.

# Copy Constructor in Java

A **copy constructor** is a constructor that creates a new object by copying the values from another object of the same class.

> **Note:** Unlike C++, Java does **not** provide a built-in copy constructor. We create it manually.

---

# Why Do We Use a Copy Constructor?

It is used to:
- Create a duplicate object.
- Copy all instance variables from one object to another.
- Avoid manually assigning each field every time.

---

# Syntax

```java
class ClassName {

    ClassName(ClassName obj) {
        // Copy data from obj
    }

}
```

---

# Example

```java
class Student {

    int id;
    String name;

    // Parameterized Constructor
    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }

    // Copy Constructor
    Student(Student s) {
        this.id = s.id;
        this.name = s.name;
    }

    void display() {
        System.out.println(id + " " + name);
    }
}

public class Main {

    public static void main(String[] args) {

        Student s1 = new Student(101, "Rahul");

        // Copy s1 into s2
        Student s2 = new Student(s1);

        s1.display();
        s2.display();

    }
}
```

### Output

```
101 Rahul
101 Rahul
```

---

# How It Works

### Step 1

```java
Student s1 = new Student(101, "Rahul");
```

Memory:

```
s1
------------
id = 101
name = Rahul
```

---

### Step 2

```java
Student s2 = new Student(s1);
```

The copy constructor receives `s1`.

```java
Student(Student s) {
    this.id = s.id;
    this.name = s.name;
}
```

Here:

- `this.id` → `s2` object's `id`
- `s.id` → `s1` object's `id`

So Java copies:

```
s2.id = s1.id
s2.name = s1.name
```

Memory becomes:

```
s1                    s2
------                ------
id = 101              id = 101
name = Rahul          name = Rahul
```

The values are the same, but `s1` and `s2` are **different objects**.

---

# Verifying They Are Different Objects

```java
System.out.println(s1 == s2);
```

### Output

```
false
```

`==` compares object references (memory addresses), not the values.

---

# Copy Constructor vs Parameterized Constructor

| Parameterized Constructor | Copy Constructor |
|---------------------------|------------------|
| Receives values | Receives another object |
| Initializes with new data | Initializes by copying another object |
| Example: `Student(101, "Rahul")` | Example: `Student(s1)` |

---

# Summary

- A copy constructor creates a new object by copying another object's data.
- Java does **not** have a built-in copy constructor.
- We create it manually.
- Syntax:

```java
ClassName(ClassName obj) {
    // Copy fields
}
```

- The copied object has the **same values** but is a **different object in memory**.