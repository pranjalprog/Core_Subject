# HTML Detailed Notes

## 1. What is HTML?

**HTML = HyperText Markup Language**

HTML ka use **web pages ka structure create** karne ke liye hota hai.

HTML programming language nahi hai, balki **markup language** hai.

Example:

```
```

```
<h1>Hello World</h1>
<p>This is my first webpage.</p>
```

Browser is HTML ko read karke webpage display karta hai.

---

# 2. Basic Structure of HTML

Har basic HTML page ka structure generally aisa hota hai:

```
```

```
<!DOCTYPE html>

<html>
<head>
    <title>My Page</title>
</head>

<body>
    <h1>Hello World</h1>
    <p>Welcome to my website.</p>
</body>
</html>
```

### Explanation

**`<!DOCTYPE html>`**

Browser ko batata hai ki document **HTML5** hai.

**`<html>`**

Ye complete HTML document ka root element hai.

**`<head>`**

Isme page ki information hoti hai jo normally directly webpage par display nahi hoti.

Example:

-  title 
-  meta information 
-  CSS links 
-  scripts 

**`<body>`**

Jo content user ko webpage par dikhai deta hai, wo body ke andar hota hai.

---

# 3. HTML Tags

HTML mein tags ka use elements define karne ke liye hota hai.

Example:

```
```

```
<p>Hello</p>
```

Yahan:

```
```

```
<p> → Opening tag
Hello → Content
</p> → Closing tag
```

Complete:

```
```

```
<p>Hello</p>
     ↑
   Element
```

---

# 4. HTML Element

Opening tag + content + closing tag = **HTML Element**

Example:

```
```

```
<h1>Hello</h1>
```

Ye complete ek HTML element hai.

---

# 5. HTML Attributes

Attributes HTML element ke baare mein **additional information** provide karte hain.

Example:

```
```

```
<a href="https://example.com">Visit</a>
```

Yahan:

```
```

```
href = attribute
```

Another example:

```
```

```
<img src="photo.jpg" alt="Profile Photo">
```

Yahan:

- `src` → image location 
- `alt` → alternative text 

---

# 6. Headings

HTML mein 6 heading levels hote hain:

```
```

```
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```

`<h1>` sabse important/largest heading hoti hai.

Generally page ka main heading `<h1>` hota hai.

---

# 7. Paragraph

Paragraph ke liye `<p>` tag use hota hai.

```
```

```
<p>This is a paragraph.</p>
```

---

# 8. Line Break

`<br>` line break ke liye use hota hai.

```
```

```
Hello<br>
World
```

Output:

```
```

```
Hello
World
```

`<br>` ek **void/empty element** hai, iska closing tag nahi hota.

---

# 9. Horizontal Line

`<hr>` horizontal line create karta hai.

```
```

```
<p>First Section</p>

<hr>

<p>Second Section</p>
```

---

# 10. Text Formatting Tags

### Bold

```
```

```
<strong>Important</strong>
```

`<b>` bhi text ko visually bold karta hai, lekin `<strong>` semantic importance indicate karta hai.

### Italic

```
```

```
<em>Important Text</em>
```

`<i>` bhi italic display karta hai, while `<em>` emphasis indicate karta hai.

### Underline

```
```

```
<u>Underlined Text</u>
```

### Highlight

```
```

```
<mark>Important</mark>
```

### Small Text

```
```

```
<small>Small text</small>
```

### Deleted Text

```
```

```
<del>Old Price</del>
```

### Inserted Text

```
```

```
<ins>New Price</ins>
```

---

# 11. Links

Link create karne ke liye `<a>` tag use hota hai.

```
```

```
<a href="https://google.com">Google</a>
```

### New tab mein open

```
```

```
<a href="https://google.com" target="_blank">
    Google
</a>
```

Important attribute:

```
```

```
href → destination URL
target → link kaha open hoga
```

---

# 12. Images

Image ke liye `<img>` tag use hota hai.

```
```

```
<img src="photo.jpg" alt="My Photo">
```

Important attributes:

### `src`

Image ka path.

### `alt`

Image load na hone par alternative text.

Example:

```
```

```
<img
    src="profile.jpg"
    alt="Rahul Profile Photo"
    width="200"
    height="200"
>
```

---

# 13. Lists

HTML mein mainly 3 types ki lists hoti hain.

## Ordered List

Numbered list:

```
```

```
<ol>
    <li>HTML</li>
    <li>CSS</li>
    <li>JavaScript</li>
</ol>
```

Output:

```
```

```
1. HTML
2. CSS
3. JavaScript
```

## Unordered List

Bullet list:

```
```

```
<ul>
    <li>HTML</li>
    <li>CSS</li>
    <li>JavaScript</li>
</ul>
```

## Description List

```
```

```
<dl>
    <dt>HTML</dt>
    <dd>Markup language</dd>

    <dt>CSS</dt>
    <dd>Styling language</dd>
</dl>
```

---

# 14. Tables

Table banane ke liye:

- `<table>` 
- `<tr>` → Table Row 
- `<th>` → Table Header 
- `<td>` → Table Data 

Example:

```
```

```
<table border="1">

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
    </tr>

    <tr>
        <td>101</td>
        <td>Rahul</td>
        <td>21</td>
    </tr>

    <tr>
        <td>102</td>
        <td>Priya</td>
        <td>20</td>
    </tr>

</table>
```

---

# 15. `rowspan` and `colspan`

### `colspan`

Multiple columns ko merge karta hai.

```
```

```
<td colspan="2">Total</td>
```

### `rowspan`

Multiple rows ko merge karta hai.

```
```

```
<td rowspan="2">Computer Science</td>
```

---

# 16. Forms

Forms user se input lene ke liye use hote hain.

Example:

```
```

```
<form>

    <label>Name:</label>
    <input type="text">

    <label>Email:</label>
    <input type="email">

    <label>Password:</label>
    <input type="password">

    <button type="submit">Submit</button>

</form>
```

---

# 17. Important Input Types

HTML mein different input types available hain:

```
```

```
<input type="text">
<input type="password">
<input type="email">
<input type="number">
<input type="date">
<input type="time">
<input type="file">
<input type="checkbox">
<input type="radio">
<input type="submit">
<input type="button">
```

### Example

```
```

```
<input type="email" placeholder="Enter Email">
```

---

# 18. Radio Button

Radio button mein generally **ek option select** karte hain.

```
```

```
<input type="radio" name="gender" value="male">
Male

<input type="radio" name="gender" value="female">
Female
```

Same `name` hone ki wajah se ek group ban jata hai.

---

# 19. Checkbox

Checkbox multiple options select karne ke liye use hota hai.

```
```

```
<input type="checkbox" value="java">
Java

<input type="checkbox" value="python">
Python

<input type="checkbox" value="sql">
SQL
```

---

# 20. Dropdown

Dropdown ke liye `<select>` aur `<option>` use hote hain.

```
```

```
<select>
    <option>Java</option>
    <option>Python</option>
    <option>JavaScript</option>
</select>
```

---

# 21. Textarea

Multiple lines ka text lene ke liye:

```
```

```
<textarea rows="5" cols="30">
</textarea>
```

Example:

```
```

```
<textarea placeholder="Enter your message"></textarea>
```

---

# 22. Label

`<label>` input field ka description provide karta hai.

```
```

```
<label for="email">Email:</label>

<input
    type="email"
    id="email"
>
```

`for` attribute ko input ke `id` se match karna useful hai.

---

# 23. `id` vs `class`

Ye interview ka **bahut common question** hai.

### ID

Ek element ko uniquely identify karne ke liye.

```
```

```
<p id="student-name">Rahul</p>
```

### Class

Multiple elements ko same group/style dene ke liye.

```
```

```
<p class="student">Rahul</p>
<p class="student">Aman</p>
```

### Difference

| IDClass          |                                         |
| ---------------- | --------------------------------------- |
| Generally unique | Multiple elements mein use ho sakti hai |
| `id="name"`      | `class="student"`                       |
| CSS: `#name`     | CSS: `.student`                         |

---

# 24. `div` vs `span`

### `<div>`

Generic **block-level container** hai.

```
```

```
<div>
    <h1>Hello</h1>
    <p>Welcome</p>
</div>
```

### `<span>`

Generic **inline container** hai.

```
```

```
<p>
    Hello <span>Rahul</span>
</p>
```

### Easy Trick

**div → block**

**span → inline**

---

# 25. Block vs Inline Elements

### Block Elements

Usually new line se start hote hain aur available width le sakte hain.

Examples:

```
```

```
<div>
<p>
<h1>
<section>
<table>
<form>
```

### Inline Elements

Same line mein continue kar sakte hain.

Examples:

```
```

```
<span>
<a>
<strong>
<em>
<img>
```

---

# 26. Semantic HTML

Semantic tags apne content ka **meaning clearly describe** karte hain.

Important semantic tags:

```
```

```
<header>
<nav>
<main>
<section>
<article>
<aside>
<footer>
```

Example:

```
```

```
<header>
    <h1>My Website</h1>
</header>

<nav>
    <a href="/">Home</a>
    <a href="/about">About</a>
</nav>

<main>
    <section>
        <h2>About Us</h2>
    </section>
</main>

<footer>
    Copyright 2026
</footer>
```

### Advantage

-  Better readability 
-  Better accessibility 
-  Better SEO 
-  Clear page structure 

---

# 27. `header`, `nav`, `main`, `section`, `article`, `footer`

### `<header>`

Page/section ka introductory content.

### `<nav>`

Navigation links.

### `<main>`

Page ka main content.

### `<section>`

Related content ka section.

### `<article>`

Independent/self-contained content.

### `<aside>`

Related/sidebar content.

### `<footer>`

Footer information.

---

# 28. HTML5

HTML5 HTML ka modern version hai.

Important features:

