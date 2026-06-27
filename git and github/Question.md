# Top 50 Git & GitHub Interview Questions for Freshers

# 1. What is Git?

**Answer:**
Git is a distributed version control system used to track code changes.

**Example:**

```bash
git init
```

---

# 2. What is GitHub?

**Answer:**
GitHub is a cloud platform used to host Git repositories.

---

# 3. Difference Between Git and GitHub

| Git                    | GitHub                 |
| ---------------------- | ---------------------- |
| Version control system | Cloud hosting platform |
| Works locally          | Works online           |
| Tracks changes         | Stores repositories    |

---

# 4. What is a Repository?

A repository (repo) is a storage location for project files and their history.

---

# 5. What is Version Control?

System that tracks changes in files over time.

---

# 6. What is a Local Repository?

Repository stored on your computer.

---

# 7. What is a Remote Repository?

Repository hosted on GitHub or another server.

---

# 8. What is Git Init?

Creates a new Git repository.

```bash
git init
```

---

# 9. What is Git Clone?

Downloads a remote repository.

```bash
git clone URL
```

Example:

```bash
git clone https://github.com/user/project.git
```

---

# 10. What is Git Status?

Shows current repository status.

```bash
git status
```

---

# 11. What is Git Add?

Moves files to the staging area.

```bash
git add .
```

---

# 12. What is the Staging Area?

Temporary area before committing changes.

---

# 13. What is Git Commit?

Saves changes permanently.

```bash
git commit -m "Added login page"
```

---

# 14. What is Git Push?

Uploads local changes to GitHub.

```bash
git push origin main
```

---

# 15. What is Git Pull?

Downloads latest changes and merges them.

```bash
git pull origin main
```

---

# 16. What is Git Fetch?

Downloads changes without merging.

```bash
git fetch
```

---

# 17. Difference Between Pull and Fetch

| Pull                      | Fetch          |
| ------------------------- | -------------- |
| Downloads + merges        | Only downloads |
| Updates working directory | No merge       |

---

# 18. What is a Branch?

Separate line of development.

---

# 19. Why Use Branches?

To develop features independently.

---

# 20. Create a Branch

```bash
git branch feature
```

---

# 21. Switch Branch

```bash
git checkout feature
```

---

# 22. Create and Switch Branch

```bash
git checkout -b feature
```

---

# 23. What is the Main Branch?

Default branch of a repository.

Usually:

* main
* master

---

# 24. What is Git Merge?

Combines branches.

```bash
git merge feature
```

---

# 25. What is a Merge Conflict?

Occurs when Git cannot merge changes automatically.

---

# 26. How to Resolve Merge Conflict?

* Edit conflicting file.
* Save changes.
* Commit again.

---

# 27. What is Git Log?

Shows commit history.

```bash
git log
```

---

# 28. What is Git Log --oneline?

Displays commits in short format.

```bash
git log --oneline
```

---

# 29. What is HEAD in Git?

Pointer to the current commit.

---

# 30. What is Git Diff?

Shows differences between files.

```bash
git diff
```

---

# 31. What is Git Reset?

Moves HEAD to previous commits.

```bash
git reset HEAD~1
```

---

# 32. Difference Between Reset and Revert

| Reset           | Revert             |
| --------------- | ------------------ |
| Removes commits | Creates new commit |
| Changes history | Keeps history      |

---

# 33. What is Git Revert?

Undo a commit safely.

```bash
git revert commit_id
```

---

# 34. What is Git Stash?

Temporarily saves changes.

```bash
git stash
```

---

# 35. Restore Stash

```bash
git stash apply
```

---

# 36. List All Branches

```bash
git branch
```

Remote branches:

```bash
git branch -a
```

---

# 37. Delete a Branch

```bash
git branch -d feature
```

---

# 38. What is Origin?

Default name of remote repository.

---

# 39. View Remote Repository

```bash
git remote -v
```

---

# 40. Add Remote Repository

```bash
git remote add origin URL
```

---

# 41. What is Fork in GitHub?

Copy of another user's repository.

---

# 42. What is Pull Request (PR)?

Request to merge code into another branch.

---

# 43. Why Use Pull Requests?

* Code review
* Team collaboration
* Quality check

---

# 44. What is GitHub Actions?

CI/CD automation feature of GitHub.

---

# 45. What is .gitignore?

File that tells Git which files to ignore.

Example:

```text
node_modules/
.env
dist/
```

---

# 46. What Happens After Git Commit?

Changes are saved locally.

---

# 47. What Happens After Git Push?

Changes are uploaded to GitHub.

---

# 48. Difference Between GitHub and GitLab

| GitHub                       | GitLab               |
| ---------------------------- | -------------------- |
| Popular open-source platform | Strong CI/CD support |
| Large community              | DevOps features      |

---

# 49. Daily Git Workflow

```bash
git pull
git status
git add .
git commit -m "Updated code"
git push
```

---

# 50. Most Asked Interview Command Set

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin URL
git push -u origin main
```

---

# Rapid Fire Questions

1. What is Git?
2. What is GitHub?
3. What is a repository?
4. What is a commit?
5. What is staging?
6. What is a branch?
7. What is merge?
8. What is pull?
9. What is push?
10. What is clone?
11. What is stash?
12. What is revert?
13. What is reset?
14. What is fork?
15. What is pull request?

---

# Most Important Topics for Freshers

* Git vs GitHub
* Repository
* Commit
* Push and Pull
* Clone
* Branch
* Merge
* Merge Conflict
* Stash
* Reset vs Revert
* Fork
* Pull Request
* .gitignore
* Git Commands
* Daily Workflow
