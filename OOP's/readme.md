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

# Polymorphism in Java

**Polymorphism** means **"One thing, many forms."**

In Java, polymorphism allows the **same method name** to perform **different tasks** depending on the situation.

**Hinglish:**

> **Ek hi method alag-alag situations mein alag tarike se behave kare, usse Polymorphism kehte hain.**

---

# Types of Polymorphism

Java supports two types of polymorphism:

1. Compile-Time Polymorphism (Method Overloading)
2. Run-Time Polymorphism (Method Overriding)

---

# 1. Compile-Time Polymorphism (Method Overloading)

Method overloading means **multiple methods have the same name but different parameters**.

The compiler decides which method to call **at compile time**.

## Example

```java
class Calculator {

    int add(int a, int b) {
        return a + b;
    }

    int add(int a, int b, int c) {
        return a + b + c;
    }
}

public class Main {

    public static void main(String[] args) {

        Calculator c = new Calculator();

        System.out.println(c.add(10, 20));
        System.out.println(c.add(10, 20, 30));

    }
}
```

### Output

```
30
60
```

### Explanation

The method name is the same (`add()`), but the parameters are different.

Java decides which method to call while compiling the program.

---

# 2. Run-Time Polymorphism (Method Overriding)

Method overriding means a child class provides its own implementation of a method already defined in the parent class.

The JVM decides which method to execute **at runtime**.

## Example

```java
class Animal {

    void sound() {
        System.out.println("Animal makes sound");
    }
}

class Dog extends Animal {

    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

public class Main {

    public static void main(String[] args) {

        Animal a = new Dog();

        a.sound();

    }
}
```

### Output

```
Dog barks
```

### Explanation

Although the reference type is `Animal`, the actual object is `Dog`.

So Java calls the `Dog` class method at runtime.

---

# Real-Life Example

Imagine a person has one action: **Speak**.

Different people speak differently.

```
Person
   |
Speak()

Student  → "Asking Questions"
Teacher  → "Teaching"
Doctor   → "Giving Medical Advice"
```

The action (`Speak`) is the same, but the behavior changes.

This is **Polymorphism**.

---

# Another Real-Life Example

### Payment System

```
Payment

Pay()
```

Different payment methods:

- Credit Card → Pay using card
- UPI → Pay using QR Code
- Net Banking → Pay using bank account

The method name is the same:

```java
pay();
```

But the behavior changes depending on the payment method.

---

# Method Overloading vs Method Overriding

| Method Overloading | Method Overriding |
|--------------------|-------------------|
| Same class | Parent and Child class |
| Same method name | Same method name |
| Different parameters | Same parameters |
| Compile-time | Run-time |
| Increases readability | Provides different implementation |

---

# Summary Table

| Type | Also Known As | Decision Taken By |
|------|---------------|-------------------|
| Compile-Time Polymorphism | Method Overloading | Compiler |
| Run-Time Polymorphism | Method Overriding | JVM |

---

# Quick Revision

- **Polymorphism** = One method, many forms.
- **Compile-Time Polymorphism** = Method Overloading.
- **Run-Time Polymorphism** = Method Overriding.
- Overloading → Same method name, different parameters.
- Overriding → Child class changes the parent's method implementation.
- Compile-Time → Decided by the compiler.
- Run-Time → Decided by the JVM.

# Encapsulation in Java

**Encapsulation** is the process of **wrapping data (variables) and methods into a single unit (class)** and **protecting the data from direct access**.

**Hinglish:**

> **Data (variables) aur methods ko ek class ke andar rakhna aur data ko direct access se protect karna, Encapsulation kehlata hai.**

---

# Why Do We Use Encapsulation?

Encapsulation is used to:

- Protect data from unauthorized access.
- Improve security.
- Control how data is accessed or modified.
- Make code easier to maintain.

---

# How is Encapsulation Achieved?

Using:
- `private` variables (data hiding)
- `public` getter and setter methods

---

# Example