-  Semantic elements 
-  Audio 
-  Video 
-  Canvas 
-  Better forms 
-  Local storage support through web APIs 
-  Improved multimedia support 

---

# 29. Audio

```
```

```
<audio controls>
    <source src="song.mp3" type="audio/mpeg">
</audio>
```

`controls` se play/pause controls show hote hain.

---

# 30. Video

```
```

```
<video controls width="500">
    <source src="video.mp4" type="video/mp4">
</video>
```

---

# 31. iframe

`iframe` ka use ek webpage/document ko current page ke andar embed karne ke liye hota hai.

```
```

```
<iframe
    src="https://example.com"
    width="500"
    height="300">
</iframe>
```

Commonly used for:

-  Maps 
-  Videos 
-  External pages/content 

---

# 32. Meta Tags

Meta tags page ke **metadata** provide karte hain.

Example:

```
```

```
<head>

    <meta charset="UTF-8">

    <meta
        name="viewport"
        content="width=device-width, initial-scale=1.0"
    >

    <meta
        name="description"
        content="My website"
    >

</head>
```

### Important

`viewport` mobile responsive behavior ke liye important hai.

---

# 33. HTML Comments

Comments browser mein normally display nahi hote.

```
```

```
<!-- This is a comment -->
```

---

# 34. HTML Entities

Special characters ko represent karne ke liye entities use hoti hain.

Examples:

```
```

```
&copy;  → ©
&nbsp;  → Space
&lt;    → <
&gt;    → >
&amp;   → &
```

---

# 35. GET vs POST in HTML Form

### GET

Data URL mein send hota hai.

```
```

```
<form method="GET">
```

Example:

```
```

```
/search?name=Rahul
```

Generally search/filter jaise operations ke liye useful.

### POST

Data request body mein send hota hai.

```
```

```
<form method="POST">
```

Generally data submit/create jaise operations ke liye useful.

### Important

Sensitive data ke liye sirf POST use karna enough nahi hai; **HTTPS** bhi required hai.

---

# 36. Form `action` Attribute

`action` batata hai form submit hone ke baad request **kahan jayegi**.

```
```

```
<form action="/login" method="POST">
```

Yahan request `/login` endpoint par jayegi.

---

# 37. Form Validation

HTML basic client-side validation provide karta hai.

Example:

```
```

```
<input
    type="email"
    required
>
```

### Common attributes

```
```

```
required
min
max
minlength
maxlength
pattern
```

Example:

```
```

```
<input
    type="text"
    required
    minlength="3"
>
```

---

# 38. HTML vs CSS vs JavaScript

Ye interview mein **very important** hai.

### HTML

Webpage ka **structure**.

```
```

```
Heading
Paragraph
Button
Form
```

### CSS

Webpage ka **design/style**.

```
```

```
Color
Font
Size
Layout
Animation
```

### JavaScript

Webpage ka **behavior/functionality**.

```
```

```
Button click
API call
Form validation
Dynamic content
```

### Easy Trick

**HTML → Structure**

**CSS → Style**

**JavaScript → Behavior**

---

# 39. DOM

**DOM = Document Object Model**

Browser HTML document ko ek **tree-like structure** mein represent karta hai.

Example:

```
```

```
<html>
    <body>
        <h1>Hello</h1>
        <p>Welcome</p>
    </body>
</html>
```

Browser isko DOM tree ke form mein represent karta hai.

JavaScript DOM ko manipulate kar sakta hai.

Example:

```
```

```
document.getElementById("title").innerText = "Hello";
```

---

# 40. Absolute vs Relative URL

### Absolute URL

Complete URL:

```
```

```
<a href="https://example.com/about">
    About
</a>
```

### Relative URL

Current website ke relative path:

```
```

```
<a href="/about">
    About
</a>
```

---

# 41. HTML File Extension

HTML file generally:

```
```

```
.html
```

Example:

```
```

```
index.html
about.html
contact.html
```

---

# 42. Important Void Elements

Void elements ka closing tag nahi hota.

Examples:

```
```

```
<br>
<hr>
<img>
<input>
<meta>
<link>
```

Example:

```
```

```
<img src="photo.jpg" alt="Photo">
```

---

# 43. `alt` Attribute

`alt` image ka **alternative text** provide karta hai.

```
```

```
<img
    src="profile.jpg"
    alt="Student profile photo"
>
```

Important for:

-  Accessibility 
-  Image unavailable hone par fallback text 
-  Search engines ko image context samajhne mein help 

---

# 44. HTML Accessibility

Accessibility ka matlab website ko **different users, including users with disabilities, ke liye usable** banana.

Important practices:

```
```

```
<label for="email">Email</label>
<input id="email" type="email">

<img src="logo.png" alt="Company Logo">
```

Semantic HTML bhi accessibility improve karta hai.

---

# 45. HTML SEO

SEO = **Search Engine Optimization**

HTML mein SEO ke liye important things:

-  Proper `<title>` 
-  Meta description 
-  Semantic HTML 
-  Correct heading hierarchy 
-  Meaningful `alt` text 
-  Descriptive links 

Example:

```
```

```
<title>Python Developer Course</title>

<meta
    name="description"
    content="Learn Python programming from basics."
>
```

---

# ⭐ Most Important HTML Interview Questions

Interview ke liye in questions ko definitely prepare karo:

1.  What is HTML? 
2.  HTML vs HTML5? 
3.  What is a tag? 
4.  What is an element? 
5.  What are attributes? 
6.  What is `id` vs `class`? 
7. `div` vs `span`? 
8.  Block vs inline elements? 
9.  What is semantic HTML? 
10.  What are semantic tags? 
11.  What is a form? 
12.  GET vs POST? 
13.  What is `action` and `method`? 
14.  What is `alt` attribute? 
15.  What are void elements? 
16.  What is `iframe`? 
17.  What is DOM? 
18.  What are meta tags? 
19.  HTML vs CSS vs JavaScript? 
20.  What is HTML5? 

### 🧠 One-Line Revision

**HTML = Structure**

**Tags = Elements define karte hain**

**Attributes = Extra information**

**Semantic HTML = Meaningful structure**

**Forms = User input**

**CSS = Styling**

**JavaScript = Behavior**

**DOM = HTML ka browser-side tree representation**






# How to Add CSS and JavaScript in HTML

HTML mein **CSS aur JavaScript add karne ke 3 common ways** hain.

---

# 1. Adding CSS

## A. External CSS — Recommended

Ek separate `style.css` file banao:

```css
body {
    background-color: lightblue;
}

h1 {
    color: red;
}
```

HTML mein CSS file connect karo:

```html
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>
    <h1>Hello World</h1>
</body>
</html>
```

👉 `<link>` tag se external CSS connect hoti hai.

---

## B. Internal CSS

Same HTML file ke `<head>` ke andar `<style>` tag use karo:

```html
<!DOCTYPE html>
<html>
<head>

    <style>
        h1 {
            color: blue;
        }

        p {
            font-size: 20px;
        }
    </style>

</head>

<body>

    <h1>Hello</h1>
    <p>Welcome</p>

</body>
</html>
```

👉 CSS directly HTML file ke andar likhi jaati hai.

---

## C. Inline CSS

Direct HTML element ke andar `style` attribute use karo:

```html
<h1 style="color: red;">
    Hello World
</h1>
```

👉 Small changes ke liye useful hai, lekin large projects mein generally **external CSS** preferred hoti hai.

---

# 2. Adding JavaScript

## A. External JavaScript — Recommended

Ek separate `script.js` file banao:

```javascript
function hello() {
    alert("Hello World");
}
```

HTML mein JavaScript file connect karo:

```html
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
</head>

<body>

    <button onclick="hello()">
        Click Me
    </button>

    <script src="script.js"></script>

</body>
</html>
```

👉 `<script src="script.js"></script>` se external JavaScript connect hoti hai.

---

## B. Internal JavaScript

HTML ke andar `<script>` tag use karo:

```html
<!DOCTYPE html>
<html>
<body>

    <button onclick="hello()">
        Click Me
    </button>

    <script>
        function hello() {
            alert("Hello World");
        }
    </script>

</body>
</html>
```

👉 JavaScript directly HTML file ke andar likhi jaati hai.

---

## C. Inline JavaScript

Direct HTML element ke andar JavaScript likh sakte hain:

```html
<button onclick="alert('Hello')">
    Click Me
</button>
```

👉 Simple examples ke liye use ho sakta hai, but large projects mein external JavaScript better hoti hai.

---

# 3. Recommended Project Structure

```text
my-project/
│
├── index.html
├── style.css
└── script.js
```

### `index.html`

```html
<!DOCTYPE html>
<html>

<head>
    <title>My Website</title>

    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1 id="title">
        Hello World
    </h1>

    <button onclick="hello()">
        Click Me
    </button>

    <script src="script.js"></script>

</body>

</html>
```

### `style.css`

```css
body {
    background-color: lightblue;
}

h1 {
    color: red;
}
```

### `script.js`

```javascript
function hello() {
    alert("Hello World");
}
```

---

# Quick Revision

```text
HTML → Structure
CSS  → Styling
JS   → Functionality
```

### CSS Connect

```html
<link rel="stylesheet" href="style.css">
```

### JavaScript Connect

```html
<script src="script.js"></script>
```

### Interview Tip

**External CSS aur External JavaScript large projects mein preferred hote hain** because code separate, reusable aur maintainable rehta hai.




# CSS Interview Questions & Answers

---

# 1. What is CSS?

**CSS = Cascading Style Sheets**

CSS ka use HTML webpage ko **style aur design** karne ke liye hota hai.

CSS se hum control kar sakte hain:

* Color
* Font
* Size
* Spacing
* Layout
* Position
* Responsive design
* Animation

Example:

```css
h1 {
    color: blue;
    font-size: 30px;
}
```

