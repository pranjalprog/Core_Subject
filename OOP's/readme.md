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