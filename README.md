# IU Advanced Workbook LaTeX Template

A LaTeX template for preparing Advanced Workbooks at IU International University of Applied Sciences.

![image](/assets/advanced_workbook_title_page.png)

The template follows the official IU formatting requirements and provides a modular project structure suitable for VS Code, MiKTeX and GitHub.

> This is an independent project and is not affiliated with or endorsed by IU International University of Applied Sciences. Always verify your work against the latest official guidelines before submission.

## Features

- Modular project structure
- IU-compliant page layout
- APA 7 bibliography with `biblatex`
- XeLaTeX and Biber support
- Automatic table of contents
- Figure, table and appendix support
- Reusable commands and environments

## Implemented Formatting

The template implements the following IU formatting requirements:

- A4 paper
- 2 cm margins
- 11 pt sans-serif font
- 1.5 line spacing
- Justified text
- No paragraph indentation
- 6 pt paragraph spacing
- Three heading levels
- Roman page numbering for front matter
- Arabic page numbering for the main text
- APA 7 references

## Project Structure

```text
.
├── bibliography/
├── chapters/
├── figures/
├── styles/
├── main.tex
└── README.md
```

## Getting Started

### 1. Install MiKTeX

Download MiKTeX from:

https://miktex.org/download

After installation:

- enable *Install missing packages on-the-fly*
- install all available updates

### 2. Install Visual Studio Code

Download VS Code from:

https://code.visualstudio.com

### 3. Install Extensions

Install the following extensions:

- LaTeX Workshop
- GitLens (optional)

### 4. Clone the Repository

```bash
git clone https://github.com/<username>/IU-Advanced-Workbook-LaTeX-Template.git
cd IU-Advanced-Workbook-LaTeX-Template
```

### 5. Compile the Template

Open `main.tex` and build using the following sequence:

```
XeLaTeX
→ Biber
→ XeLaTeX
→ XeLaTeX
```

A sample VS Code configuration is provided in `.vscode/settings.json`.

## Citations

The template uses `biblatex` with the APA 7 citation style.

Add your references to `bibliography/references.bib`:

```bibtex
@book{pearl2009,
  author    = {Judea Pearl},
  title     = {Causality},
  year      = {2009},
  publisher = {Cambridge University Press}
}
```

Use citations in your document:

```latex
\textcite{pearl2009}      % Pearl (2009)

\parencite{pearl2009}     % (Pearl, 2009)

\parencite[p.~52]{pearl2009} % (Pearl, 2009, p. 52)
```

Print the bibliography:

```latex
\printbibliography
```


## Contributing

Bug reports and pull requests are welcome.

## License

Released under the MIT License.
