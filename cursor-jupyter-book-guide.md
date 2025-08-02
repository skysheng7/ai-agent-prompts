---
alwaysApply: false
---

# Create Jupyter Book Website on GitHub Pages

## Quick Steps for AI Agent

### 1. Install Jupyter Book
```bash
pip install jupyter-book
```

### 2. Create Book Template
```bash
jupyter-book create mybook/
cd mybook/
```

### 3. Basic Configuration

Ask human user these questions to customize `_config.yml`:

1. **title**: "What title do you want for your book?" (shows in sidebar)
2. **author**: "Who is the author/instructor?"  
3. **logo**: "Do you have a logo image file? What's the filename?" (optional)
4. **execute_notebooks**: "Force re-execute notebooks on each build?" (recommend yes)
5. **bibtex_bibfiles**: "Will you include citations/references?" (optional) 
6. **bibtex_reference_style**: "What citation style do you want?" (e.g. `author_year`, `super`, `super-numeric`).
7. **repository**: "What's your GitHub username and repository name?"

Then update `_config.yml` with their answers. 

- **DO include file extensions** for asset files like `logo` (e.g., `images/logo.png`).
- Paths are relative to the directory where `_config.yml` is located.

Below is the full `_config.yml` file, but you don't always need to be this complicated:

```yaml
#######################################################################################
# A default configuration that will be loaded for all jupyter books
# Users are expected to override these values in their own `_config.yml` file.
# This is also the "master list" of all allowed keys and values.

#######################################################################################
# Book settings
title                       : My Jupyter Book  # The title of the book. Will be placed in the left navbar.
author                      : The Jupyter Book community  # The author of the book
copyright                   : "2023"  # Copyright year to be placed in the footer
logo                        : ""  # A path to the book logo
# Patterns to skip when building the book. Can be glob-style (e.g. "*skip.ipynb")
exclude_patterns            : [_build, Thumbs.db, .DS_Store, "**.ipynb_checkpoints"]
# Auto-exclude files not in the toc
only_build_toc_files        : false

#######################################################################################
# Execution settings
execute:
  execute_notebooks         : auto  # Whether to execute notebooks at build time. Must be one of ("auto", "force", "cache", "off")
  cache                     : ""    # A path to the jupyter cache that will be used to store execution artifacts. Defaults to `_build/.jupyter_cache/`
  exclude_patterns          : []    # A list of patterns to *skip* in execution (e.g. a notebook that takes a really long time)
  timeout                   : 30    # The maximum time (in seconds) each notebook cell is allowed to run.
  run_in_temp               : false # If `True`, then a temporary directory will be created and used as the command working directory (cwd),
                                    # otherwise the notebook's parent directory will be the cwd.
  allow_errors              : false # If `False`, when a code cell raises an error the execution is stopped, otherwise all cells are always run.
  stderr_output             : show  # One of 'show', 'remove', 'remove-warn', 'warn', 'error', 'severe'

#######################################################################################
# Parse and render settings
parse:
  myst_enable_extensions:  # default extensions to enable in the myst parser. See https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html
    # - amsmath
    - colon_fence
    # - deflist
    - dollarmath
    # - html_admonition
    # - html_image
    - linkify
    # - replacements
    # - smartquotes
    - substitution
    - tasklist
  myst_url_schemes: [mailto, http, https] # URI schemes that will be recognised as external URLs in Markdown links
  myst_dmath_double_inline: true  # Allow display math ($$) within an inline context

#######################################################################################
# HTML-specific settings
html:
  favicon                   : ""  # A path to a favicon image
  use_edit_page_button      : false  # Whether to add an "edit this page" button to pages. If `true`, repository information in repository: must be filled in
  use_repository_button     : false  # Whether to add a link to your repository button
  use_issues_button         : false  # Whether to add an "open an issue" button
  use_multitoc_numbering    : true   # Continuous numbering across parts/chapters
  extra_footer              : ""  # Will be displayed underneath the footer.
  home_page_in_navbar       : true  # Whether to include your home page in the left Navigation Bar
  baseurl                   : ""  # The base URL where your book will be hosted. Used for creating image previews and social links. e.g.: https://mypage.com/mybook/
  analytics:
    plausible_analytics_domain: ""
    plausible_analytics_url: "https://plausible.io/js/script.js"
    google_analytics_id       : ""  # A GA id that can be used to track book views.

  comments:
    hypothesis              : false
    utterances              : false
  announcement              : "" # A banner announcement at the top of the site.

#######################################################################################
# LaTeX-specific settings
latex:
  latex_engine              : pdflatex  # one of 'pdflatex', 'xelatex' (recommended for unicode), 'luatex', 'platex', 'uplatex'
  use_jupyterbook_latex     : true # use sphinx-jupyterbook-latex for pdf builds as default

#######################################################################################
# Launch button settings
launch_buttons:
  notebook_interface        : classic  # The interface interactive links will activate ["classic", "jupyterlab"]
  binderhub_url             : ""  # The URL of the BinderHub (e.g., https://mybinder.org)
  jupyterhub_url            : ""  # The URL of the JupyterHub (e.g., https://datahub.berkeley.edu)
  thebe                     : false  # Add a thebe button to pages (requires the repository to run on Binder)
  colab_url                 : "" # The URL of Google Colab (https://colab.research.google.com)
  deepnote_url              : "" # The URL of Deepnote (https://deepnote.com)

repository:
  url                       : https://github.com/executablebooks/jupyter-book  # The URL to your book's repository
  path_to_book              : ""  # A path to your book's folder, relative to the repository root.
  branch                    : master  # Which branch of the repository should be used when creating links

#######################################################################################
# Advanced and power-user settings
sphinx:
  extra_extensions          :   # A list of extra extensions to load by Sphinx (added to those already used by JB).
  local_extensions          :   # A list of local extensions to load by sphinx specified by "name: path" items
  recursive_update          : false # A boolean indicating whether to overwrite the Sphinx config (true) or recursively update (false)
  config                    :   # key-value pairs to directly over-ride the Sphinx configuration
```

