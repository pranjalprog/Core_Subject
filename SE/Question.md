# Software Engineering Interview Notes (B.Tech)

These are the most commonly asked **Software Engineering interview questions** for freshers.

---

# 1. What is Software Engineering?

**Answer:**

Software Engineering is the process of designing, developing, testing, deploying, and maintaining software using engineering principles.

**One-Line Definition**

> Software Engineering is the systematic approach to developing high-quality software.

---

# 2. What is Software?

**Answer:**

Software is a collection of programs, data, and documentation that instructs a computer to perform specific tasks.

### Types

- System Software
- Application Software

---

# 3. What is SDLC?

**Answer:**

SDLC (Software Development Life Cycle) is a step-by-step process used to develop software efficiently.

### Phases

1. Requirement Gathering
2. Planning
3. Design
4. Development
5. Testing
6. Deployment
7. Maintenance

---

# 4. What is Software Crisis?

**Answer:**

Software Crisis refers to the problems faced in software development, such as:

- Late delivery
- High cost
- Poor quality
- Difficult maintenance

---

# 5. What is SRS?

**Answer:**

SRS (Software Requirement Specification) is a document that contains all the functional and non-functional requirements of a software project.

---

# 6. Functional vs Non-Functional Requirements

| Functional Requirement | Non-Functional Requirement |
|-------------------------|----------------------------|
| Defines what the system does | Defines how the system performs |
| Login | Response time |
| Payment | Security |
| Registration | Reliability |

---

# 7. What is Agile?

**Answer:**

Agile is a software development methodology that develops software in small iterations and delivers working software frequently.

### Advantages

- Faster delivery
- Customer feedback
- Easy to change requirements

---

# 8. Waterfall Model

**Answer:**

The Waterfall Model is a linear SDLC model where each phase is completed before moving to the next.

### Advantages

- Simple
- Easy to understand
- Suitable for small projects

### Disadvantages

- Difficult to change requirements
- No working software until late stages

---

# 9. Spiral Model

**Answer:**

The Spiral Model combines iterative development with risk analysis.

### Best For

- Large projects
- High-risk projects

---

# 10. Prototype Model

**Answer:**

A prototype is an early working model of the software built to gather customer feedback before developing the final product.

---

# 11. Verification vs Validation

| Verification | Validation |
|--------------|------------|
| Are we building the product right? | Are we building the right product? |
| Before testing | During/after testing |
| Reviews | Executing the software |

---

# 12. What is Software Testing?

**Answer:**

Software Testing is the process of checking whether software works correctly and meets the specified requirements.

---

# 13. Types of Testing

- Unit Testing
- Integration Testing
- System Testing
- Acceptance Testing
- Regression Testing
- Smoke Testing
- Sanity Testing

---

# 14. Black Box Testing

**Answer:**

Testing software without knowing the internal code.

Focus:
- Input
- Output

---

# 15. White Box Testing

**Answer:**

Testing software by checking its internal code and logic.

Focus:
- Code
- Branches
- Loops

---

# 16. Alpha vs Beta Testing

| Alpha Testing | Beta Testing |
|---------------|--------------|
| Done by developers/testers | Done by real users |
| Before release | After alpha testing |
| Internal | External |

---

# 17. What is Software Quality?

**Answer:**

Software Quality means software satisfies customer requirements and is reliable, secure, efficient, and easy to maintain.

---

# 18. Coupling

**Answer:**

Coupling is the degree of dependency between modules.

- Low Coupling ✅ Good
- High Coupling ❌ Bad

---

# 19. Cohesion

**Answer:**

Cohesion measures how closely related the responsibilities of a module are.

- High Cohesion ✅ Good
- Low Cohesion ❌ Bad

---

# 20. Difference Between Coupling and Cohesion

| Coupling | Cohesion |
|-----------|----------|
| Relationship between modules | Relationship within a module |
| Low is better | High is better |

---

# 21. What is UML?

**Answer:**

UML (Unified Modeling Language) is used to visually represent the design and structure of a software system.

Common diagrams:

- Use Case Diagram
- Class Diagram
- Sequence Diagram
- Activity Diagram

---

# 22. What is Software Maintenance?

**Answer:**

Software Maintenance is the process of modifying software after deployment to fix bugs, improve performance, or adapt to changes.

### Types

- Corrective
- Adaptive
- Perfective
- Preventive

---

# 23. What is Project Management?

**Answer:**

Project Management is the process of planning, organizing, executing, monitoring, and completing a software project within time and budget.

---

# 24. What is Risk Management?

**Answer:**

Risk Management is the process of identifying, analyzing, and controlling project risks.

---

# 25. What is COCOMO?

**Answer:**

COCOMO (Constructive Cost Model) is a model used to estimate the effort, cost, and development time of a software project.

---

# 26. What is Version Control?

**Answer:**

Version Control is a system that tracks changes in source code and allows developers to collaborate efficiently.

### Popular Tools

- Git
- GitHub
- GitLab

---

# 27. What is Git?

**Answer:**

Git is a distributed version control system used to track code changes and collaborate with other developers.

---

# 28. What is GitHub?

**Answer:**

GitHub is a cloud-based platform that hosts Git repositories and provides collaboration features like pull requests and issue tracking.

---

# 29. Difference Between Git and GitHub

| Git | GitHub |
|-----|--------|
| Version Control System | Cloud hosting platform |
| Works locally | Works online |
| Tracks changes | Stores repositories |

---

# 30. What Makes Good Software?

A good software should be:

- Reliable
- Secure
- Efficient
- Scalable
- Maintainable
- Reusable
- User-Friendly
- Portable

---

# Frequently Asked HR + Technical Questions

### Why Software Engineering?

**Answer:**

Software Engineering provides a structured approach to developing high-quality, reliable, and maintainable software while reducing development cost and time.

---

### Which SDLC model would you choose?

**Answer:**

- Waterfall → Small projects with fixed requirements.
- Agile → Frequently changing requirements.
- Spiral → Large and high-risk projects.
- Prototype → Requirements are unclear.

---

### Why is Testing Important?

**Answer:**

Testing helps identify bugs, improves software quality, ensures reliability, and increases customer satisfaction.

---

### What is the difference between a Bug, Error, and Failure?

| Error | Bug (Defect) | Failure |
|--------|--------------|----------|
| Human mistake | Fault in the code | Incorrect behavior during execution |

---

# Quick Revision

- Software Engineering → Systematic software development.
- SDLC → Software Development Life Cycle.
- SRS → Requirement document.
- Agile → Iterative development.
- Waterfall → Sequential model.
- Spiral → Risk-driven model.
- Testing → Finds defects.
- Coupling → Low is good.
- Cohesion → High is good.
- UML → Software design diagrams.
- Git → Version control.
- GitHub → Git repository hosting.
- Maintenance → Improve software after deployment.


Authentication vs Authorization
Authentication	Authorization
Verifies who the user is (identity check).	Determines what the user is allowed to access.

Example:

Authentication: Logging in with a username and password.
Authorization: After login, an admin can access the admin panel, but a normal user cannot.

Easy Trick:

Authentication = Identity ("Who are you?")
Authorization = Permission ("What can you access?")


Verification vs Validation
Verification	Validation
Checks whether the software is built correctly according to requirements.	Checks whether the right software is built for the user's needs.

Example:

Verification: Reviewing the design document or code to ensure it follows the requirements.
Validation: Running the software to check if it satisfies the customer's expectations.

Easy Trick:

Verification = "Are we building the product right?"
Validation = "Are we building the right product?"