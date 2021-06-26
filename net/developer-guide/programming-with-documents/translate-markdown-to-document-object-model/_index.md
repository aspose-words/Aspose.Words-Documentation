---
title: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Aspose.Words for .NET allows to tarnslate a Markdown document to Document Object Model and back. So you can work with complex existing Markdown and programmatically create a Markdown document from scratch."
weight: 15
url: /net/translate-markdown-to-document-object-model/
---

To programmatically read, manipulate, and modify the content and formatting of a document, you need to translate it to the Aspose.Words Document Object Model (DOM).

In contrast to Word documents, Markdown does not conform to the DOM described in the ["Aspose.Words Document Object Model (DOM)"](https://docs.aspose.com/words/net/aspose-words-document-object-model/) article. However, Aspose.Words provides its own mechanism for translating Markdown documents to DOM and back, so that we can successfully work with their elements such as text formatting, tables, headers, and others.

This article explains how the various markdown features can be translated into Aspose.Words DOM and back to Markdown format.

## Complexity of Translation Markdown – DOM – Markdown

The main difficulty of this mechanism is not only to translate Markdown to DOM, but also to do the reverse transformation – to save the document back to Markdown format with minimal loss. There are elements, such as multilevel quotes, for which the reverse transformation is not trivial.

Our translation engine allows users not only to work with complex elements in an existing Markdown document, but also to create their own document in Markdown format with the original structure from scratch. To create various elements, you need to use styles with specific names according to certain rules described later in this article. Such styles can be created programmatically.

## Common Translation Principles

We use [Font](https://apireference.aspose.com/words/net/aspose.words/font) formatting for inline blocks. When there is no direct correspondence for a Markdown feature in Aspose.Words DOM, we use a character style with a name that starts from some special words.

For container blocks, we use style inheritance to denote nested Markdown features. In this case, even when there are no nested features, we also use paragraph styles with a name that starts from some special words.

Bulleted and ordered lists are container blocks in Markdown as well. Their nesting is represented in DOM the same way as for all other container blocks using style inheritance. However, additionally, lists in DOM have corresponded number formatting in either list style or paragraph formatting.

## Inline Blocks

We use [Font](https://apireference.aspose.com/words/net/aspose.words/font) formatting when translating **Bold**, *Italic* or ~~Strikethrough~~ inline markdown features.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
|{{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Bold.builder.Font.Bold = true;
builder.Writeln("This text will be Bold");{{< /highlight >}} ||
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
|{{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Italic.
builder.Font.Italic = true;
builder.Writeln("This text will be Italic");{{< /highlight >}} ||
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

We use a character style with a name that starts from the word `InlineCode`, followed by an optional dot `(.)` and a number of backticks ```(`)``` for the InlineCode feature. If a number of backticks is missed, then one backtick will be used by default.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Number of backticks is missed, one backtick will be used by default.
Style inlineCode1BackTicks = doc.Style.Add(StyleType.Character, "InlineCode");
builder.Font.Style = inlineCode1BackTicks;
builder.Writeln("Text with InlineCode style with 1 backtick");

// There will be 3 backticks.
Style inlineCode3BackTicks = doc.Style.Add(StyleType.Character, "InlineCode.3");
builder.Font.Style = inlineCode3BackTicks;
builder.Writeln("Text with InlineCode style with 3 backtick");{{< /highlight >}} ||
| **Autolink**<br />`<scheme://domain.com>`<br />
`<email@domain.com>` | The [FieldHyperlink](https://apireference.aspose.com/words/net/aspose.words.fields/fieldhyperlink) class. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Insert hyperlink.
builder.InsertHyperlink("https://www.aspose.com", "https://www.aspose.com", false);
builder.InsertHyperlink("email@aspose.com", "mailto:email@aspose.com", false);{{< /highlight >}} ||
| **Link**<br />`[link text](url)`<br />`[link text](<url> "title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | The [FieldHyperlink](https://apireference.aspose.com/words/net/aspose.words.fields/fieldhyperlink) class. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Insert hyperlink.
builder.InsertHyperlink("Aspose", "https://www.aspose.com", false);{{< /highlight >}} ||
| **Image**<br />`![](url)`<br />`![alt text](<url> “title”)`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | The [Shape](https://apireference.aspose.com/words/net/aspose.words.drawing/shape) class. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Insert image.
Shape shape = new Shape(builder.Document, ShapeType.Image);
shape.WrapType = WrapType.Inline;
shape.ImageData.SourceFullName = "/attachment/1456/pic001.png";
shape.ImageData.Title = "title";
builder.InsertNode(shape);{{< /highlight >}} ||

## Container Blocks

A document is a sequence of container blocks such as headings, paragraphs, lists, quotes, and others. Container blocks can be divided into 2 classes: Leaf blocks and Complex Containers. Leaf blocks can only contain inline content. Complex containers, in turn, can contain other container blocks, including Leaf blocks.

### Leaf Blocks

The table below shows examples of using Markdown Leaf blocks in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----`                              | This is a simple paragraph with a corresponding HorizontalRule shape:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Insert horizontal rule.
builder.InsertHorizontalRule();{{< /highlight >}} |                                                              |
| **ATX Heading**<br />`# H1, ## H2, ### H3…`                  | `ParagraphFormat.StyleName = “Heading N”`, where (1<= N <= 9).<br />This is translated into a built-in style and should be exactly of the specified pattern (no suffixes or prefixes are allowed).<br />Otherwise, it will be just a regular paragraph with a corresponding style. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default Heading styles in Word may have Bold and Italic formatting.
//If we do not want to be emphasized, set these properties explicitly to false.
builder.Font.Bold = false;
builder.Font.Italic = false;

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");{{< /highlight >}} |                                                              |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, based on `“Heading N”` style.<br />If (N >= 2), then `“Heading 2”` will be used, otherwise `“Heading 1”`.<br />Any suffix is allowed, but Aspose.Words importer uses numbers “1” and “2” respectively. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = doc.Style.Add(StyleType.Paragraph, "SetexHeading1");
builder.ParagraphFormat.StyleName = setexHeading1;
doc.Styles["SetexHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setex Heading level 1");

builder.ParagraphFormat.Style = doc.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = doc.Style.Add(StyleType.Paragraph, "SetexHeading2");
builder.ParagraphFormat.StyleName = setexHeading2;
doc.Styles["SetexHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setex Heading level 2");{{< /highlight >}} |                                                              |
| **Indented Code**                                            | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`    |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

Style indentCode = doc.Style.Add(StyleType.Paragraph, "IndentedCode");
builder.ParagraphFormat.StyleName = indentedCode;
builder.Writeln("This is an indented code");{{< /highlight >}} |                                                              |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br />The `[.]` and `[info string]` are optional. |
|   {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

Style fencedCode = doc.Style.Add(StyleType.Paragraph, "FencedCode");
builder.ParagraphFormat.StyleName = fencedCode;
builder.Writeln("This is an fenced code");

Style fencedCodeWithInfo = doc.Style.Add(StyleType.Paragraph, "FencedCode.C#");
builder.ParagraphFormat.StyleName = fencedCodeWithInfo;
builder.Writeln("This is a fenced code with info string");{{< /highlight >}}   |                                                              |

### Complex Containers

The table below shows examples of using Markdown Complex Containers in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote`             | `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />The suffix in style name is optional, but Aspose.Words importer uses the ordered numbers 1, 2, 3, …. in case of nested quotes.<br />The nesting is defined via the inherited styles. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = doc.Style.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.StyleName = quoteLevel2;
doc.Style["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |                                                              |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	`   - Item 2a`<br />	`   - Item 2b` | Bulleted lists are represented using paragraph numbering:<br />`ListFormat.ApplyBulletDefault()`<br />There can be 3 types of bulleted lists. They are only diff in a numbering format of the very first level. These are: `‘-’`, `‘+’` or `‘*’` respectively. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = "-";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                              |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Ordered lists are represented using paragraph numbering:<br />`ListFormat.ApplyNumberDefault()`<br />There can be 2 number format markers: ‘.’ and ‘)’. The default marker is ‘.’. |
| {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = string.Format("{0}.", (char)0);
builder.ListFormat.List.ListLevels[1].NumberFormat = string.Format("{0}.", (char)1);

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                              |

### Tables

Aspose.Words also allows to translate tables into DOM, as shown below:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d`                     | [Table](https://apireference.aspose.com/words/net/aspose.words.tables/table), [Row](https://apireference.aspose.com/words/net/aspose.words.tables/row) and [Cell](https://apireference.aspose.com/words/net/aspose.words.tables/cell) classes. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                              |