A impler version of the `_config.yml` file: 

```yaml
# Book settings
# Learn more at https://jupyterbook.org/customize/config.html

title: My sample book
author: The Jupyter Book Community
logo: logo.png

# Force re-execution of notebooks on each build.
# See https://jupyterbook.org/content/execute.html
execute:
  execute_notebooks: force

# Define the name of the latex output file for PDF builds
latex:
  latex_documents:
    targetname: book.tex

# Add a bibtex file so that we can create citations
bibtex_bibfiles:
  - references.bib

# Information about where the book exists on the web
repository:
  url: https://github.com/executablebooks/jupyter-book  # Online location of your book
  branch: master  # Which branch of the repository should be used when creating links (optional)

# Add GitHub buttons to your book
# See https://jupyterbook.org/customize/config.html#add-a-link-to-your-repository
html:
  use_issues_button: true
  use_repository_button: true
```

### 4. Edit Table of Contents
Edit `_toc.yml` to structure your book. 

Here are some important rules for paths:

- **NEVER include file extensions** for content files (e.g., use `intro` instead of `intro.md`).
- Paths are relative to where `_toc.yml` is located (i.e., usually the root of the directory)

There are several ways to organize content:

**Simple chapters format:**
```yaml
# Table of contents
# Learn more at https://jupyterbook.org/customize/toc.html

format: jb-book
root: intro
chapters:
- file: markdown
- file: notebooks
- file: markdown-notebooks
```

**Using parts to group chapters:**
```yaml
format: jb-book
root: intro
parts:
- caption: Part 1 Name
  chapters:
  - file: part1/chapter1
  - file: part1/chapter2
- caption: Part 2 Name
  chapters:
  - file: part2/chapter1
```

If you're unsure about the book structure, ask the human user:
- Do they want to organize chapters into parts?
- What chapters/sections do they want?
- How should content be organized?
- What files they want to include?

### 5. Add a References/Bibliography Page

To add a references page, follow these steps:

5.1.  **Create a markdown file** for your references, for example `docs/references/index.md`. Add the following block to the file:

    ```{bibliography}
    :style: unsrt 
    ```

