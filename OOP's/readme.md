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
