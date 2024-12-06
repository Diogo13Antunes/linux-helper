# **Contributing**

Welcome! Thank you for your interest in contributing to our collection of useful Linux scripts to automate tasks, improve productivity, and manage systems efficiently. Before you start, please take a moment to read the guidelines outlined below to ensure your contribution is well-structured and follows the best practices.

## **How to Contribute**

To contribute to this project, you can submit a pull request (PR) for new features, bug fixes, or enhancements. When submitting a pull request, make sure your changes are clearly documented and follow the structure provided below.

---

### **Commit Message Format**

We follow a **structured commit message format** to ensure clarity and consistency in our version history. Here's the [**template**](.gitmessage) for each commit:

1. **Type**: The nature of the change, for example, `feat`, `fix`, `docs`, `style`, `refactor`, `test`, or `chore`.

2. **Scope**: The part of the project that is being changed, such as a specific script, automation process, or documentation.

3. **Short Description**: A concise, one-line summary of the change (aim for under 50 characters).

4. **Long Description**: A more detailed explanation of the change (optional, use if necessary).

5. **BREAKING CHANGE**: If the change introduces backward compatibility issues, describe the changes here.

6. **Closes #<issue-number>**: If this commit fixes or addresses a particular issue, reference the issue number here (e.g., `Closes #123`).

By following this format, it will be easier to understand the purpose of the changes at a glance, maintain a consistent history, and track issues effectively.

---

### **Pull Request Process**

When submitting a pull request (PR), please use the provided [**template**](.github/PULL_REQUEST_TEMPLATE/pull_request_template.md) to ensure all necessary information is included and the review process goes smoothly. Here's a high-level overview of the PR process:

1. **Fork the repository**: Start by forking the repository, then create a new branch for your work.
2. **Make your changes**: Make the necessary changes, ensuring they align with the project’s goals.
3. **Write clear commit messages**: Follow the structured commit message format for clarity.
4. **Test your changes**: Run the scripts and tests to make sure your changes are working as expected and don’t introduce bugs.
5. **Update documentation**: If your changes affect how something works, update the relevant documentation or instructions.
6. **Submit your PR**: Once you are happy with your changes, submit a pull request, describing your work and linking to any relevant issues.

---

### **Issue Template**

If you are submitting a new issue, please use the **issue template** to help us understand the problem or feature you want to report. The issue [**template**](.github/ISSUE_TEMPLATE/contribution-template.md) will prompt you to provide important information, such as:

1. **Description**: A clear and concise explanation of the bug or feature.
2. **Steps to Reproduce**: If it's a bug, include steps to reproduce the problem.
3. **Proposed Solution**: Optional – if you have an idea on how to fix the bug or implement the feature.
4. **Motivation**: Why is this change needed? What impact will it have on the project or users?

---

### **Checklist for Pull Requests**

Before submitting your pull request, please ensure that:

- [ ] I have tested my changes and verified they work as expected.
- [ ] I have followed the coding style and naming conventions used in the repository.
- [ ] I have updated the documentation where necessary.
- [ ] I have added tests (if applicable).
- [ ] I have checked that my code does not introduce any security risks.
- [ ] I have made the changes in a separate branch (not `main` or `master`).

By ticking the boxes, you help us ensure that all contributions maintain the quality and integrity of the project.

---

### **General Guidelines for Contributions**

1. **Fork the repository**: Always fork the repository before contributing. Work in a separate branch, and never commit directly to `main` or `master`.
2. **Write Tests**: If you're adding or modifying functionality, ensure tests exist for your code. This ensures the project remains stable and reliable.
3. **Follow Coding Style**: Use consistent formatting, indentation, and naming conventions. If you're unsure about the coding style, ask for clarification.
4. **Document Changes**: Always update the documentation if your changes impact how users or developers interact with the scripts. This may include the README or specific script documentation.
5. **Keep it Small**: Try to make small, focused pull requests. If your changes are large or complicated, consider breaking them into smaller, manageable parts.
6. **Be Respectful**: Follow the code of conduct and be respectful to everyone involved in the project. Open-source communities thrive on positive, helpful interactions.

---

Yes, it's perfectly fine to ask contributors to create a Markdown file (e.g., `script-name.md`) with that template as part of their pull request. This helps maintain consistency and ensures that each script has a dedicated documentation file with clear details about its functionality.

Here's how you can phrase it in the **Contributors.md** file to make this clear:

---

### How to Document Your Script

1. **Create a new Markdown file** in the repository, following this format:
   - The file should be placed in the script folder (e.g., `script-name.md`).
   - Use the following template to describe your script:

```markdown
### [Script Name](script-folder)

**Purpose**: Briefly describe the purpose of the script.  
**Key Features**:  
- Feature 1
- Feature 2
- Feature 3

**Location**: [script-folder/](script-folder)  
**Documentation**: See the `README.md` in the `script-folder` for more details.
```

2. **Example**:

```markdown
### [Disk Cleanup Script](disk-cleanup)

**Purpose**: Free up disk space by identifying and removing unnecessary files.  
**Key Features**:  
- Identifies temporary files, caches, and large logs.
- Interactive mode for reviewing deletions.
- Automation using the `-y` flag.  

**Location**: [disk-cleanup/](disk-cleanup)  
**Documentation**: See the `README.md` in the `disk-cleanup` folder for more details.
```

3. **Submit the Pull Request**:
   - Include your new or updated Markdown file in the pull request along with the code changes.
   - Ensure the script’s functionality is fully described and easy to follow for other contributors.

---

### **Contact**

If you have any questions or need help, feel free to tag any maintainer or mention it in the comments. We are here to assist you!

---

Thank you for contributing to this project! Your efforts help improve automation and productivity across the Linux community.
