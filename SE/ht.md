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