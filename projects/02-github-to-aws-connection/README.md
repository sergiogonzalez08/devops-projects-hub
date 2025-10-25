# Git & GitHub: Connecting and Updating My Web App

This project demonstrates **setting up Git and GitHub**, connecting my previous Web App to GitHub, making changes, and pushing updates.

---

## Key Tools and Concepts

Services and tools used:

- **Git** – version control system to track changes.  
- **GitHub** – cloud repository to store and collaborate on code.  
- **VS Code** – code editor for editing files on EC2 via Remote-SSH.  
- **Bash & SSH** – terminal commands to manage EC2 and Git.

Key concepts learned:

- Installing Git locally on an EC2 instance.  
- Initializing a local Git repository.  
- Pushing commits to GitHub and viewing results live.  
- Authenticating using GitHub tokens.

---

## Steps I Followed

<!-- Steps 1 & 2 as two columns -->
<table>
<tr>
<td>

### 1. Install Git on EC2
- Updated system packages:
```bash
sudo dnf update -y
````

* Installed Git:

```bash
sudo dnf install git -y
```

### 2. Initialize Local Repository

* Navigated to project root on EC2.
* Ran:

```bash
git init
```

* Learned about branches: a branch is a "parallel version" of your project.

</td>
<td>

### 3. Connect to GitHub

* Added remote repository:

```bash
git remote add origin <GITHUB_REPO_URL>
```

* Added files to staging area:

```bash
git add .
```

* Committed changes:

```bash
git commit -m "Initial commit: connect Web App to GitHub"
```

* Pushed to GitHub:

```bash
git push -u origin master
```

</td>
</tr>
</table>

---

### 4. Authentication

* Git requires your **name and email** to track commits.
* GitHub no longer accepts passwords; use a **personal access token**.
* Created a token under GitHub **Developer Settings**.
* Configured token on EC2 to authenticate securely.

---

### 5. Making Changes

* Edited `.jsp` files in VS Code using Remote-SSH.
* Added, committed, and pushed updates:

```bash
git add .
git commit -m "Updated index.jsp with new content"
git push
```

* Verified changes in GitHub repository.

---

### Project Reflection

* Time spent: ~52 minutes
* Most challenging: slow EC2 free tier performance
* Most rewarding: seeing changes live on GitHub
* Motivation: sharpen skills with Bash, Git, and SSH

### Screenshots (Placeholders)

![Screenshot 1: Install Git](images/git-install.png)
![Screenshot 2: Initialize Repository](images/git-init.png)
![Screenshot 3: Push to GitHub](images/git-push.png)
![Screenshot 4: Edit JSP](images/edit-jsp.png)

```