HTML:

```html
<h1>Hello World</h1>
```

### Interview Answer

> **CSS is a stylesheet language used to control the presentation, styling, and layout of HTML elements on a webpage.**

---

# 2. What are the Different Ways to Add CSS?

CSS ko HTML mein **3 ways** se add kar sakte hain:

1. Inline CSS
2. Internal CSS
3. External CSS

---

## 1. Inline CSS

CSS directly HTML element ke `style` attribute mein likhte hain.

```html
<p style="color: red;">Hello World</p>
```

### Advantage

* Quick styling ke liye useful.

### Disadvantage

* Large projects mein maintain karna difficult hota hai.

---

## 2. Internal CSS

CSS ko same HTML file ke `<style>` tag ke andar likhte hain.

```html
<!DOCTYPE html>
<html>

<head>

<style>
    p {
        color: blue;
    }
</style>

</head>

<body>

<p>Hello World</p>

</body>
</html>
```

---

## 3. External CSS

CSS ko separate `.css` file mein likhte hain.

**style.css**

```css
p {
    color: green;
}
```

HTML:

```html
<link rel="stylesheet" href="style.css">
```

### Advantage

* Large projects ke liye best.
* Reusable hota hai.
* Maintain karna easy hota hai.

### Interview Answer

> **CSS can be added using Inline CSS, Internal CSS, and External CSS. External CSS is generally preferred for large projects because it provides better reusability and maintainability.**

---

# 3. Difference Between Inline, Internal and External CSS

| Type     | CSS kahan likhte hain?                 | Best Use                |
| -------- | -------------------------------------- | ----------------------- |
| Inline   | HTML element ke `style` attribute mein | Quick/specific styling  |
| Internal | `<style>` tag mein                     | Single webpage          |
| External | Separate `.css` file mein              | Large/multiple webpages |

### Example

**Inline:**

```html
<p style="color: red;">Hello</p>
```

**Internal:**

```html
<style>
    p {
        color: red;
    }
</style>
```

**External:**

```html
<link rel="stylesheet" href="style.css">
```

### Interview Answer

> **Inline CSS is written directly inside an HTML element, Internal CSS is written inside a `<style>` tag, and External CSS is written in a separate CSS file.**

---

# 4. What is a CSS Selector?

CSS Selector ka use HTML elements ko **select/target** karne ke liye hota hai, taaki un par CSS styles apply ki ja sakein.

Basic syntax:

```css
selector {
    property: value;
}
```

Example:

```css
p {
    color: blue;
}
```

Yahan `p` ek selector hai.

## Types of Selectors

### 1. Element Selector

HTML tag ko select karta hai.

```css
p {
    color: blue;
}
```

Ye saare `<p>` elements ko select karega.

---

### 2. Class Selector

Class ko select karta hai.

`.` symbol use hota hai.

```css
.student {
    color: green;
}
```

HTML:

```html
<p class="student">Rahul</p>
```

---

### 3. ID Selector

ID ko select karta hai.

`#` symbol use hota hai.

```css
#title {
    color: red;
}
```

HTML:

```html
<h1 id="title">Hello</h1>
```

---

### 4. Universal Selector

Page ke saare elements ko select karta hai.

`*` use hota hai.

```css
* {
    margin: 0;
    padding: 0;
}
```

---

### 5. Attribute Selector

Element ko attribute ke basis par select karta hai.

```css
input[type="text"] {
    border: 1px solid black;
}
```

Ye sirf `type="text"` wale input ko select karega.

### Interview Answer

> **A CSS selector is a pattern used to select HTML elements so that CSS styles can be applied to them.**

---

# 5. What is the Difference Between `id` and `class` in CSS?

`id` aur `class` dono HTML elements ko identify/select karne ke liye use hote hain.

## ID

ID selector ke liye `#` use hota hai.

```css
#title {
    color: red;
}
```

HTML:

```html
<h1 id="title">Hello</h1>
```

Ek `id` generally **unique** hona chahiye.

---

## Class

Class selector ke liye `.` use hota hai.

```css
.student {
    color: blue;
}
```

HTML:

```html
<p class="student">Rahul</p>
<p class="student">Aman</p>
```

Ek class ko **multiple elements** par use kar sakte hain.

---

## Difference

| ID                                  | Class                                  |
| ----------------------------------- | -------------------------------------- |
| Generally unique                    | Multiple elements par use ho sakti hai |
| `#` use hota hai                    | `.` use hota hai                       |
| `#title`                            | `.student`                             |
| Specific element identify karta hai | Elements ko group/style karta hai      |

### Interview Answer

> **ID is generally used to uniquely identify an element, while class is used to group and style multiple elements.**

---

# 6. What is CSS Box Model?

CSS Box Model batata hai ki browser mein har HTML element ek **rectangular box** ki tarah behave karta hai.

Box Model ke 4 main parts hain:

```text
Content
   ↓
Padding
   ↓
Border
   ↓
Margin
```

## 1. Content

Element ka actual content.

```html
<p>Hello World</p>
```

`Hello World` content hai.

---

## 2. Padding

Content aur border ke beech ka space.

```css
.box {
    padding: 20px;
}
```

---

## 3. Border

Padding ke around boundary.

```css
.box {
    border: 2px solid black;
}
```

---

## 4. Margin

Element ke border ke bahar ka space.

```css
.box {
    margin: 20px;
}
```

### Structure

```text
+-----------------------------+
|           Margin            |
|  +-----------------------+  |
|  |        Border         |  |
|  |  +-----------------+  |  |
|  |  |     Padding     |  |  |
|  |  |  +-----------+  |  |  |
|  |  |  |  Content  |  |  |  |
|  |  |  +-----------+  |  |  |
|  |  +-----------------+  |  |
|  +-----------------------+  |
+-----------------------------+
```

### Interview Answer

> **The CSS Box Model describes an HTML element as a box consisting of content, padding, border, and margin.**

---

# 7. What is the Difference Between Margin and Padding?

### Margin

**Margin = Element ke outside ka space**

```css
.box {
    margin: 20px;
}
```

### Padding

**Padding = Element ke inside ka space**

```css
.box {
    padding: 20px;
}
```

### Difference

| Margin                                      | Padding                              |
| ------------------------------------------- | ------------------------------------ |
| Element ke outside space                    | Element ke inside space              |
| Border ke bahar hota hai                    | Content aur border ke beech hota hai |
| Elements ke beech distance create karta hai | Content ko border se door karta hai  |

### Easy Trick

> **Margin = Outside**

> **Padding = Inside**

### Interview Answer

> **Margin is the space outside an element's border, while padding is the space between the content and the border.**

---

# 8. What is `display` Property in CSS?

CSS ki `display` property decide karti hai ki element **layout mein kaise behave karega**.

Important values:

```css
display: block;
display: inline;
display: inline-block;
display: none;
display: flex;
display: grid;
```

---

## `display: block`

Element new line se start hota hai.

Examples:

```text
div
p
h1
```

```css
.box {
    display: block;
}
```

---

## `display: inline`

Element same line mein rehta hai.

Examples:

```text
span
a
```

```css
span {
    display: inline;
}
```

---

## `display: inline-block`

Same line mein rehta hai, lekin `width` aur `height` set kar sakte hain.

```css
button {
    display: inline-block;
    width: 150px;
    height: 50px;
}
```

---

## `display: none`

Element completely hide ho jata hai aur layout mein uski space bhi remove ho jati hai.

```css
.box {
    display: none;
}
```

---

## `display: flex`

Flexbox layout enable karta hai.

```css
.container {
    display: flex;
}
```

---

## `display: grid`

Grid layout enable karta hai.

```css
.container {
    display: grid;
}
```

### Interview Answer

> **The CSS `display` property defines how an element participates in the layout of a webpage.**

---

# 9. Difference Between `display: none` and `visibility: hidden`

## `display: none`

Element:

* Visible nahi hota.
* Layout se remove ho jata hai.
* Uski space bhi nahi rehti.

```css
.box {
    display: none;
}
```

---

## `visibility: hidden`

Element:

* Visible nahi hota.
* Lekin layout mein uski space retain rehti hai.

```css
.box {
    visibility: hidden;
}
```

### Example

Suppose:

```text
[Box 1] [Box 2] [Box 3]
```

Agar Box 2 par:

```css
display: none;
```

to:

```text
[Box 1] [Box 3]
```

Agar Box 2 par:

```css
visibility: hidden;
```

to:

```text
[Box 1] [       ] [Box 3]
```

### Interview Answer

> **`display: none` removes the element from the layout, while `visibility: hidden` hides the element but preserves its layout space.**

---

# 10. What is CSS Positioning?

CSS Positioning ka use HTML elements ko webpage par **position/place** karne ke liye hota hai.

Main values:

```css
position: static;
position: relative;
position: absolute;
position: fixed;
position: sticky;
```

---

## `static`

Default position.

Element normal document flow mein rehta hai.

```css
.box {
    position: static;
}
```

---

## `relative`

Element apni original position ke relative move hota hai.

```css
.box {
    position: relative;
    top: 10px;
    left: 20px;
}
```

Original space retain rehti hai.

---

## `absolute`

Element normal document flow se remove ho jata hai.

Ye nearest positioned ancestor ke according position hota hai.

```css
.parent {
    position: relative;
}

.child {
    position: absolute;
    top: 10px;
    right: 20px;
}
```

---

## `fixed`

Element viewport ke according fixed hota hai.

Scroll karne par bhi fixed position par rehta hai.

```css
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
}
```

---

## `sticky`

Element normal flow mein rehta hai, lekin scroll karne par specified position par stick ho jata hai.

```css
.header {
    position: sticky;
    top: 0;
}
```

### Interview Answer

> **CSS positioning is used to control the placement of elements using properties such as static, relative, absolute, fixed, and sticky.**