You can change your bibliography style to be (ask human user for preferences if you are unsure):
- alpha: Use alphanumeric reference labels, citations are sorted by author, year.
- plain: Use numeric reference labels, citations are sorted by author, year.
- unsrt: Use numeric reference labels, citations are sorted by order of appearance.
- unsrtalpha: Use alphanumeric reference labels, citations are sorted by order of appearance.

5.2.  **Add the references file to `_toc.yml`**. 
    ```yaml
      chapters:
      - file: docs/references/index
    ```

5.3.  **Make sure `_config.yml` points to your `.bib` file**:
    ```yaml
    bibtex_bibfiles:
      - docs/references/references.bib
    ```
    
5.4. **Set a citation style** in `_config.yml`
    ```yaml
    sphinx:
      config:
        bibtex_reference_style: author_year
    ```

### 6. Manage `requirements.txt`

You are responsible for keeping `requirements.txt` up to date.

- **Initial check**: Make sure `jupyter-book` is in `requirements.txt`.
- **Ongoing updates**: Every time you add or use a Python package in a notebook (e.g., `pandas`, `matplotlib`, `scikit-learn`), you MUST immediately add it to `requirements.txt`.
- **Final verification**: Before setting up the GitHub Actions workflow in step 10, double-check that `requirements.txt` includes ALL packages needed to run the notebooks and build the book. This is critical for the automated deployment to succeed.

Example `requirements.txt`:
```
jupyter-book
pandas
matplotlib
```

### 7. Build Book
```bash
jupyter-book build .
```

### 8. Connect to Github

If the user hasn't created a GitHub repository yet, or if the current project isn't connected to Git, assist them in creating a GitHub Repository using GitHub MCP:
```bash
# Use mcp_github_create_repository tool
```

### 9. After local directory is connect through Git, Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/repository-name.git
git push -u origin main
```

### 10. Set up Automatic Deployment with GitHub Actions

Inform the user that the following steps will set up automatic deployment using GitHub Actions, which requires them to host their book on GitHub Pages.

1.  **Create a workflow file**:
    -   Create a directory named `.github/workflows` in the project root.
    -   Inside that directory, create a file named `deploy.yml`.
    -   Copy and paste the following content into `deploy.yml`:

    ```yaml
    name: deploy-book

    # Run this when the master or main branch changes
    on:
      push:
        branches:
        - master
        - main

    # This job installs dependencies, builds the book, and deploys the book on github pages
    jobs:
      deploy-book:
        runs-on: ubuntu-latest
        permissions:
          pages: write
          id-token: write
        steps:
        - uses: actions/checkout@v4

        # Install dependencies
        - name: Set up Python 3.11
          uses: actions/setup-python@v5
          with:
            python-version: '3.11'
            cache: pip # Implicitly uses requirements.txt for cache key

        - name: Install dependencies
          run: pip install -r requirements.txt

        # (optional) Cache your executed notebooks between runs
        # if you have config:
        # execute:
        #   execute_notebooks: cache
        - name: cache executed notebooks
          uses: actions/cache@v4
          with:
            path: _build/.jupyter_cache
            key: jupyter-book-cache-${{ hashFiles('requirements.txt') }}

        # Build the book
        - name: Build the book
          run: |
            jupyter-book build .

        # Upload the book's HTML as an artifact
        - name: Upload artifact
          uses: actions/upload-pages-artifact@v3
          with:
            path: "_build/html"

        # Deploy the book's HTML to GitHub Pages
        - name: Deploy to GitHub Pages
          id: deployment
          uses: actions/deploy-pages@v4
    ```

### 11. Enable GitHub Pages

After the repository is pushed to GitHub, ask the human user to perform the following steps:

1.  Go to their repository on GitHub.
2.  Click **Settings** → **Pages**.
3.  Under "Build and deployment", set the "Source" to **GitHub Actions**.

The book will be published at the URL shown on that page after the workflow runs successfully.

### 12. Updating Your Book

To update the book, the user only needs to push their changes to the `main` or `master` branch on GitHub. The GitHub Action will handle the rest.

## Troubleshooting
- Build fails: Run `jupyter-book build . -v` for verbose output
- Missing files: Check all files in `_toc.yml` exist
- GitHub Pages not working: Check if gh-pages branch exists and Pages is configured correctly
- If unsure about any step: Ask the human user for clarification