```java
class Student {

    private int id;

    // Setter Method
    public void setId(int id) {
        this.id = id;
    }

    // Getter Method
    public int getId() {
        return id;
    }
}

public class Main {

    public static void main(String[] args) {

        Student s = new Student();

        s.setId(101);

        System.out.println(s.getId());

    }
}
```

### Output

```
101
```

---

# Explanation

```java
private int id;
```

`id` is **private**, so it **cannot be accessed directly** outside the class.

❌ Not Allowed

```java
Student s = new Student();

s.id = 101;     // Error
```

Instead, we use:

```java
s.setId(101);
```

to store the value, and

```java
s.getId();
```

to read the value.

This keeps the data secure.

---

# Real-Life Example

### ATM Machine

When you withdraw money:

- You **cannot directly access** the bank's database.
- You enter your PIN.
- The ATM checks your details.
- If everything is correct, it gives you money.

```
Customer
    ↓
ATM Machine
    ↓
Bank Database
```

The bank data is protected and can only be accessed through the ATM.

This is **Encapsulation**.

---

# Another Real-Life Example

### Mobile Phone

You increase the volume by pressing:

```
Volume Up
```

You don't directly change the phone's internal hardware.

The phone provides a controlled way to modify the volume.

This is also an example of Encapsulation.

---

# Advantages of Encapsulation

- Data Security
- Data Hiding
- Better Code Maintenance
- Controlled Access
- Improved Reusability

---

# Summary

| Feature | Description |
|---------|-------------|
| Data Members | Usually `private` |
| Methods | `public` Getter and Setter |
| Purpose | Hide data and provide controlled access |

---

# Quick Revision

- Encapsulation = **Data Hiding + Wrapping Data and Methods**
- Use `private` variables.
- Access data using Getter and Setter methods.
- Prevents direct access to data.
- Improves security and maintainability.

---

# One-Line Definition (Hinglish)

> **Encapsulation ka matlab hai data aur methods ko ek class ke andar rakhna aur `private` variables aur getter/setter methods ki help se data ko direct access se protect karna.**


# Abstraction in Java

**Abstraction** is the process of **hiding implementation details and showing only the essential functionality to the user.**

**Hinglish:**

> **Implementation (andar kaise kaam ho raha hai) ko hide karke sirf zaroori functionality dikhana, Abstraction kehlata hai.**

---

# Why Do We Use Abstraction?

Abstraction is used to:

- Hide complex implementation.
- Show only essential features.
- Improve security.
- Reduce code complexity.

---

# Real-Life Example

## ATM Machine

When you withdraw money:

- You insert the ATM card.
- Enter the PIN.
- Select the amount.

You **don't know** how the bank verifies the PIN, checks your balance, or processes the transaction.

You only use the required functionality.

This is **Abstraction**.

---

## Car Example

When you drive a car:

- You press the accelerator.
- Apply the brakes.
- Turn the steering wheel.

You don't need to know how the engine, gearbox, or fuel injection system works internally.

You only use the necessary controls.

This is also **Abstraction**.

---

# How is Abstraction Achieved in Java?

Java provides two ways:

1. Abstract Class
2. Interface

---

# 1. Abstract Class

An **abstract class** is a class that cannot be instantiated (you cannot create its object).

It may contain:

- Abstract methods (without a body)
- Concrete methods (with a body)

## Example

```java
abstract class Animal {

    abstract void sound();

    void eat() {
        System.out.println("Animal is eating");
    }
}

class Dog extends Animal {

    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

public class Main {

    public static void main(String[] args) {

        Dog d = new Dog();

        d.sound();
        d.eat();

    }
}
```

### Output

```
Dog barks
Animal is eating
```

---

# 2. Interface

An **interface** defines a contract that classes must follow.

A class that implements an interface must provide the implementation of its methods.

## Example

```java
interface Animal {

    void sound();
}

class Dog implements Animal {

    public void sound() {
        System.out.println("Dog barks");
    }
}

public class Main {

    public static void main(String[] args) {

        Dog d = new Dog();

        d.sound();

    }
}
```

