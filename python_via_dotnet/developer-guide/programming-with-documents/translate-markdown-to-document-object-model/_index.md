---
title: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Aspose.Words for Python via .NET allows to tarnslate a Markdown document to Document Object Model and back. So you can work with complex existing Markdown and programmatically create a Markdown document from scratch."
weight: 13
url: /python-net/translate-markdown-to-document-object-model/
aliases: [/python/translate-markdown-to-document-object-model/]
---

To programmatically read, manipulate, and modify the content and formatting of a document, you need to translate it to the Aspose.Words Document Object Model (DOM).

In contrast to Word documents, Markdown does not conform to the DOM described in the ["Aspose.Words Document Object Model (DOM)"](/words/python/aspose-words-document-object-model/) article. However, Aspose.Words provides its own mechanism for translating Markdown documents to DOM and back, so that we can successfully work with their elements such as text formatting, tables, headers, and others.

This article explains how the various markdown features can be translated into Aspose.Words DOM and back to Markdown format.

## Complexity of Translation Markdown – DOM – Markdown

The main difficulty of this mechanism is not only to translate Markdown to DOM, but also to do the reverse transformation – to save the document back to Markdown format with minimal loss. There are elements, such as multilevel quotes, for which the reverse transformation is not trivial.

Our translation engine allows users not only to work with complex elements in an existing Markdown document, but also to create their own document in Markdown format with the original structure from scratch. To create various elements, you need to use styles with specific names according to certain rules described later in this article. Such styles can be created programmatically.

## Common Translation Principles

We use **Font** formatting for inline blocks. When there is no direct correspondence for a Markdown feature in Aspose.Words DOM, we use a character style with a name that starts from some special words.

For container blocks, we use style inheritance to denote nested Markdown features. In this case, even when there are no nested features, we also use paragraph styles with a name that starts from some special words.

Bulleted and ordered lists are container blocks in Markdown as well. Their nesting is represented in DOM the same way as for all other container blocks using style inheritance. However, additionally, lists in DOM have corresponded number formatting in either list style or paragraph formatting.

## Inline Blocks

We use **Font** formatting when translating **Bold**, *Italic* or ~~Strikethrough~~ inline markdown features.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.bold = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} ||
| **Italic**<br />`*italic text*` | `Font.italic = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} ||
| **Strikethrough**<br />`~Strikethrough text~` | `Font.strike_through = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} ||

We use a character style with a name that starts from the word `InlineCode`, followed by an optional dot `(.)` and a number of backticks ```(`)``` for the InlineCode feature. If a number of backticks is missed, then one backtick will be used by default.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.style_name = “InlineCode[.][N]”` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} ||
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | The **FieldHyperlink** class. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} ||
| **Link**<br />`[link text](url)`<br />`[link text](<url> "title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | The **FieldHyperlink** |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} ||
| **Image**<br />`![](url)`<br />`![alt text](<url> “title”)`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | The **Shape** class. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} ||

## Container Blocks

A document is a sequence of container blocks such as headings, paragraphs, lists, quotes, and others. Container blocks can be divided into 2 classes: Leaf blocks and Complex Containers. Leaf blocks can only contain inline content. Complex containers, in turn, can contain other container blocks, including Leaf blocks.

### Leaf Blocks

The table below shows examples of using Markdown Leaf blocks in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----`                              | This is a simple paragraph with a corresponding HorizontalRule shape:<br />`DocumentBuilder.insert_horizontal_rule()` |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}} |                                                              |
| **ATX Heading**<br />`# H1, ## H2, ### H3…`                  | `ParagraphFormat.style_name = “Heading N”`, where (1<= N <= 9).<br />This is translated into a built-in style and should be exactly of the specified pattern (no suffixes or prefixes are allowed).<br />Otherwise, it will be just a regular paragraph with a corresponding style. |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}} |                                                              |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.style_name = “SetextHeading[some suffix]”`, based on `“Heading N”` style.<br />If (N >= 2), then `“Heading 2”` will be used, otherwise `“Heading 1”`.<br />Any suffix is allowed, but Aspose.Words importer uses numbers “1” and “2” respectively. |
| {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
| **Indented Code**                                            | `ParagraphFormat.style_name = “IndentedCode[some suffix]”`    |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                              |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br />The `[.]` and `[info string]` are optional. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}}  |                                                              |

### Complex Containers

The table below shows examples of using Markdown Complex Containers in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote`             | `ParagraphFormat.style_name = “Quote[some suffix]”`<br />The suffix in style name is optional, but Aspose.Words importer uses the ordered numbers 1, 2, 3, …. in case of nested quotes.<br />The nesting is defined via the inherited styles. |
| {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	`   - Item 2a`<br />	`   - Item 2b` | Bulleted lists are represented using paragraph numbering:<br />`ListFormat.apply_bullet_default()`<br />There can be 3 types of bulleted lists. They are only diff in a numbering format of the very first level. These are: `‘-’`, `‘+’` or `‘*’` respectively. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                              |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Ordered lists are represented using paragraph numbering:<br />`ListFormat.apply_number_default()`<br />There can be 2 number format markers: ‘.’ and ‘)’. The default marker is ‘.’. |
| {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                              |

### Tables

Aspose.Words also allows to translate tables into DOM, as shown below:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d`                     | **Table**, **Row** and **Cell** classes. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                              |

## See Also

* ["Working with Markdown Features"](/words/python/working-with-markdown-features/)