---

# 11. Difference Between `relative`, `absolute`, `fixed` and `sticky`

| Position   | Meaning                                                    |
| ---------- | ---------------------------------------------------------- |
| `relative` | Apni original position ke relative move hota hai           |
| `absolute` | Nearest positioned ancestor ke according position hota hai |
| `fixed`    | Viewport ke according fixed hota hai                       |
| `sticky`   | Scroll ke time specified position par stick hota hai       |

### `relative`

```css
.box {
    position: relative;
    top: 10px;
}
```

Element apni original position se move karega.

### `absolute`

```css
.child {
    position: absolute;
    top: 0;
    right: 0;
}
```

Nearest positioned ancestor ke according position hoga.

### `fixed`

```css
.button {
    position: fixed;
    bottom: 20px;
    right: 20px;
}
```

Screen par fixed rahega.

### `sticky`

```css
.header {
    position: sticky;
    top: 0;
}
```

Scroll karne par top par stick karega.

### 🧠 Easy Trick

```text
relative → Apne position ke relative
absolute → Parent/ancestor ke relative
fixed    → Screen ke relative
sticky   → Scroll ke according
```

---

# 12. What is Flexbox?

**Flexbox = Flexible Box Layout**

Flexbox ek **one-dimensional layout system** hai.

Iska use elements ko:

* Row mein arrange karne
* Column mein arrange karne
* Center karne
* Space distribute karne
* Responsive layout banane

ke liye hota hai.

Basic:

```css
.container {
    display: flex;
}
```

Important properties:

```css
display: flex;
flex-direction;
justify-content;
align-items;
flex-wrap;
gap;
```

### Example

```html
<div class="container">
    <div>One</div>
    <div>Two</div>
    <div>Three</div>
</div>
```

```css
.container {
    display: flex;
    gap: 20px;
}
```

Elements ek row mein aa jayenge.

### `flex-direction`

```css
flex-direction: row;
flex-direction: column;
```

### `justify-content`

Main axis par items ko align karta hai.

```css
justify-content: center;
```

### `align-items`

Cross axis par items ko align karta hai.

```css
align-items: center;
```

### Interview Answer

> **Flexbox is a one-dimensional CSS layout system used to arrange and align elements in rows or columns.**

---

# 13. Difference Between `justify-content` and `align-items`

Dono Flexbox mein alignment ke liye use hote hain.

### `justify-content`

**Main axis** par items ko align karta hai.

```css
.container {
    display: flex;
    justify-content: center;
}
```

Default `flex-direction: row` mein ye **horizontal alignment** karega.

---

### `align-items`

**Cross axis** par items ko align karta hai.

```css
.container {
    display: flex;
    align-items: center;
}
```

Default `flex-direction: row` mein ye **vertical alignment** karega.

### Important

Axes `flex-direction` par depend karte hain.

```text
flex-direction: row

justify-content → Main axis → Horizontal
align-items     → Cross axis → Vertical
```

```text
flex-direction: column

justify-content → Main axis → Vertical
align-items     → Cross axis → Horizontal
```

### 🧠 Easy Trick

> **justify-content → Main Axis**

> **align-items → Cross Axis**

### Interview Answer

> **`justify-content` aligns flex items along the main axis, while `align-items` aligns them along the cross axis.**

---

# 14. What is CSS Grid?

CSS Grid ek **two-dimensional layout system** hai.

Ye simultaneously:

* Rows
* Columns

dono ko manage kar sakta hai.

Example:

```css
.container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 10px;
}
```

Isse 3 columns ka grid banega.

Example:

```text
+--------+--------+--------+
|   1    |   2    |   3    |
+--------+--------+--------+
|   4    |   5    |   6    |
+--------+--------+--------+
```

### Common Properties

```css
display: grid;

grid-template-columns;
grid-template-rows;

gap;

grid-column;
grid-row;
```

### Interview Answer

> **CSS Grid is a two-dimensional layout system used to create layouts using rows and columns.**

---

# 15. Flexbox vs Grid

| Flexbox                                | Grid                                      |
| -------------------------------------- | ----------------------------------------- |
| One-dimensional                        | Two-dimensional                           |
| Row OR column                          | Rows AND columns                          |
| One axis par focus                     | Two axes par focus                        |
| Component-level layouts ke liye useful | Page-level/complex layouts ke liye useful |
| Content alignment ke liye excellent    | Structured layouts ke liye excellent      |

### Flexbox Example

```css
.container {
    display: flex;
    justify-content: space-between;
}
```

### Grid Example

```css
.container {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
}
```

### 🧠 Easy Trick

> **Flexbox = 1D**

> **Grid = 2D**

### Interview Answer

> **Flexbox is mainly used for one-dimensional layouts, while CSS Grid is designed for two-dimensional layouts involving rows and columns.**

---

# 16. What is CSS Specificity?

CSS Specificity decide karti hai ki jab **multiple CSS rules same element ko target karein**, to kaunsi rule ki priority zyada hogi.

Generally priority:

```text
Inline
   ↓
ID
   ↓
Class / Attribute / Pseudo-class
   ↓
Element / Pseudo-element
```

Example:

```html
<p id="title" class="text">
    Hello
</p>
```

```css
p {
    color: green;
}

.text {
    color: blue;
}

#title {
    color: red;
}
```

Final color:

```text
Red
```

Kyunki `#title` ki specificity class aur element selector se higher hai.

### Specificity Order

```text
Inline      → Highest
ID          → High
Class       → Medium
Element     → Low
Universal   → Lowest
```

### Important

`!important` normal specificity rules ko override kar sakta hai, lekin ise unnecessarily use nahi karna chahiye.

```css
p {
    color: red !important;
}
```

### Interview Answer

> **CSS specificity is the mechanism used by the browser to determine which CSS rule should be applied when multiple rules target the same element.**

---

# 17. What are Pseudo-classes and Pseudo-elements?

## Pseudo-class

Pseudo-class element ki **state ya condition** ko select karta hai.

Syntax:

```css
selector:pseudo-class
```

Example:

```css
button:hover {
    background: blue;
}
```

Jab mouse button ke upar hover karega, style apply hoga.

Common pseudo-classes:

```css
:hover
:focus
:active
:first-child
:last-child
:nth-child()
:checked
```

---

## Pseudo-element

Pseudo-element element ke **specific part** ko style karta hai.

Syntax:

```css
selector::pseudo-element
```

Example:

```css
p::first-letter {
    font-size: 30px;
}
```

Ye paragraph ke first letter ko style karega.

Common pseudo-elements:

```css
::before
::after
::first-letter
::first-line
::selection
```

### Difference

| Pseudo-class               | Pseudo-element           |
| -------------------------- | ------------------------ |
| Element ki state/condition | Element ke specific part |
| `:` use karta hai          | `::` use karta hai       |
| `:hover`                   | `::before`               |
| `:focus`                   | `::after`                |

### 🧠 Easy Trick

> **Pseudo-class = State**

> **Pseudo-element = Part**

### Interview Answer

> **A pseudo-class targets an element based on its state or condition, while a pseudo-element targets a specific part of an element.**

---

# 18. What is Responsive Web Design?

Responsive Web Design ka matlab hai website ko **different screen sizes** par properly display karna.

For example:

* Mobile
* Tablet
* Laptop
* Desktop

Website ka layout screen size ke according adjust hota hai.

### Media Query Example

```css
@media (max-width: 768px) {

    .container {
        width: 100%;
    }

}
```

Agar screen width `768px` ya usse kam hai, to ye CSS apply hogi.

### Responsive Design mein Common Techniques

* Media queries
* Flexible layouts
* Flexbox
* CSS Grid
* Relative units
* Responsive images

Example:

```css
img {
    max-width: 100%;
    height: auto;
}
```

### Interview Answer

> **Responsive Web Design is an approach where a website adapts its layout and content to different screen sizes and devices.**

---

# 19. What are `px`, `%`, `em`, `rem`, `vh` and `vw`?

CSS mein different units ka use size define karne ke liye hota hai.

---

## `px`

Pixel unit.

Generally fixed-length unit hai.

```css
.box {
    width: 200px;
}
```

---

## `%`

Percentage generally containing/contextual size ke relative hota hai.

```css
.box {
    width: 50%;
}
```

Agar parent ki width `1000px` hai, to box ki width approximately `500px` hogi.

---

## `em`

`em` font size ke context ke relative hota hai.

```css
.child {
    font-size: 2em;
}
```

Iska actual size context par depend karta hai.

---

## `rem`

`rem` **root (`html`) element ke font size** ke relative hota hai.

```css
html {
    font-size: 16px;
}

.box {
    font-size: 2rem;
}
```

`2rem = 32px` in this example.

---

## `vh`

`vh = viewport height`

```css
.box {
    height: 100vh;
}
```

`100vh` viewport ki approximately complete height ke equal hota hai.

---

## `vw`

`vw = viewport width`

```css
.box {
    width: 100vw;
}
```

`100vw` viewport ki width ke equal hota hai.

### Quick Revision

| Unit  | Meaning                       |
| ----- | ----------------------------- |
| `px`  | Pixel                         |
| `%`   | Relative percentage           |
| `em`  | Font-size context ke relative |
| `rem` | Root font-size ke relative    |
| `vh`  | Viewport height               |
| `vw`  | Viewport width                |

### Interview Answer

> **CSS units such as px, %, em, rem, vh, and vw are used to define sizes. Some are fixed or context-relative, while viewport units are based on the browser viewport.**

---

# 20. What is `z-index`?

`z-index` overlapping elements ka **stacking order** control karta hai.

Higher `z-index` wala element generally lower `z-index` wale element ke upar appear hota hai, subject to CSS stacking-context rules.

Example:

```css
.box1 {
    position: absolute;
    z-index: 2;
}

.box2 {
    position: absolute;
    z-index: 1;
}
```

