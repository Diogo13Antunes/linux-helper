# Documentation Guide for Contributors

This document provides guidelines for contributors on how to document scripts in this repository. Clear and consistent documentation is essential for ensuring that users and developers can easily understand and use the scripts.

---

## Files Needed for Documentation

When documenting a script, two key files are required:

### 1. `README-template.md` Template

The `README-template.md` file serves as the main documentation for the script. It should provide an overview of the script's functionality, usage instructions, customization options, and other relevant details.

Here is a breakdown of what should be included in the `README-template.md`:

#### Project Name

- **Purpose**: A brief description of what the script does and why it exists.

#### Features

- **Feature 1**: A concise description of a key feature of the script.
- **Feature 2**: Another key feature and its description.
- **Feature 3**: A third feature and its description (if applicable).

#### Prerequisites

- List any prerequisites for using the script, such as system requirements (e.g., Linux-based systems) or dependencies (e.g., specific software or libraries).

#### Installation

- Provide installation instructions for the script. This should include steps for downloading, cloning, or setting up the script in the user's environment.

#### Usage

- Explain how to run the script, including any required or optional arguments.
- Example:
  - **Help**: Display the usage instructions and details about the script.
    ```bash
    ./<script-name>.sh -h
    ```

#### Example Output

- Provide sample output to demonstrate what users can expect when running the script. This could include examples of both successful and error outputs to give users an idea of what to look for.

#### Customization (if applicable)

- If the script can be customized, explain how users can modify it for their needs. Include details about configurable options and how they can change them.

#### Important Notes (if applicable)

- Include any warnings or important information that users should be aware of. This may include potential risks (e.g., file deletion), important configurations, or environment-specific details.

#### Contributing

- Encourage contributions! Provide information on how contributors can suggest improvements, report issues, or submit pull requests.

---

### 2. `<script-name>.md` Template

Each script should also have a dedicated `<script-name>.md` file. This file is more specific and focuses on the script itself, summarizing its purpose and providing a link to the main documentation.

Here’s what should be included in the `<script-name>.md` file:

#### Script Name

- **Purpose**: A brief description of the script’s primary function.

#### Key Features

- **Feature 1**: A short description of one key feature.
- **Feature 2**: A short description of another key feature.
- **Feature 3**: If applicable, describe another important feature.

#### Location

- Specify the folder where the script can be found. For example: `[script-folder/](script-folder)`.

#### Documentation

- Provide a link to the main `README.md` file that contains detailed documentation about the script. This will help users navigate to the full documentation easily.

---

## How to Use the Templates

### Available Templates

- [README-template.md](README-template.md) - `README.md` Template
- [script-template.md](script-template.md) - `<script-name>.md` Template

### Steps for Documenting Your Script

1. **Clone the Template**: Copy the `README-template.md` and `script-template.md` templates into the folder for your new script.
2. **Rename Files**: Rename both files to `README.md` and `<script-name>.md`, respectively.
3. **Fill Out the Templates**:
   - Replace placeholders like `<Project Name>`, `<script-name>`, and `<repository-url>` with relevant information specific to your script.
   - For the `README.md`, provide detailed descriptions of the script's features, installation steps, and usage.
   - In the `<script-name>.md`, provide a short description of the script's purpose and link to the detailed `README.md` file.
4. **Ensure Completeness**: Make sure both the `README.md` and `<script-name>.md` contain the required sections and are filled with relevant information.
5. **Review**: After completing the documentation, review it for clarity, accuracy, and completeness. Ensure that a user unfamiliar with the script can understand and use it based on the provided documentation.

---

## Folder Structure Example

Here is an example of how your script and documentation files should be organized:

```
script-folder/
├── <script-name>.sh           # The main script file
├── README.md                  # Detailed documentation for the script
├── <script-name>.md             # Script-specific summary documentation
└── examples/                  # Optional folder for example configurations or input files
```

---

## Conclusion

Clear and consistent documentation is crucial for making your script accessible and understandable to other developers and users. By following these guidelines and using the provided templates, you will ensure that your script is well-documented and easy to use.

If you need any assistance or have questions about documenting your script, feel free to reach out for help!
