# product-docs

Welcome to the repository for Jangala's documentation creation system. This is very WIP.

This repository will have a large number of our team working on it. Our Projects and Comms people will be core developers in this process! To assist this process we're developing a friendly and consistent process by which we can all contribute.

## Installation

To make use of this convenience, this section guides you through installing three essential open-source tools: Git, Visual Studio Code (VSCode) and Docker Desktop. Git helps manage shared access to common codebases (like this one!), VSCode is a powerful and versatile code editor that supports a wide range of programming languages and tools, while Docker Desktop will allow us to create and manage isolated development environments called containers.

This setup does involve a few one-time terminal commands, but is straightforward. The payoff is that we can get started with product-docs development quickly and efficiently, using shared graphical tools!

### For MacOS Users

#### Prerequisites

Install Homebrew (an open source software manager) on your Mac by pasting the following command in your Terminal:

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

Note: may take a few minutes to download the needed tools and complete.

#### Steps to Install VSCode and Docker Desktop
1. **Open the Terminal.**

2. **Install Git:**
   ```zsh
   brew install git
   ```

3. **Install Visual Studio Code:**
   ```zsh
   brew install --cask visual-studio-code
   ```

   Note: may take a few minutes to complete
   
4. **Install Docker Desktop:**
   ```zsh
   brew install --cask docker
   ```

   Note: may take a few minutes to complete

5. **Launch Docker Desktop:**

   Find Docker in your Applications folder and double-click to launch it. This step is necessary to complete the installation and agree to the terms. _There's no need to create an account._

6. **Install Extensions for VSCode:**

   Click [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and press install - this will ask to open VS Code and will install the Devcontainers extension.

### For Windows 10/11 Users

#### Prerequisites

Ensure you are running Windows 11 or a fairly recently updated version of Windows 10 (version 1709, build 16299).

#### Steps to Install Git, VSCode and Docker Desktop
1. **Open Command Prompt** - Press the Start button, type "Command Prompt", and click or press Enter to launch it. 

2. **Install Git:**
   ```powershell
   winget install --id Git.Git -e --source winget
   ```
   
3. **Install Visual Studio Code:**
   ```powershell
   winget install -e --id Microsoft.VisualStudioCode
   ```

   Note: may take a few minutes to complete

4. **Install WSL:** 
   ```powershell
   wsl --install
   ```

   WSL will take a few minutes to install. The installer will ask you for a username and password (use your Windows one if it's easy enough to remember). Once you get to a green prompt at which you can type, type `exit` and press return to get back to the terminal.

5. **Install Docker Desktop:** 
   ```powershell
   winget install -e --id Docker.DockerDesktop
   ```

   Docker will take a few minutes to install. You will be asked to agree to a licence, and then a few minutes more.

6. **Launch Docker Desktop:**

   Run Docker Desktop from your Start Menu. This step is necessary to complete the installation and agree to the terms. _There's no need to create an account._

7. **Setup VSCode:**

   Run Visual Studio Code from the Start Menu. Click on the little blue two arrows icon in the bottom left of the screen, and click `Connect to WSL` from the menu that appears.

   Click [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) and press install - this will ask to open VS Code and will install the WSL extension.

   Click [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and press install - this will ask to open VS Code and will install the Devcontainers extension.

### Final Notes
Ensure Docker Desktop is running before attempting to use VSCode devcontainers.

## Usage

[TBD]

# Ongoing Plan

Currently our plan is as follows:

1. Host our core documentation here as Pandoc-flavoured Markdown
2. Create the online web version using Vitepress to create a Github pages hosted sited at docs.janga.la
3. Process the separate Markdown files into PDF using:
   1. Use Pandoc to create a `.typ` output from the markdown
   2. Use Typst and a Jangala template to create beautiful PDFs!

We should automate this whole process using GitHub actions. So that each commit to the repo regenerates the GH pages site and recreates any PDF's that need changing.

To test the website locally run `npm run docs:dev` from the docs folder.

To build pdfs do `sh build-getbox-pdf.sh` from the pdf folder.

## Fonts

Add .otf or .ttf to the `/fonts` folder and then run `sh update-fonts.sh` from that same folder.