Yahan `.box1` generally `.box2` ke upar appear karega.

### Important

`z-index` ka effect stacking context aur positioning/layout context par depend karta hai. Isliye sirf `z-index: 9999` dene se har situation mein element sabke upar nahi aa jata.

### Example

```html
<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

```css
.box1 {
    position: absolute;
    z-index: 2;
}

.box2 {
    position: absolute;
    z-index: 1;
}
```

### Common Use Cases

* Dropdown menus
* Modals
* Navigation bars
* Tooltips
* Overlays
* Floating elements

### Interview Answer

> **`z-index` controls the stacking order of overlapping elements. An element with a higher stacking level generally appears above an element with a lower stacking level within the relevant stacking context.**

---

# ⭐ CSS Quick Revision

```text
CSS
 ↓
Styling and Layout

Selectors
 ↓
HTML elements ko target karte hain

Box Model
 ↓
Content → Padding → Border → Margin

Display
 ↓
block / inline / inline-block / none / flex / grid

Position
 ↓
static / relative / absolute / fixed / sticky

Flexbox
 ↓
1D Layout

Grid
 ↓
2D Layout

justify-content
 ↓
Main Axis

align-items
 ↓
Cross Axis

Specificity
 ↓
Inline > ID > Class > Element

Pseudo-class
 ↓
State

Pseudo-element
 ↓
Part

Responsive Design
 ↓
Mobile + Tablet + Desktop

z-index
 ↓
Stacking Order
```

# ⭐ Most Important CSS Interview Questions

Agar interview se pehle time kam ho, to in topics ko **priority** do:

1. CSS Box Model
2. Margin vs Padding
3. `display`
4. `position`
5. Flexbox
6. `justify-content` vs `align-items`
7. Flexbox vs Grid
8. CSS Selectors
9. `id` vs `class`
10. CSS Specificity
11. Responsive Design
12. `display: none` vs `visibility: hidden`
13. `z-index`
14. Pseudo-classes vs Pseudo-elements
15. CSS Units









# JavaScript — Detailed Notes

## 1. What is JavaScript?

**JavaScript (JS)** ek programming language hai jo web pages ko **interactive aur dynamic** banane ke liye use hoti hai.

```text
HTML → Structure
CSS → Styling
JavaScript → Behavior / Functionality
```

### Example

```html
<button onclick="hello()">Click Me</button>

<script>
function hello() {
    alert("Hello World");
}
</script>
```

Button click karne par JavaScript execute hogi.

### JavaScript ka Use

* Web development
* Form validation
* DOM manipulation
* API calls
* Animations
* Interactive websites
* Backend development using Node.js
* Real-time applications

---

## 2. JavaScript Kahan Run Hoti Hai?

JavaScript traditionally browser ke **JavaScript engine** mein run hoti hai.

Examples:

| Browser | JavaScript Engine |
| ------- | ----------------- |
| Chrome  | V8                |
| Firefox | SpiderMonkey      |
| Safari  | JavaScriptCore    |

JavaScript browser ke bahar bhi run kar sakti hai, jaise **Node.js** ke through.

---

# 3. How to Add JavaScript in HTML?

JavaScript ko HTML mein mainly 3 ways se add kar sakte hain:

### 1. Inline JavaScript

```html
<button onclick="alert('Hello World')">
    Click Me
</button>
```

### 2. Internal JavaScript

```html
<script>
function hello() {
    alert("Hello World");
}
</script>
```

### 3. External JavaScript

**script.js**

```javascript
function hello() {
    alert("Hello World");
}
```

HTML:

```html
<script src="script.js"></script>
```

**External JavaScript** large projects mein recommended hoti hai.

---

# 4. Variables

Variables data store karne ke liye use hote hain.

JavaScript mein commonly:

```javascript
var name = "Rahul";
let age = 21;
const country = "India";
```

Modern JavaScript mein generally **`let` aur `const`** prefer kiye jaate hain.

---

# 5. `var`, `let`, `const`

| `var`              | `let`                          | `const`                        |
| ------------------ | ------------------------------ | ------------------------------ |
| Function-scoped    | Block-scoped                   | Block-scoped                   |
| Redeclare possible | Same scope mein redeclare nahi | Same scope mein redeclare nahi |
| Reassign possible  | Reassign possible              | Reassign nahi                  |
| Older style        | Modern                         | Modern                         |

### Example

```javascript
let age = 20;

age = 21;

const pi = 3.14;

// pi = 4;  // Error
```

---

# 6. Data Types

JavaScript mein different data types hote hain.

## Primitive Data Types

Main primitive data types:

* String
* Number
* Boolean
* Undefined
* Null
* BigInt
* Symbol

### String

```javascript
let name = "Rahul";
```

### Number

```javascript
let age = 21;
let price = 99.99;
```

### Boolean

```javascript
let isStudent = true;
```

### Undefined

```javascript
let x;

console.log(x);
```

Output:

```text
undefined
```

### Null

```javascript
let value = null;
```

### BigInt

```javascript
let bigNumber = 12345678901234567890n;
```

### Symbol

Unique identifiers ke liye use hota hai.

```javascript
let id = Symbol("id");
```

---

# 7. Non-Primitive Data Types

Mainly:

* Object
* Array
* Function

### Example

```javascript
let student = {
    name: "Rahul",
    age: 21
};
```

---

# 8. String

String text represent karti hai.

```javascript
let name = "Rahul";
```

Different ways:

```javascript
let a = "Hello";
let b = 'Hello';
let c = `Hello`;
```

Backticks ko **template literals** ke liye use kar sakte hain.

### Template Literal Example

```javascript
let name = "Rahul";
let age = 21;

console.log(`My name is ${name} and I am ${age} years old.`);
```

---

# 9. Operators

JavaScript mein different operators hote hain.

## Arithmetic Operators

```text
+   Addition
-   Subtraction
*   Multiplication
/   Division
%   Modulus
**  Exponentiation
```

Example:

```javascript
let a = 10;
let b = 3;

console.log(a + b);
console.log(a - b);
console.log(a * b);
console.log(a / b);
console.log(a % b);
console.log(a ** b);
```

## Comparison Operators

```text
==    Equal
===   Strict equal
!=    Not equal
!==   Strict not equal
>     Greater than
<     Less than
>=    Greater than or equal
<=    Less than or equal
```

Example:

```javascript
console.log(10 == "10");   // true
console.log(10 === "10");  // false
```

---

# 10. `==` vs `===`

Ye **very important interview question** hai.

## `==`

Value compare karta hai aur type coercion kar sakta hai.

```javascript
10 == "10"
```

Result:

```text
true
```

## `===`

Value + data type dono compare karta hai.

```javascript
10 === "10"
```

Result:

```text
false
```

### Interview Answer

> `==` performs loose equality comparison and may perform type coercion, while `===` performs strict equality comparison without type coercion.

Generally, jab strict comparison chahiye ho to **`===` prefer karna better hota hai**.

---

# 11. Logical Operators

```javascript
&&    // AND
||    // OR
!     // NOT
```

### Example

```javascript
let age = 21;
let hasID = true;

if (age >= 18 && hasID) {
    console.log("Allowed");
}
```

---

# 12. Conditional Statements

## `if`

```javascript
let age = 20;

if (age >= 18) {
    console.log("Adult");
}
```

## `if-else`

```javascript
if (age >= 18) {
    console.log("Adult");
} else {
    console.log("Minor");
}
```

## `else-if`

```javascript
if (marks >= 90) {
    console.log("A");
} else if (marks >= 60) {
    console.log("B");
} else {
    console.log("C");
}
```

---

# 13. Ternary Operator

Short `if-else` ke liye ternary operator use hota hai.

```javascript
let age = 20;

let result = age >= 18 ? "Adult" : "Minor";

console.log(result);
```

### Syntax

```text
condition ? trueValue : falseValue
```

---

# 14. Switch

Multiple fixed cases ke liye `switch` useful hota hai.

```javascript
let day = 2;

switch (day) {
    case 1:
        console.log("Monday");
        break;

    case 2:
        console.log("Tuesday");
        break;

    default:
        console.log("Invalid");
}
```

---

# 15. Loops

## `for` Loop

```javascript
for (let i = 1; i <= 5; i++) {
    console.log(i);
}
```

## `while` Loop

```javascript
let i = 1;

while (i <= 5) {
    console.log(i);
    i++;
}
```

## `do-while` Loop

```javascript
let i = 1;

do {
    console.log(i);
    i++;
} while (i <= 5);
```

---

# 16. Functions

Function reusable block of code hota hai.

```javascript
function greet() {
    console.log("Hello");
}

greet();
```

---

# 17. Function with Parameters

```javascript
function add(a, b) {
    return a + b;
}

let result = add(10, 20);

console.log(result);
```

Output:

```text
30
```

---

# 18. Function Expression

Function ko variable mein store kar sakte hain.

```javascript
const add = function(a, b) {
    return a + b;
};

console.log(add(10, 20));
```

---

# 19. Arrow Function

ES6 mein arrow functions introduce hue.

```javascript
const add = (a, b) => {
    return a + b;
};
```

### Short Version

```javascript
const add = (a, b) => a + b;
```

Another example:

```javascript
const square = x => x * x;
```

---

# 20. Arrays

Array multiple values store karne ke liye use hota hai.

```javascript
let fruits = ["Apple", "Mango", "Banana"];
```

Access:

```javascript
console.log(fruits[0]);
```

Output:

```text
Apple
```

---

# 21. Important Array Methods

## `push()`

End mein element add karta hai.

```javascript
fruits.push("Orange");
```

## `pop()`

Last element remove karta hai.

```javascript
fruits.pop();
```

## `shift()`

First element remove karta hai.

```javascript
fruits.shift();
```

## `unshift()`

Start mein element add karta hai.

```javascript
fruits.unshift("Grapes");
```

---

# 22. `map()`

Har element par operation apply karke **new array** return karta hai.

```javascript
let numbers = [1, 2, 3, 4];