### Output

```
Dog barks
```

---

# Abstraction vs Encapsulation

| Abstraction | Encapsulation |
|-------------|---------------|
| Hides implementation details | Hides data |
| Focuses on **what** an object does | Focuses on **how** data is protected |
| Achieved using Abstract Classes and Interfaces | Achieved using `private` variables and Getter/Setter methods |

---

# Summary

| Feature | Description |
|---------|-------------|
| Purpose | Hide implementation details |
| Achieved Using | Abstract Class and Interface |
| Benefit | Reduces complexity and improves security |

---

# Quick Revision

- Abstraction = Hide implementation, show only functionality.
- Achieved using:
  - Abstract Class
  - Interface
- You cannot create an object of an abstract class.
- A class implementing an interface must implement its methods.

---

# One-Line Definition (Hinglish)

> **Abstraction ka matlab hai implementation details ko hide karke user ko sirf zaroori functionality dikhana.**

# Access Specifiers in Java

**Access Specifiers** are keywords used to **control the visibility (accessibility) of classes, variables, methods, and constructors.**

**Hinglish:**

> **Access Specifiers batate hain ki class, variable, method ya constructor ko kahan-kahan se access kiya ja sakta hai.**

---

# Types of Access Specifiers

Java has **4 Access Specifiers**:

1. `public`
2. `private`
3. `protected`
4. Default (No Access Modifier)

---

# 1. `public`

A `public` member can be accessed **from anywhere** in the program.

### Example

```java
class Student {

    public int id = 101;
}

public class Main {

    public static void main(String[] args) {

        Student s = new Student();

        System.out.println(s.id);

    }
}
```

### Output

```
101
```

---

# 2. `private`

A `private` member can be accessed **only within the same class**.

### Example

```java
class Student {

    private int id = 101;

    public void display() {
        System.out.println(id);
    }
}

public class Main {

    public static void main(String[] args) {

        Student s = new Student();

        s.display();

        // System.out.println(s.id); ❌ Error

    }
}
```

### Output

```
101
```

---

# 3. `protected`

A `protected` member can be accessed:

- Inside the same class.
- Inside the same package.
- In child classes (even if they are in different packages).

### Example

```java
class Animal {

    protected void sound() {
        System.out.println("Animal Sound");
    }
}

class Dog extends Animal {

    void bark() {
        sound();
    }
}

public class Main {

    public static void main(String[] args) {

        Dog d = new Dog();

        d.bark();

    }
}
```

### Output

```
Animal Sound
```

---

# 4. Default (No Access Modifier)

If you don't write any access specifier, Java uses the **default** access level.

A default member can be accessed **only within the same package**.

### Example

```java
class Student {

    int id = 101;
}
```

`id` can be accessed only by classes in the same package.

---

# Access Level Summary

| Access Specifier | Same Class | Same Package | Child Class (Different Package) | Different Package |
|------------------|:----------:|:------------:|:-------------------------------:|:-----------------:|
| `public` | ✅ | ✅ | ✅ | ✅ |
| `protected` | ✅ | ✅ | ✅ | ❌ |
| Default | ✅ | ✅ | ❌ | ❌ |
| `private` | ✅ | ❌ | ❌ | ❌ |

---

# Real-Life Example

Imagine a **Bank Locker**.

### `public`

Like the **bank's address**.

Everyone can access it.

---

### `private`

Like your **ATM PIN**.

Only you can access it.

---

### `protected`

Like a **family locker**.

Only family members (child classes) can access it.

---

### Default

Like an **office notice board**.

Only people inside the same office (package) can access it.

---

# Which Access Specifier Should You Use?

| Situation | Access Specifier |
|-----------|------------------|
| Everyone should access | `public` |
| Data should be hidden | `private` |
| Child classes should access | `protected` |
| Only same package should access | Default |

---

# Quick Revision

- **public** → Accessible from everywhere.
- **private** → Accessible only inside the same class.
- **protected** → Accessible in the same package and child classes.
- **Default** → Accessible only within the same package.

