# Git Commands Guide (Upload & Clone)

## 1. Check Git Installation

```bash
git --version
```

**Output Example:**

```bash
git version 2.45.0
```

---

# 2. Configure Git (First Time Only)

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@gmail.com"
```

Check configuration:

```bash
git config --list
```

---

# 3. Initialize Git Repository

Project folder ke andar:

```bash
git init
```

**Working:**

* Hidden `.git` folder create hota hai.
* Folder Git repository ban jata hai.

---

# 4. Check File Status

```bash
git status
```

**Working:**

* Modified files
* New files
* Staged files
* Untracked files dikhata hai.

---

# 5. Add All Files

```bash
git add .
```

Specific file:

```bash
git add app.js
```

**Working:**
Files staging area me chale jate hain.

---

# 6. Commit Changes

```bash
git commit -m "Initial commit"
```

**Working:**
Snapshot save hota hai.

Example:

```bash
git commit -m "Added login page"
```

---

# 7. Create Main Branch

```bash
git branch -M main
```

**Working:**
Current branch ko `main` rename karta hai.

---

# 8. Connect GitHub Repository

```bash
git remote add origin https://github.com/username/project.git
```

Check remote:

```bash
git remote -v
```

---

# 9. Upload Code to GitHub

```bash
git push -u origin main
```

**Working:**
Local code GitHub par upload ho jata hai.

---

# Complete Upload Process

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/project.git
git push -u origin main
```

---

# 10. Clone Repository

```bash
git clone https://github.com/username/project.git
```

Example:

```bash
git clone https://github.com/rahul123/student-management.git
```

**Working:**
GitHub repository local machine par download ho jati hai.

---

# 11. Move Inside Project

```bash
cd project
```

Example:

```bash
cd student-management
```

---

# 12. Pull Latest Changes

```bash
git pull origin main
```

**Working:**
GitHub se latest code download karta hai.

---

# 13. Push New Changes

```bash
git add .
git commit -m "Updated code"
git push origin main
```

---

# 14. Check Branches

```bash
git branch
```

Create new branch:

```bash
git branch feature
```

Switch branch:

```bash
git checkout feature
```

---

# 15. Create and Switch Branch

```bash
git checkout -b feature
```

---

# 16. Merge Branch

```bash
git checkout main
git merge feature
```

---

# 17. View Commit History

```bash
git log
```

Short form:

```bash
git log --oneline
```

---

# 18. Remove File from Git

```bash
git rm file.txt
```

---

# 19. Undo Last Commit

```bash
git reset --soft HEAD~1
```

---

# 20. Download Latest Repository

```bash
git pull
```

---

# Most Used Git Commands

| Command       | Purpose               |
| ------------- | --------------------- |
| git init      | Initialize repository |
| git status    | Check status          |
| git add .     | Add files             |
| git commit -m | Save changes          |
| git push      | Upload code           |
| git pull      | Download changes      |
| git clone     | Copy repository       |
| git branch    | Show branches         |
| git checkout  | Switch branch         |
| git merge     | Merge branches        |
| git log       | Show commits          |
| git remote -v | Show GitHub link      |

---

# Daily Workflow

```bash
git status
git add .
git commit -m "Updated code"
git push origin main
```

---

# Clone and Run Project

```bash
git clone https://github.com/username/project.git
cd project
git pull
```

---

# Upload Existing Project to GitHub

```bash
cd project-folder
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/project.git
git push -u origin main
```