let result = numbers.map(x => x * 2);

console.log(result);
```

Output:

```text
[2, 4, 6, 8]
```

### Remember

> `map` → Transform

---

# 23. `filter()`

Condition satisfy karne wale elements ka **new array** return karta hai.

```javascript
let numbers = [1, 2, 3, 4, 5];

let result = numbers.filter(x => x % 2 === 0);

console.log(result);
```

Output:

```text
[2, 4]
```

### Remember

> `filter` → Select

---

# 24. `reduce()`

Array ke elements ko combine karke generally **single result** produce karta hai.

```javascript
let numbers = [1, 2, 3, 4];

let sum = numbers.reduce((total, current) => {
    return total + current;
}, 0);

console.log(sum);
```

Output:

```text
10
```

### Remember

> `reduce` → Combine

---

# 25. Objects

Object key-value pairs store karta hai.

```javascript
let student = {
    name: "Rahul",
    age: 21,
    course: "JavaScript"
};
```

### Access

```javascript
console.log(student.name);
console.log(student["age"]);
```

---

# 26. Adding and Updating Object Properties

```javascript
let student = {
    name: "Rahul",
    age: 21
};

student.city = "Delhi";

student.age = 22;
```

---

# 27. Destructuring

Object se values easily extract kar sakte hain.

```javascript
const student = {
    name: "Rahul",
    age: 21
};

const { name, age } = student;

console.log(name);
console.log(age);
```

## Array Destructuring

```javascript
const numbers = [10, 20];

const [a, b] = numbers;
```

---

# 28. Spread Operator

Spread operator `...` values ko expand karta hai.

## Array Example

```javascript
const a = [1, 2, 3];

const b = [...a, 4, 5];

console.log(b);
```

Output:

```text
[1, 2, 3, 4, 5]
```

## Object Example

```javascript
const user = {
    name: "Rahul",
    age: 21
};

const updatedUser = {
    ...user,
    city: "Delhi"
};
```

---

# 29. Rest Parameter

Rest parameter multiple arguments ko collect karta hai.

```javascript
function sum(...numbers) {
    return numbers.reduce((a, b) => a + b, 0);
}

console.log(sum(1, 2, 3, 4));
```

---

# 30. DOM

**DOM = Document Object Model**

Browser HTML document ko ek **tree-like object structure** mein represent karta hai.

HTML:

```html
<h1 id="title">Hello</h1>
```

JavaScript:

```javascript
const title = document.getElementById("title");

title.innerText = "Welcome";
```

JavaScript HTML content ko dynamically change kar sakti hai.

---

# 31. Selecting HTML Elements

## `getElementById()`

```javascript
document.getElementById("title");
```

## `querySelector()`

```javascript
document.querySelector(".student");
```

## `querySelectorAll()`

```javascript
document.querySelectorAll(".student");
```

## `getElementsByClassName()`

```javascript
document.getElementsByClassName("student");
```

---

# 32. Changing HTML Content

```javascript
document.getElementById("title").innerText = "Hello";
```

`innerHTML` HTML content set/read kar sakta hai:

```javascript
element.innerHTML = "Hello";
```

> User-controlled untrusted content ke saath `innerHTML` carefully use karna chahiye.

---

# 33. Changing CSS Using JavaScript

```javascript
const title = document.getElementById("title");

title.style.color = "red";
title.style.fontSize = "30px";
```

Better approach often CSS class toggle karna hota hai:

```javascript
title.classList.add("active");
```

---

# 34. Events

Event matlab browser mein koi action hona.

Examples:

* `click`
* `submit`
* `mouseover`
* `keydown`
* `change`
* `input`
* `load`

---

# 35. Event Listener

Recommended way:

```javascript
const button = document.getElementById("btn");

button.addEventListener("click", function() {
    alert("Button clicked");
});
```

---

# 36. Form Handling

```javascript
const form = document.getElementById("form");

form.addEventListener("submit", function(event) {
    event.preventDefault();

    console.log("Form submitted");
});
```

`preventDefault()` browser ke default form submission behavior ko prevent karta hai.

---

# 37. Event Bubbling

Event bubbling mein event **child element se parent elements** ki taraf propagate karta hai.

Example:

```text
button
   ↓
div
   ↓
body
```

Agar button click hua, event parent elements tak bubble kar sakta hai.

---

# 38. Event Capturing

Capturing bubbling ka reverse phase hai.

```text
body
  ↓
div
  ↓
button
```

Event parent se child ki direction mein travel karta hai.

---

# 39. `this` Keyword

`this` generally current execution context/object ko refer karta hai, lekin iska exact behavior context par depend karta hai.

Example:

```javascript
const student = {
    name: "Rahul",

    greet: function() {
        console.log(this.name);
    }
};

student.greet();
```

Output:

```text
Rahul
```

---

# 40. Arrow Function and `this`

Arrow functions ka apna `this` nahi hota.

Ye surrounding **lexical context** se `this` leti hain.

Example:

```javascript
const student = {
    name: "Rahul",

    greet: function() {
        const show = () => {
            console.log(this.name);
        };

        show();
    }
};

student.greet();
```

---

# 41. Scope

Scope decide karta hai ki variable kahan accessible hai.

Main types:

* Global Scope
* Function Scope
* Block Scope

Example:

```javascript
let globalVar = "Global";

function test() {
    let localVar = "Local";
}
```

`localVar` function ke bahar directly accessible nahi hai.

---

# 42. Hoisting

JavaScript execution se pehle declarations ko process karti hai. Is behavior ko commonly **hoisting** kaha jata hai.

Example:

```javascript
console.log(x);

var x = 10;
```

`var` declaration hoist hoti hai, isliye result:

```text
undefined
```

`let` aur `const` declarations bhi scope ke beginning se associated hoti hain, lekin initialization se pehle access karne par **Temporal Dead Zone (TDZ)** ke karan error milta hai.

---

# 43. Closure

Closure tab hota hai jab inner function apne outer function ke variables ko **remember/access** kar sakta hai, even after outer function finish ho gaya ho.

Example:

```javascript
function outer() {
    let count = 0;

    return function() {
        count++;
        return count;
    };
}

const counter = outer();

console.log(counter());
console.log(counter());
```

Output:

```text
1
2
```

### Closure ke Uses

* Data privacy
* Counters
* Callbacks
* Function factories

---

# 44. Callback Function

Jo function kisi doosre function ko argument ke form mein pass hota hai, use **callback function** kehte hain.

```javascript
function greet(name, callback) {
    console.log("Hello " + name);
    callback();
}

function done() {
    console.log("Done");
}

greet("Rahul", done);
```

---

# 45. Synchronous vs Asynchronous JavaScript

## Synchronous

Code generally one statement at a time execute hota hai.

```text
Task 1
  ↓
Task 2
  ↓
Task 3
```

## Asynchronous

Long-running operations ke wait ke dauran baaki work continue ho sakta hai.

Examples:

* API calls
* Timers
* File operations

---

# 46. `setTimeout()`

Code ko specified delay ke baad execute karne ke liye `setTimeout()` use hota hai.

```javascript
setTimeout(() => {
    console.log("Hello");
}, 2000);
```

Approximately 2 seconds baad callback execute hone ke liye schedule hota hai.

---

# 47. Promise

Promise asynchronous operation ka **eventual result** represent karta hai.

Promise ki states:

```text
Pending
   ↓
Fulfilled
   OR
Rejected
```

Example:

```javascript
const promise = new Promise((resolve, reject) => {

    let success = true;

    if (success) {
        resolve("Success");
    } else {
        reject("Failed");
    }

});
```

---

# 48. `.then()` and `.catch()`

```javascript
promise
    .then(result => {
        console.log(result);
    })
    .catch(error => {
        console.log(error);
    });
```

* `.then()` → Success handle
* `.catch()` → Error handle

---

# 49. Async/Await

Promises ko readable way mein handle karne ke liye `async/await` use hota hai.

```javascript
async function getData() {
    try {
        const response = await fetch("/api/users");
        const data = await response.json();

        console.log(data);
    } catch (error) {
        console.log(error);
    }
}
```

`await` promise settle hone tak us `async` function ke execution ko pause karta hai.

---

# 50. Fetch API

Server/API se data request karne ke liye `fetch()` use kar sakte hain.

## GET

```javascript
fetch("/api/users")
    .then(response => response.json())
    .then(data => {
        console.log(data);
    });
