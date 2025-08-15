# Dev System Setup

A streamlined setup for developers to quickly configure their development environment on Linux. This project automates:
- Git configuration
- Secure SSH key generation
- Zsh and Oh My Zsh installation with custom themes and plugins
- Node Version Manager (NVM) installation
- VS Code extension recommendations

## Table of Contents

1. [Project Overview](#project-overview) — Introduction and purpose of the setup scripts
2. [Setup Instructions](#setup-instructions) — Step-by-step guide to run the scripts and configure your environment
    - [Zsh & Oh My Zsh Setup](#1-zsh--oh-my-zsh-setup) — Configure your shell, Git, SSH keys, and install Zsh with customizations
    - [Tooling Setup (Node Version Manager)](#2-tooling-setup-node-version-manager) — Install NVM for managing Node.js versions
3. [VS Code Extensions](#vs-code-extensions) — Recommended and optional extensions for an optimal development experience
4. [Tooling Setup Details](#tooling-setup) — Additional information about installed tools and configurations
5. [Contributors](#contributors) — Acknowledgment of project contributors
6. [License](#license) — Licensing information for the project

## Project Overview

A complete solution for setting up a modern development environment on Linux, including shell, Git, SSH, Node.js, and editor extensions. Designed for speed, security, and consistency across teams.

## Setup Instructions

### 1. Zsh & Oh My Zsh Setup
Run the following script to configure your shell and Git:

```bash
./setup.sh
```
This will:
- Set up your Git user and email
- Generate an SSH key (RSA 4096)
- Install Zsh and Oh My Zsh
- Set up a custom theme and plugins

After completion, restart your terminal to switch to Zsh.

### 2. Tooling Setup (Node Version Manager)
Once you have restarted your terminal and are using Zsh, run:

```bash
./setup-tools.sh
```
This will:
- Install Node Version Manager (NVM) with the latest version

## VS Code Extensions

This project includes recommended VS Code extensions for an optimal development experience. When you open the project in VS Code, you'll be prompted to install the recommended extensions.

### Must-Have Extensions

- [**ESLint**](vscode:extension/dbaeumer.vscode-eslint) - Code linting and error detection
- [**Prettier**](vscode:extension/esbenp.prettier-vscode) - Code formatting
- [**EditorConfig**](vscode:extension/EditorConfig.EditorConfig) - Consistent coding styles
- [**Code Spell Checker**](vscode:extension/streetsidesoftware.code-spell-checker) - Spell checking for code and comments
- [**Color Highlight**](vscode:extension/naumovs.color-highlight) - Highlight colors in CSS/code
- [**ES7+ React/Redux/React-Native snippets**](vscode:extension/dsznajder.es7-react-js-snippets) - Useful React snippets
- [**Turbo Console Log**](vscode:extension/ChakrounAnas.turbo-console-log) - Enhanced console.log functionality
- [**GitHub Copilot**](vscode:extension/GitHub.copilot) - AI-powered code completion
- [**GitLens**](vscode:extension/eamodio.gitlens) - Enhanced Git capabilities

### Optional Extensions

- [**Better Comments**](vscode:extension/aaron-bond.better-comments) - Improved comment highlighting
- [**Import Cost**](vscode:extension/wix.vscode-import-cost) - Display import/require package sizes
- [**npm Intellisense**](vscode:extension/christian-kohler.npm-intellisense) - Autocomplete npm modules

## Tooling Setup

Instructions for setting up the tooling for the project.

### Node Version Manager (NVM)

Install Node Version Manager (NVM) with the latest version:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

Follow the on-screen instructions to complete the installation.

After installing, you can install the latest version of Node.js using NVM with the following command:

```bash
nvm install node
```

This will install the latest version of Node.js and npm (Node Package Manager).

Verify the installation by checking the versions:

```bash
node -v
npm -v
```

You should see the version numbers printed in the terminal.

## Contributors

- [Abhishek Kumar](https://github.com/abhishek12414) — Project author and maintainer

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.