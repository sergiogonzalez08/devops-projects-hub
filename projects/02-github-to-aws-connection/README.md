This project demonstrates setting up **Git & GitHub** and connecting my previous Web App into a Git repository.

---

## Steps I Followed

<!-- Steps 1 & 2 as two columns -->
<table>
<tr>
<td>

### 1. Installing Git on EC2
- SSH into the **EC2 instance**.  
- Updated packages and installed **Git**:  
```bash
sudo dnf update -y
sudo dnf install git -y
````

* Configured Git **user name** and **email**:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

</td>
<td>

### 2. Setting Up GitHub

* Created a **GitHub repository** for the Web App project.
* Generated a **Personal Access Token** for secure authentication.
* Connected the local repository to GitHub:

```bash
git remote add origin https://github.com/yourusername/your-repo.git
```

</td>
</tr>
</table>

---

### 1. Terminal Commands

**Navigate to the project directory:**

```bash
cd ~/nextwork-web-project
```

**Initialize Git repository:**

```bash
git init
```

![Terminal Screenshot](images/L2%20-%20Git.png)

---

### 2. Commit & Push Changes

**Stage files for commit:**

```bash
git add .
```

**Commit changes with a message:**

```bash
git commit -m "Initial commit of Web App to GitHub"
```

**Push to GitHub repository:**

```bash
git push -u origin master
```

> Using `-u` sets the upstream for future pushes.

![Git Commit Screenshot](images/L2%20-%20Bad%20Auth.png)

---

### 3. Authentication & Tokens

* GitHub now requires **Personal Access Tokens** instead of passwords.
* Generated a token under **GitHub → Developer settings → Personal Access Tokens**.
* Used the token when pushing from EC2.

![Personal Access Token Screenshot](images/L2%20-%20Personal%20Access%20Token.png)

---

### 4. Making Further Changes

* Edited `index.jsp` in VS Code via Remote SSH.
* Staged, committed, and pushed changes again:

```bash
git add index.jsp
git commit -m "Updated index.jsp with new content"
git push
```

* Verified the updates appear on GitHub.

![VS Code Git Screenshot](images/L2%20-%20Index.jsp.png)

---

### 5. Project Reflection

* Practiced **Bash, SSH, Git, and GitHub workflow**.
* Free-tier EC2 slowness was challenging.
* Most rewarding: seeing commits appear on GitHub quickly.
* Time spent: ~52 minutes.

```