---

# One-Line Definition (Hinglish)

> **Access Specifiers wo keywords hote hain jo decide karte hain ki class, method, variable ya constructor ko kahan-kahan se access kiya ja sakta hai.**

# Virtual Function, Pure Virtual Function, and Friend Function (C++)

> **Note:** These concepts belong to **C++**, not Java.

---

# 1. Virtual Function

A **virtual function** is a function declared with the `virtual` keyword in the parent class. It allows the **child class to override the function**, and the decision of which function to call is made at **runtime**.

**Hinglish:**

> **Virtual function parent class mein declare hoti hai aur child class usko override kar sakti hai. Runtime par actual object ke hisaab se function call hota hai.**

---

## Syntax

```cpp
class Animal {
public:
    virtual void sound() {
        cout << "Animal Sound";
    }
};
```

---

## Example

```cpp
#include <iostream>
using namespace std;

class Animal {
public:
    virtual void sound() {
        cout << "Animal Sound" << endl;
    }
};

class Dog : public Animal {
public:
    void sound() override {
        cout << "Dog Barks" << endl;
    }
};

int main() {

    Animal* a = new Dog();

    a->sound();

    return 0;
}
```

### Output

```
Dog Barks
```

---

## Real-Life Example

Think of a **Remote Control**.

```
Remote
   ↓
Power Button
```

The same **Power** button:

- TV → Turns on TV
- AC → Turns on AC
- Fan → Turns on Fan

Same function, different behavior depending on the actual device.

This is **Virtual Function**.

---

# 2. Pure Virtual Function

A **pure virtual function** is a virtual function with **no implementation** in the base class.

It is declared using `= 0`.

A class containing at least one pure virtual function becomes an **Abstract Class**.

**Hinglish:**

> **Pure virtual function sirf declaration deti hai, implementation nahi. Child class ko uski implementation deni hi padti hai.**

---

## Syntax

```cpp
virtual void sound() = 0;
```

---

## Example

```cpp
#include <iostream>
using namespace std;

class Animal {
public:
    virtual void sound() = 0;
};

class Dog : public Animal {
public:
    void sound() override {
        cout << "Dog Barks" << endl;
    }
};

int main() {

    Dog d;

    d.sound();

    return 0;
}
```

### Output

```
Dog Barks
```

---

## Why Use a Pure Virtual Function?

Suppose every animal makes a different sound.

The parent class (`Animal`) doesn't know the sound.

So it only declares:

```cpp
virtual void sound() = 0;
```

Each child class must define its own sound.

---

## Real-Life Example

Imagine a company.

```
Employee

Work()
```

The company only says every employee must **work**.

How they work depends on the employee.

- Developer → Writes code
- Tester → Tests software
- Manager → Manages the team

The base class defines only the rule, not the implementation.

This is a **Pure Virtual Function**.

---

# 3. Friend Function

A **friend function** is **not a member of the class**, but it can access the class's **private** and **protected** members.

It is declared using the `friend` keyword.

**Hinglish:**

> **Friend function class ka member nahi hota, lekin class ke private aur protected members ko access kar sakta hai.**

---

## Syntax

```cpp
class Student {

    friend void display(Student);

};
```

---

## Example

```cpp
#include <iostream>
using namespace std;

class Student {

private:
    int id = 101;

public:
    friend void display(Student);
};

void display(Student s) {
    cout << s.id;
}

int main() {

    Student s;

    display(s);

    return 0;
}
```

### Output

```
101
```

---

## Why Use a Friend Function?

Normally:

```cpp
s.id;
```

❌ Not allowed because `id` is private.

But if the function is declared as a **friend**, it can access private data.

---

## Real-Life Example

Imagine a **Bank Locker**.

```
Locker
│
├── Owner ✔
├── Manager ✔
└── Stranger ❌
```

Normally only the owner can access the locker.

But the bank manager has special permission.

The **manager** is like a **friend function**.

---

# Difference Between Virtual and Pure Virtual Function

