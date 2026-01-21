**Title: Mastering Pandoc: Convert Markdown to HTML, ePub, and More!**

---

**[Introduction]**

Welcome, friends! In this video, we'll dive into Pandoc, an incredibly powerful tool for converting Markdown to HTML, ePub, and much more. If you're doing your academic writing in plain text, Pandoc is an essential program to master. Let's get started!

---

**[Section 1: What is Pandoc?]**

Pandoc is a universal document converter that can transform your documents between various formats. It supports converting text markup from one language to another and converting standalone files from one format to another.

**Example:**

- Markdown to HTML
- Markdown to ePub
- HTML to Markdown

For detailed documentation, visit the [Pandoc website](https://pandoc.org).

---

**[Section 2: Installing Pandoc]**

To get started, you need to install Pandoc on your computer.

1. **Visit the Pandoc Website**: Go to [pandoc.org](https://pandoc.org) and navigate to the installation section.
2. **Download the Installer**: Choose the appropriate installer for your operating system (Windows, macOS, Linux).
3. **Install Pandoc**: Follow the on-screen instructions to complete the installation.
4. **Verify Installation**: Open your terminal and type `pandoc --version` to ensure Pandoc is installed correctly.

---

**[Section 3: Basic Conversion - Markdown to HTML]**

Let's begin by showing how Pandoc accepts Markdown and converts it to HTML. This is the default output of Pandoc.

**Example Markdown Content:**

```markdown
Hello, friends!
* This is italicized text
* Let's create a list:
  1. Item one
  2. Item two
  3. Item three
* Here's a hyperlink: [Love Chan](http://channel.dev)
```

**Command:**

```bash
pandoc -f markdown -t html -o output.html
```

This command reads the Markdown input and outputs HTML.

---

**[Section 4: Using Markdown Files as Input]**

Improve your workflow by using a Markdown file as input.

1. Create a file named `mysource.md` and paste your Markdown content into it.
2. Run the following command:

```bash
pandoc mysource.md -o myoutput.html
```

This command converts the Markdown file to an HTML file.

---

**[Section 5: Outputting to Different Formats]**

Displaying the output directly in the terminal isn't always useful. Instead, we can specify an output file using the `-o` (or `--output`) option:

```bash
pandoc mysource.md -o mybook.html
```

To check the contents, you can use:

```bash
cat mybook.html
```

---

**[Section 6: Bi-Directional Conversion]**

Pandoc can convert between various formats. For example, converting from HTML back to Markdown:

```bash
pandoc mybook.html -f html -t markdown -o mybook.md
```

Ensure you specify the output file correctly to avoid confusion.

---

**[Section 7: Generating Standalone Documents]**

For a full HTML document, you can use the `--standalone` (or `-s`) option:

```bash
pandoc mysource.md -s -o mysite.html
```

This wraps your content in a complete HTML structure.

---

**[Section 8: Adding Metadata]**

You can specify metadata like the title using the `--metadata` (or `-M`) option:

```bash
pandoc mysource.md -s -M title="My Great Website" -o mysite.html
```

Alternatively, you can include metadata directly in your Markdown file using YAML front matter:

```markdown
---
title: "My Great Website"
author: "Your Name"
---

# Hello, friends!
* This is italicized text
* Let's create a list:
  1. Item one
  2. Item two
  3. Item three
* Here's a hyperlink: [Love Chan](http://channel.dev)
```

Run the command without specifying metadata:

```bash
pandoc mysource.md -s -o mysite.html
```

---

**[Section 9: Converting to ePub]**

You can also convert your Markdown to an ePub book:

```bash
pandoc mysource.md -o mybook.epub
```

Open the ePub file with an e-reader application to see the result.

---

**[Section 10: Exploring Pandoc's Full Potential]**

Pandoc supports a multitude of formats. Visit [Pandoc's documentation](https://pandoc.org) for comprehensive details on various output options and supported formats.

For more detailed information and examples, check out my webpage: [chan.dev/notes/pandoc](http://chan.dev/notes/pandoc).

---

**[Conclusion]**

Thanks for watching! I hope you found this tutorial helpful for generating various document formats from Markdown. If you have any questions or suggestions, feel free to leave a comment or reach out on Twitter at @chantastic. Don’t forget to like, subscribe, and hit the bell notification for more insights on a semi-weekly basis. Have a great weekend and a happy new year!

---

**Quick Recap**

- **Introduction to Pandoc**: What it is and why it’s useful.
- **Basic Conversion**: Markdown to HTML.
- **Enhanced Workflow**: Using Markdown files.
- **Different Formats**: Output options.
- **Standalone Documents**: Creating full HTML documents.
- **Metadata**: Adding titles and authors.
- **ePub Conversion**: Creating eBooks.
- **Exploring More**: Further resources and documentation.

Thank you for being here, and happy writing!

---

**Installing Pandoc Guide**

1. **Visit the Pandoc Website**: Go to [pandoc.org](https://pandoc.org) and navigate to the installation section.
2. **Download the Installer**: Choose the appropriate installer for your operating system.
3. **Install Pandoc**: Follow the on-screen instructions to complete the installation.
4. **Verify Installation**: Open your terminal and type `pandoc --version` to ensure Pandoc is installed correctly.