```

## POST

```javascript
fetch("/api/users", {
    method: "POST",

    headers: {
        "Content-Type": "application/json"
    },

    body: JSON.stringify({
        name: "Rahul",
        age: 21
    })
});
```

---

# 51. JSON

**JSON = JavaScript Object Notation**

API communication mein commonly use hota hai.

### JSON

```json
{
    "name": "Rahul",
    "age": 21
}
```

### JavaScript Object

```javascript
const user = {
    name: "Rahul",
    age: 21
};
```

## `JSON.stringify()`

Object → JSON string

```javascript
const json = JSON.stringify(user);
```

## `JSON.parse()`

JSON string → JavaScript object

```javascript
const obj = JSON.parse(json);
```

---

# 52. Error Handling

JavaScript mein `try...catch` use kar sakte hain.

```javascript
try {
    let result = riskyOperation();
} catch (error) {
    console.log("Error:", error);
}
```

## `finally`

```javascript
try {
    console.log("Try");
} catch (error) {
    console.log("Error");
} finally {
    console.log("Always runs");
}
```

`finally` generally success ya error dono cases mein execute hota hai.

---

# 53. Local Storage

Browser mein data store karne ke liye `localStorage` use hota hai.

## Set

```javascript
localStorage.setItem("name", "Rahul");
```

## Get

```javascript
let name = localStorage.getItem("name");
```

## Remove

```javascript
localStorage.removeItem("name");
```

## Clear

```javascript
localStorage.clear();
```

### Important

`localStorage` values ko **strings** ke form mein store karta hai.

Object store karna ho:

```javascript
localStorage.setItem(
    "user",
    JSON.stringify(user)
);
```

---

# 54. Session Storage

`sessionStorage` bhi key-value data store karta hai, but data generally **current browser tab/session ke lifetime** se associated hota hai.

```javascript
sessionStorage.setItem("name", "Rahul");
```

---

# 55. LocalStorage vs SessionStorage

| LocalStorage                          | SessionStorage                                |
| ------------------------------------- | --------------------------------------------- |
| Data longer persist kar sakta hai     | Tab/session ke lifetime se associated         |
| Browser storage                       | Browser storage                               |
| `localStorage`                        | `sessionStorage`                              |
| Manually clear/remove karna padta hai | Tab close hone par normally clear ho jata hai |

---

# 56. ES6 Features

**ES6 / ECMAScript 2015** ne JavaScript mein many important features introduce kiye.

Important features:

* `let`
* `const`
* Arrow functions
* Template literals
* Destructuring
* Spread operator
* Rest parameters
* Classes
* Modules
* Promises
* Default parameters

---

# 57. Classes

JavaScript mein classes objects create karne ke liye **blueprint** provide karti hain.

```javascript
class Student {

    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    greet() {
        console.log("Hello " + this.name);
    }
}

const student = new Student("Rahul", 21);

student.greet();
```

---

# 58. Inheritance

Ek class doosri class ki properties/methods inherit kar sakti hai.

```javascript
class Person {
    greet() {
        console.log("Hello");
    }
}

class Student extends Person {
    study() {
        console.log("Studying");
    }
}

const s = new Student();

s.greet();
s.study();
```

---

# 59. Modules

Large applications mein JavaScript ko multiple files mein divide kar sakte hain.

## Export

```javascript
export function add(a, b) {
    return a + b;
}
```

## Import

```javascript
import { add } from "./math.js";

console.log(add(10, 20));
```

HTML mein module use karne ke liye:

```html
<script type="module" src="app.js"></script>
```

---

# 60. Shallow Copy vs Deep Copy

## Shallow Copy

Nested objects/arrays ke references shared ho sakte hain.

```javascript
const a = {
    name: "Rahul",

    address: {
        city: "Delhi"
    }
};

const b = { ...a };

b.address.city = "Mumbai";

console.log(a.address.city);
```

Nested object shared hone ki wajah se original object bhi affect ho sakta hai.

---

## Deep Copy

Deep copy ka goal nested data ki **independent copy** create karna hota hai.

Modern JavaScript mein:

```javascript
const b = structuredClone(a);
```

Isse nested data ki independent copy create ki ja sakti hai, subject to the types supported by `structuredClone()`.

---

# ⭐ Most Important JavaScript Interview Questions

Fresher interview ke liye ye topics **must prepare** karo:

1. What is JavaScript?
2. `var` vs `let` vs `const`
3. Data Types
4. `==` vs `===`
5. `null` vs `undefined`
6. Function vs Arrow Function
7. Array Methods — `map`, `filter`, `reduce`
8. Object and Array
9. Destructuring
10. Spread vs Rest
11. DOM
12. Events
13. Event Bubbling / Capturing
14. Scope
15. Hoisting
16. Closure
17. Callback
18. Promise
19. Async/Await
20. Fetch API
21. JSON
22. LocalStorage vs SessionStorage
23. `this`
24. Classes and Inheritance
25. Synchronous vs Asynchronous JavaScript

---

# 🧠 Complete Revision Flow

```text
JavaScript
    ↓
Variables & Data Types
    ↓
Operators
    ↓
Conditions & Loops
    ↓
Functions
    ↓
Arrays & Objects
    ↓
ES6 Features
    ↓
DOM
    ↓
Events
    ↓
Scope & Closure
    ↓
Callbacks
    ↓
Promises
    ↓
Async/Await
    ↓
Fetch API
    ↓
JSON
    ↓
Storage
    ↓
Classes & Modules
```

---

# 🎯 Quick Revision

```text
JavaScript
→ Programming Language

HTML
→ Structure

CSS
→ Styling

JavaScript
→ Behavior / Functionality

let / const
→ Modern variables

Array
→ Multiple values

Object
→ Key-value pairs

map()
→ Transform

filter()
→ Select

reduce()
→ Combine

DOM
→ HTML document ko JavaScript se access/manipulate karna

Event
→ User/browser action

Callback
→ Function passed as argument

Promise
→ Async operation ka eventual result

async/await
→ Promises ko readable way mein handle karna

fetch()
→ API request

JSON
→ Data exchange format

Closure
→ Inner function outer variables ko remember karta hai

localStorage
→ Persistent browser storage

sessionStorage
→ Tab/session-based browser storage

Class
→ Object creation ka blueprint
```


# WordPress Interview Questions & Answers

### 1. WordPress kya hai?
**Answer:**
WordPress ek open-source CMS (Content Management System) hai jiska use websites, blogs aur online stores banane aur manage karne ke liye hota hai.

---

### 2. WordPress.com aur WordPress.org mein farak?

| Features | WordPress.com | WordPress.org |
| :--- | :--- | :--- |
| **Hosting** | Hosted service hai (Hosting WordPress provide karta hai) | Self-hosted software hai (Hosting khud leni padti hai) |
| **Setup** | Setup easy hai | Thoda technical setup karna padta hai |
| **Customization** | Customization comparatively limited ho sakti hai | Full customization possible hai |
| **Usability** | Beginners ke liye easy | Developers ke liye zyada flexible |

**Simple Summary:**
* **WordPress.com:** Hosting included
* **WordPress.org:** Software + apni hosting

---

### 3. WordPress kis language mein likha gaya hai?
**Answer:**
WordPress mainly **PHP** mein develop kiya gaya hai aur website data ke liye **MySQL/MariaDB** database use karta hai. Frontend mein **HTML**, **CSS** aur **JavaScript** bhi use hote hain.

---

### 4. CMS kya hota hai?
**Answer:**
CMS ka full form **Content Management System** hai. Ye ek software hota hai jisse bina zyada coding ke website ka content create, edit aur manage kar sakte hain.  
*Examples:* WordPress, Joomla, Drupal.

---

### 5. WordPress install karne ke liye kya requirements chahiye?
**Answer:**
Basic requirements:
* Web hosting/server
* PHP
* MySQL ya MariaDB database
* HTTPS support
* Domain name (live website ke liye)

*Current WordPress recommendation:* PHP 8.3+, MySQL 8.0+ ya MariaDB 10.11+ hai.

---

### 6. WordPress Dashboard mein kya-kya milta hai?
**Answer:**
Dashboard WordPress website ka admin control panel hai. Isme commonly yeh components milte hain:
* Posts
* Media
* Pages
* Comments
* Appearance
* Plugins
* Users
* Tools
* Settings
* Dashboard / Updates

---

### 7. Theme kya hoti hai?
**Answer:**
Theme website ka design aur appearance decide karti hai, jaise layout, colors, fonts, header, footer etc.  
**Simple:** Theme = Website ka look/design

---

### 8. Plugin kya hota hai?
**Answer:**
Plugin ek additional software/component hota hai jo WordPress website mein new functionality/features add karta hai.  
*Examples:* Contact form, SEO, security, backup etc.  
**Simple:** Plugin = Website mein extra feature add karna

---

### 9. Theme aur Plugin mein farak?

| Theme | Plugin |
| :--- | :--- |
| Website ka design change karti hai | Website ki functionality add karta hai |
| Appearance par focus hota hai | Features/functionality par focus hota hai |
| Layout, colors, fonts control karti hai | SEO, forms, security etc. add kar sakta hai |

---

### 10. Post kya hota hai?
**Answer:**
Post WordPress mein mainly regular/frequently updated content ke liye use hota hai, jaise blog articles aur news.  
Posts normally date aur category/tag ke saath organize kiye ja sakte hain.

---

### 11. Page kya hota hai?
**Answer:**
Page static/important information ke liye use hota hai.  
*Examples:* About Us, Contact Us, Privacy Policy, Services.

---

### 12. Post aur Page mein farak?

| Post | Page |
| :--- | :--- |
| Regular content ke liye | Static content ke liye |
| Date/time associated hota hai | Usually date-based nahi hota |
| Categories/Tags use kar sakte hain | Usually categories/tags ki need nahi hoti |
| Blog/news ke liye useful | About, Contact etc. ke liye useful |

---

### 13. Category aur Tag mein farak?
* **Category:** Content ko broad groups mein divide karti hai.
* **Tag:** Content ke specific topics/keywords ko identify karta hai.

*Example:*
* **Category:** Web Development
* **Tags:** HTML, CSS, JavaScript

**Simple:** Category = bada group | Tag = specific keyword

---

### 14. Permalink kya hota hai?
**Answer:**
Permalink kisi WordPress page ya post ka permanent URL/address hota hai.  
*Example:* `https://example.com/my-first-post/`

---

### 15. Permalink structure kaise change karte ho?
**Answer:**
WordPress Dashboard mein:
1. Go to **Settings** $\rightarrow$ **Permalinks**
2. Desired structure select karein
3. **Save Changes** par click karein

---

### 16. Media Library kya hai?
**Answer:**
Media Library WordPress ka section hai jahan website ki images, videos, audio aur documents/files store aur manage hote hain.

---

### 17. Featured Image kya hoti hai?
**Answer:**
Featured Image kisi post ya page ki main/representative image hoti hai jo post ko visually represent karti hai.  
Ye blog listing, homepage ya post ke top par show ho sakti hai.