| Virtual Function | Pure Virtual Function |
|------------------|-----------------------|
| Has implementation | No implementation |
| Child may override | Child must override |
| Base class object can be created | Base class becomes abstract, object cannot be created |

---

# Difference Between Virtual Function and Friend Function

| Virtual Function | Friend Function |
|------------------|-----------------|
| Member function | Not a member function |
| Supports runtime polymorphism | Does not support polymorphism |
| Can be overridden | Cannot be overridden |
| Declared using `virtual` | Declared using `friend` |

---

# Quick Revision

- **Virtual Function** → Supports runtime polymorphism.
- **Pure Virtual Function** → Declares a method without implementation (`= 0`); child class must implement it.
- **Friend Function** → Not a class member, but can access private and protected members.

---

# One-Line Definitions (Hinglish)

- **Virtual Function:** Parent class ka function jo runtime par child class ke overridden function ko call karne deta hai.

- **Pure Virtual Function:** Aisa virtual function jiska implementation parent class mein nahi hota aur child class ko implement karna hi padta hai.

- **Friend Function:** Aisa function jo class ka member nahi hota, lekin class ke private aur protected members ko access kar sakta hai.

# 1. Exception Handling (Java)

**Exception Handling** is a mechanism used to **handle runtime errors** so that the program does not terminate unexpectedly.

**Hinglish:**

> **Program mein runtime error aane par usse handle karke program ko normally chalate rehna, Exception Handling kehlata hai.**

## Keywords

- `try` → Code that may throw an exception.
- `catch` → Handles the exception.
- `finally` → Always executes (used for cleanup).
- `throw` → Used to explicitly throw an exception.
- `throws` → Declares that a method may throw an exception.

### Example

```java
try {
    int a = 10 / 0;
}
catch (Exception e) {
    System.out.println("Exception Handled");
}
finally {
    System.out.println("Always Executes");
}
```

---

# 2. Packages (Java)

A **package** is a collection of related classes and interfaces.

It is used to organize Java programs and avoid naming conflicts.

**Hinglish:**

> **Related classes aur interfaces ko ek folder (package) mein organize karna, Package kehlata hai.**

## Advantages

- Organizes code.
- Avoids class name conflicts.
- Improves code reusability.
- Provides access protection.

### Example

```java
package mypackage;

public class Student {

}
```

Importing a package:

```java
import java.util.Scanner;
```

---

# 3. Static Keyword (Java)

The `static` keyword makes a member belong to the **class**, not to an object.

**Hinglish:**

> **Static member class ka hota hai, object ka nahi.**

## Types

### Static Variable

One copy is shared by all objects.

```java
class Student {
    static String college = "ABC College";
}
```

---

### Static Method

Can be called without creating an object.

```java
class Demo {

    static void show() {
        System.out.println("Static Method");
    }
}

Demo.show();
```

---

### Static Block

Executes **only once** when the class is loaded.

```java
class Demo {

    static {
        System.out.println("Static Block");
    }

}
```

---

# 4. Object Class (Java)

The **`Object` class** is the **parent class of all Java classes**.

Every class in Java **implicitly inherits** from the `Object` class.

**Hinglish:**

> **Java mein har class indirectly `Object` class ko inherit karti hai.**

## Common Methods

### `toString()`

Returns the string representation of an object.

```java
System.out.println(obj.toString());
```

---

### `equals()`

Compares two objects for equality.

```java
obj1.equals(obj2);
```

---

### `hashCode()`

Returns the hash code of an object.

```java
obj.hashCode();
```

---

### `clone()`

Creates a copy of an object.

```java
obj.clone();
```

---

# Quick Revision

- **Exception Handling** → Handles runtime errors using `try`, `catch`, `finally`, `throw`, and `throws`.
- **Package** → A collection of related classes and interfaces used to organize code.
- **Static** → Belongs to the class, not to an object.
- **Object Class** → The parent class of every Java class; provides common methods like `toString()`, `equals()`, `hashCode()`, and `clone()`.