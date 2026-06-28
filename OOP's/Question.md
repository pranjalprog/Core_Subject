# Top 50 OOP Interview Questions for Freshers (Java)

## 1. What is OOP?

OOP (Object-Oriented Programming) is a programming paradigm based on classes and objects.

## 2. What are the four pillars of OOP?

* Encapsulation
* Inheritance
* Polymorphism
* Abstraction

## 3. What is a class?

A class is a blueprint used to create objects.

## 4. What is an object?

An object is an instance of a class.

## 5. What is encapsulation?

Wrapping data and methods into a single unit (class).

## 6. What is abstraction?

Hiding implementation details and showing only essential features.

## 7. What is inheritance?

The process by which one class acquires properties and methods of another class.

## 8. What is polymorphism?

The ability of an object to take multiple forms.

## 9. What are the types of polymorphism?

* Compile-time polymorphism
* Runtime polymorphism

## 10. What is method overloading?

Multiple methods with the same name but different parameters.

## 11. What is method overriding?

Redefining a parent class method in a child class.

## 12. What is the difference between overloading and overriding?

| Overloading          | Overriding        |
| -------------------- | ----------------- |
| Same class           | Different classes |
| Compile time         | Runtime           |
| Different parameters | Same parameters   |

## 13. What is a constructor?

A special method used to initialize objects.

## 14. What are the types of constructors?

* Default constructor
* Parameterized constructor

## 15. Can a constructor be overloaded?

Yes.

## 16. Can a constructor be overridden?

No.

## 17. What is the `this` keyword?

It refers to the current object.

## 18. What is the `super` keyword?

It refers to the parent class object.

## 19. What is the difference between `this` and `super`?

| this                   | super                 |
| ---------------------- | --------------------- |
| Current class          | Parent class          |
| Access current members | Access parent members |

## 20. What is an instance variable?

A variable declared inside a class but outside methods.

## 21. What is a local variable?

A variable declared inside a method.

## 22. What is a static variable?

A variable shared among all objects.

## 23. What is a static method?

A method that belongs to the class rather than objects.

## 24. Can static methods be overridden?

No.

## 25. What is an access modifier?

Keywords that control accessibility.

## 26. What are the access modifiers in Java?

* private
* default
* protected
* public

## 27. What is data hiding?

Restricting direct access to data using private variables.

## 28. What is an interface?

A blueprint containing abstract methods.

## 29. Why use interfaces?

To achieve abstraction and multiple inheritance.

## 30. What is an abstract class?

A class declared using the `abstract` keyword.

## 31. Can we create an object of an abstract class?

No.

## 32. Can abstract classes have constructors?

Yes.

## 33. Difference between abstract class and interface?

| Abstract Class        | Interface                |
| --------------------- | ------------------------ |
| Can have constructors | Cannot have constructors |
| Partial abstraction   | Complete abstraction     |
| Uses `extends`        | Uses `implements`        |

## 34. What is multiple inheritance?

A class inheriting from multiple parent classes.

## 35. Does Java support multiple inheritance?

Not through classes, but through interfaces.

## 36. What is the `final` keyword?

Used to restrict inheritance, method overriding, or variable modification.

## 37. Can a final method be overridden?

No.

## 38. Can a final class be inherited?

No.

## 39. What is object cloning?

Creating an exact copy of an object.

## 40. What is the Object class?

The root class of all Java classes.

## 41. What are the important methods of Object class?

* toString()
* equals()
* hashCode()
* clone()

## 42. What is the difference between `==` and `equals()`?

| `==`                | `equals()`       |
| ------------------- | ---------------- |
| Compares references | Compares content |

## 43. What is dynamic binding?

Method calls resolved at runtime.

## 44. What is compile-time binding?

Method calls resolved during compilation.

## 45. What is runtime polymorphism?

Method overriding achieved during execution.

## 46. What is upcasting?

Converting child object reference to parent reference.

```java
Animal a = new Dog();
```

## 47. What is downcasting?

```java
Dog d = (Dog) a;
```

## 48. Why is OOP important?

* Code reuse
* Security
* Easy maintenance
* Scalability
* Modularity

## 49. What are the advantages of OOP?

* Reusability
* Flexibility
* Maintainability
* Security
* Reduced complexity

## 50. What is the difference between class and object?

| Class                | Object           |
| -------------------- | ---------------- |
| Blueprint            | Instance         |
| No memory allocation | Memory allocated |
| Logical entity       | Physical entity  |

# Most Asked Fresher Questions

1. What are the four pillars of OOP?
2. Difference between overloading and overriding.
3. Difference between abstract class and interface.
4. What is encapsulation?
5. What is polymorphism?
6. Difference between `==` and `equals()`.
7. What is inheritance?
8. What is constructor?
9. What is `this` and `super`?
10. Why does Java not support multiple inheritance?