---

### 18. Widget kya hota hai?
**Answer:**
Widget ek small content/functionality block hota hai jise website ke specific areas mein add kar sakte hain.  
*Examples:*
* Search
* Recent Posts
* Categories
* Calendar
* Recent Comments

---

### 19. Widget aur Plugin mein farak?

| Widget | Plugin |
| :--- | :--- |
| Website ke specific area mein content/function show karta hai | New functionality add karta hai |
| Usually sidebar/footer etc. mein use hota hai | Site-wide feature provide kar sakta hai |
| *Example:* Search widget | *Example:* SEO plugin |

**Simple:** Widget = kahan/show kya karna hai | Plugin = functionality add karna

---

### 20. Sidebar kya hoti hai?
**Answer:**
Sidebar website ka ek side area/section hota hai jahan widgets ya additional information display ki ja sakti hai.  
*Example:* Search, Categories, Recent Posts etc.

---

### 21. Menu kaise create karte ho WordPress mein?
**Answer:**
**Classic themes mein:**
1. Go to **Dashboard** $\rightarrow$ **Appearance** $\rightarrow$ **Menus** $\rightarrow$ **Create New Menu**
2. Menu name enter karo.
3. Pages/links add karo.
4. Menu items ka order set karo.
5. Menu location select karo.
6. **Save Menu** par click karo.

*Note:* Block themes mein navigation generally **Appearance** $\rightarrow$ **Editor** $\rightarrow$ **Navigation** se manage ki ja sakti hai.

---

### 22. Theme kaise install karte ho?
**Answer:**
1. Go to **Dashboard** $\rightarrow$ **Appearance** $\rightarrow$ **Themes** $\rightarrow$ **Add New**
2. Theme search karo.
3. **Install** par click karo.
4. **Activate** par click karo.

*(Agar ZIP file hai to **Upload Theme** option se ZIP upload kar sakte ho.)*

---

### 23. Plugin kaise install/activate karte ho?
**Answer:**
1. Go to **Dashboard** $\rightarrow$ **Plugins** $\rightarrow$ **Add New Plugin**
2. Plugin search karo.
3. **Install Now** par click karo.
4. **Activate** par click karo.

*(ZIP plugin ke liye **Upload Plugin** option use kar sakte ho.)*

---

### 24. WordPress ka latest stable version kaunsa hai?
**Answer:**
September 2026 ke according WordPress 7.1 latest stable release hai. WordPress.org ke release archive ke according WordPress 7.1 19 August 2026 ko release hua tha.

**Interview mein:**  
*"The latest stable version is WordPress 7.1."*

---

### 25. wp-admin kya hota hai?
**Answer:**
`wp-admin` WordPress ka administration/dashboard area hai jahan se website ko manage kiya jata hai.  
*Example:* `https://example.com/wp-admin`

Yahan login karke posts, pages, themes, plugins, users aur settings manage kar sakte hain.

---

### 26. Default WordPress themes ke naam batao (kuch)
**Answer:**
Kuch default WordPress themes:
* Twenty Twenty-Five
* Twenty Twenty-Four
* Twenty Twenty-Three
* Twenty Twenty-Two
* Twenty Twenty-One

---

### 27. WordPress mein Comments kaise manage karte ho?
**Answer:**
Go to **Dashboard** $\rightarrow$ **Comments**  
Yahan se comments ko:
* Approve
* Reply
* Edit
* Mark as Spam
* Delete  
kar sakte hain.

---

### 28. Draft, Published aur Pending post mein farak?

| Status | Meaning |
| :--- | :--- |
| **Draft** | Post save hai but public nahi hai |
| **Pending Review** | Post review/approval ke liye ready hai |
| **Published** | Post website par public hai |

**Simple:**
* Draft = abhi complete/publish nahi
* Pending = review ke liye
* Published = public

---

### 29. Revisions kya hote hain WordPress mein?
**Answer:**
Revisions WordPress mein post/page ke previous saved versions hote hain.  
Isse hum previous version ko dekh sakte hain aur zarurat padne par restore bhi kar sakte hain.

---

### 30. Gutenberg Editor kya hai?
**Answer:**
Gutenberg WordPress ka block-based content editor hai jisme content ko different blocks ke through create aur edit kiya jata hai.  
*Examples:* Paragraph block, Heading block, Image block, Button block, Video block.

---

### 31. Classic Editor aur Gutenberg mein farak?

| Classic Editor | Gutenberg |
| :--- | :--- |
| Traditional editor | Block-based editor |
| Simple text editor jaisa interface | Blocks ke through content create hota hai |
| Less flexible layout | More flexible layout |
| Older editing experience | Modern WordPress editing experience |

---

### 32. Blocks kya hote hain Gutenberg mein?
**Answer:**
Blocks Gutenberg editor ke individual content elements hote hain.  
*Examples:* Paragraph Block, Heading Block, Image Block, Button Block, Video Block, Gallery Block.

**Simple:** Gutenberg mein har content element ek block ho sakta hai.

---

### 33. WordPress mein user roles kya hote hain?
**Answer:**
WordPress ke main user roles:
1. **Administrator:** Website ka almost full control hota hai.
2. **Editor:** Posts/pages aur doosre users ke content ko manage/edit/publish kar sakta hai.
3. **Author:** Apne posts ko create, edit aur publish kar sakta hai.
4. **Contributor:** Posts create/edit kar sakta hai, lekin normally publish nahi kar sakta.
5. **Subscriber:** Basic role hota hai; mainly login/profile management ke liye.

---

### 34. Admin aur Editor role mein farak?

| Administrator | Editor |
| :--- | :--- |
| Almost full website control | Mainly content management |
| Themes manage kar sakta hai | Usually themes manage nahi karta |
| Plugins manage kar sakta hai | Usually plugins manage nahi karta |
| Users manage kar sakta hai | User management limited/not available |
| Website settings change kar sakta hai | Main focus posts/pages/content par hota hai |

**Simple:**
* Admin = Website ka complete control
* Editor = Content ka control

---

### 35. Sticky Post kya hota hai?
**Answer:**
Sticky Post ek aisa post hota hai jise WordPress post listing mein normally top par keep karne ke liye mark kiya jata hai.

*Example:* Agar blog mein 10 posts hain aur ek important announcement hai, toh us post ko Sticky bana sakte hain taaki woh top par prominently show ho.

**Simple:** Sticky Post = Important post ko top par rakhna.


# WordPress Advanced & Developer Interview Questions

### 1. `wp-config.php` file kya karti hai?
**Answer:**
`wp-config.php` WordPress ki main configuration file hai. Isme database connection details, database name, username, password, security keys aur severe configuration settings hoti hain.

**Simple:** `wp-config.php` = WordPress ki main configuration file

---

### 2. `wp-content` folder mein kya hota hai?
**Answer:**
`wp-content` folder mein website ka custom content aur extensions store hote hain.  
Isme main elements store hote hain:
* **Themes**
* **Plugins**
* **Uploaded Media**

---

### 3. Themes aur Plugins files kahan store hoti hain?
**Answer:**
* **Themes:** `wp-content/themes/`
* **Plugins:** `wp-content/plugins/`

---

### 4. Child Theme kya hota hai?
**Answer:**
Child Theme ek aisi theme hoti hai jo Parent Theme ki functionality aur design ko inherit karti hai, lekin usme apne custom changes karne ki permission deti hai.

**Simple:** Child Theme = Parent Theme ka customized version

---

### 5. Child Theme kyun use karte ho parent theme ko directly edit karne ki jagah?
**Answer:**
Parent theme ko directly edit karne par theme update hone ke baad custom changes overwrite/lost ho sakte hain.

**Child Theme use karne ke fayde:**
* Custom changes safe rehte hain.
* Parent Theme ko freely update kar sakte hain.
* Original theme files modify nahi hoti.

---

### 6. `functions.php` file ka use kya hai?
**Answer:**
`functions.php` theme ke liye custom functionality aur PHP code add karne ke liye use hoti hai.

*Examples of use-cases:*
* Custom functions
* Actions / Filters
* CSS / JS enqueue karna
* Custom menus register karna
* Custom post types create karna

**Simple:** `functions.php` = Theme ki functionality customize karne ki file

---

### 7. Custom Post Types kya hote hain?
**Answer:**
Custom Post Type WordPress mein custom type ka content create karne ke liye use hota hai jo normal Posts/Pages se different hota hai.

*Examples:*
* Posts
* Pages
* Products
* Projects
* Books
* Movies

*Scenario:* Agar portfolio website hai, toh Projects naam ka Custom Post Type bana sakte hain.

---

### 8. Taxonomies kya hoti hain? (Custom Taxonomy vs Default)
**Answer:**
Taxonomy ka use content ko group aur organize karne ke liye hota hai.

* **Default Taxonomies:** WordPress mein mainly `Category` aur `Tag`.
* **Custom Taxonomy:** Developer apni requirement ke according custom taxonomy bana sakta hai.

*Example:*
* **Custom Post Type:** Books
* **Custom Taxonomy:** Genre
* **Terms:** Fiction, Horror, Romance

**Simple:** Taxonomy = Content ko classify/group karna

---

### 9. Shortcodes kya hote hain?
**Answer:**
Shortcode ek small code/placeholder hota hai jise content ke andar likhkar specific functionality display kar sakte hain.

*Example:*
`[contact-form]`

WordPress/plugin is shortcode ko process karke actual content/functionality render karta hai.

---

### 10. Custom shortcode kaise create karte ho?
**Answer:**
`functions.php` mein `add_shortcode()` function use karke custom shortcode bana sakte hain.

*Code Example:*
```php
function hello_shortcode() {
    return "Hello Pranjal!";
}
add_shortcode('hello', 'hello_shortcode');