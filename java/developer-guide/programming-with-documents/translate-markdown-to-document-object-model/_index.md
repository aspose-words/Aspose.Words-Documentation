---
title: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Aspose.Words for Java allows to tarnslate a Markdown document to Document Object Model and back. So you can work with complex existing Markdown and programmatically create a Markdown document from scratch."
weight: 13
url: /java/translate-markdown-to-document-object-model/
---

To programmatically read, manipulate, and modify the content and formatting of a document, you need to translate it to the Aspose.Words Document Object Model (DOM).

In contrast to Word documents, Markdown does not conform to the DOM described in the ["Aspose.Words Document Object Model (DOM)"](https://docs.aspose.com/words/java/aspose-words-document-object-model/) article. However, Aspose.Words provides its own mechanism for translating Markdown documents to DOM and back, so that we can successfully work with their elements such as text formatting, tables, headers, and others.

This article explains how the various markdown features can be translated into Aspose.Words DOM and back to Markdown format.

## Complexity of Translation Markdown – DOM – Markdown

The main difficulty of this mechanism is not only to translate Markdown to DOM, but also to do the reverse transformation – to save the document back to Markdown format with minimal loss. There are elements, such as multilevel quotes, for which the reverse transformation is not trivial.

Our translation engine allows users not only to work with complex elements in an existing Markdown document, but also to create their own document in Markdown format with the original structure from scratch. To create various elements, you need to use styles with specific names according to certain rules described later in this article. Such styles can be created programmatically.

## Common Translation Principles

We use [Font](https://apireference.aspose.com/words/java/com.aspose.words/Font) formatting for inline blocks. When there is no direct correspondence for a Markdown feature in Aspose.Words DOM, we use a character style with a name that starts from some special words.

For container blocks, we use style inheritance to denote nested Markdown features. In this case, even when there are no nested features, we also use paragraph styles with a name that starts from some special words.

Bulleted and ordered lists are container blocks in Markdown as well. Their nesting is represented in DOM the same way as for all other container blocks using style inheritance. However, additionally, lists in DOM have corresponded number formatting in either list style or paragraph formatting.

## Inline Blocks

We use [Font](https://apireference.aspose.com/words/java/com.aspose.words/Font) formatting when translating **Bold**, *Italic* or ~~Strikethrough~~ inline markdown features.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
|{{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Make the text Bold.
        builder.getFont().setBold(true);
        builder.writeln("This text will be Bold");{{< /highlight >}} ||
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
|{{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Make the text Italic.
        builder.getFont().setItalic(true);
        builder.writeln("This text will be Italic");{{< /highlight >}} ||
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Make the text Strikethrough.
        builder.getFont().setStrikeThrough(true);
        builder.writeln("This text will be Strikethrough");{{< /highlight >}} ||

We use a character style with a name that starts from the word `InlineCode`, followed by an optional dot `(.)` and a number of backticks ```(`)``` for the InlineCode feature. If a number of backticks is missed, then one backtick will be used by default.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Number of backticks is missed, one backtick will be used by default.
        Style inlineCode1BackTicks = doc.getStyles().add(StyleType.CHARACTER, "InlineCode");
        builder.getFont().setStyle(inlineCode1BackTicks);
        builder.writeln("Text with InlineCode style with 1 backtick");

        // There will be 3 backticks.
        Style inlineCode3BackTicks = doc.getStyles().add(StyleType.CHARACTER, "InlineCode.3");
        builder.getFont().setStyle(inlineCode3BackTicks);
        builder.writeln("Text with InlineCode style with 3 backtick");{{< /highlight >}} ||
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | The [FieldHyperlink](https://apireference.aspose.com/words/java/com.aspose.words/FieldHyperlink) class. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Insert hyperlink.
        builder.insertHyperlink("https://www.aspose.com", "https://www.aspose.com", false);
        builder.insertHyperlink("email@aspose.com", "mailto:email@aspose.com", false);{{< /highlight >}} ||
| **Link**<br />`[link text](url)`<br />`[link text](<url> "title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | The [FieldHyperlink](https://apireference.aspose.com/words/java/com.aspose.words/FieldHyperlink) class. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Insert hyperlink.
        builder.insertHyperlink("Aspose", "https://www.aspose.com", false);{{< /highlight >}} ||
| **Image**<br />`![](url)`<br />`![alt text](<url> “title”)`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | The [Shape](https://apireference.aspose.com/words/java/com.aspose.words/Shape) class. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Insert image.
        Shape shape = new Shape(builder.getDocument(), ShapeType.IMAGE);
        shape.setWrapType(WrapType.INLINE);
        shape.getImageData().setSourceFullName("/attachment/1456/pic001.png");
        shape.getImageData().setTitle("title");
        builder.insertNode(shape);{{< /highlight >}} ||

## Container Blocks

A document is a sequence of container blocks such as headings, paragraphs, lists, quotes, and others. Container blocks can be divided into 2 classes: Leaf blocks and Complex Containers. Leaf blocks can only contain inline content. Complex containers, in turn, can contain other container blocks, including Leaf blocks.

### Leaf Blocks

The table below shows examples of using Markdown Leaf blocks in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----`                              | This is a simple paragraph with a corresponding HorizontalRule shape:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Insert horizontal rule.
        builder.insertHorizontalRule();{{< /highlight >}} |                                                              |
| **ATX Heading**<br />`# H1, ## H2, ### H3…`                  | `ParagraphFormat.StyleName = “Heading N”`, where (1<= N <= 9).<br />This is translated into a built-in style and should be exactly of the specified pattern (no suffixes or prefixes are allowed).<br />Otherwise, it will be just a regular paragraph with a corresponding style. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // By default Heading styles in Word may have Bold and Italic formatting.
        //If we do not want to be emphasized, set these properties explicitly to false.
        builder.getFont().setBold(false);
        builder.getFont().setItalic(false);

        builder.getParagraphFormat().setStyleName("Heading 1");
        builder.writeln("This is an H1 tag");{{< /highlight >}} |                                                              |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, based on `“Heading N”` style.<br />If (N >= 2), then `“Heading 2”` will be used, otherwise `“Heading 1”`.<br />Any suffix is allowed, but Aspose.Words importer uses numbers “1” and “2” respectively. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        builder.getParagraphFormat().setStyleName("Heading 1");
        builder.writeln("This is an H1 tag");

        // Reset styles from the previous paragraph to not combine styles between paragraphs.
        builder.getFont().setBold(false);
        builder.getFont().setItalic(false);

        Style setexHeading1 = doc.getStyles().add(StyleType.PARAGRAPH, "SetexHeading1");
        builder.getParagraphFormat().setStyle(setexHeading1);
        doc.getStyles().get("SetexHeading1").setBaseStyleName("Heading 1");
        builder.writeln("Setex Heading level 1");

        builder.getParagraphFormat().setStyle(doc.getStyles().get("Heading 3"));
        builder.writeln("This is an H3 tag");

        // Reset styles from the previous paragraph to not combine styles between paragraphs.
        builder.getFont().setBold(false);
        builder.getFont().setItalic(false);

        Style setexHeading2 = doc.getStyles().add(StyleType.PARAGRAPH, "SetexHeading2");
        builder.getParagraphFormat().setStyle(setexHeading2);
        doc.getStyles().get("SetexHeading2").setBaseStyleName("Heading 3");

        // Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
        builder.writeln("Setex Heading level 2");{{< /highlight >}} |                                                              |
| **Indented Code**                                            | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`    |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        Style indentedCode = doc.getStyles().add(StyleType.PARAGRAPH, "IndentedCode");
        builder.getParagraphFormat().setStyle(indentedCode);
        builder.writeln("This is an indented code");{{< /highlight >}} |                                                              |
| **Fenced Code**<br />{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br />The `[.]` and `[info string]` are optional. |
|   {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        Style fencedCode = doc.getStyles().add(StyleType.PARAGRAPH, "FencedCode");
        builder.getParagraphFormat().setStyle(fencedCode);
        builder.writeln("This is an fenced code");

        Style fencedCodeWithInfo = doc.getStyles().add(StyleType.PARAGRAPH, "FencedCode.C#");
        builder.getParagraphFormat().setStyle(fencedCodeWithInfo);
        builder.writeln("This is a fenced code with info string");{{< /highlight >}}   |                                                              |

### Complex Containers

The table below shows examples of using Markdown Complex Containers in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote`             | `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />The suffix in style name is optional, but Aspose.Words importer uses the ordered numbers 1, 2, 3, …. in case of nested quotes.<br />The nesting is defined via the inherited styles. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // By default a document stores blockquote style for the first level.
        builder.getParagraphFormat().setStyleName("Quote");
        builder.writeln("Blockquote");

        // Create styles for nested levels through style inheritance.
        Style quoteLevel2 = doc.getStyles().add(StyleType.PARAGRAPH, "Quote1");
        builder.getParagraphFormat().setStyle(quoteLevel2);
        doc.getStyles().get("Quote1").setBaseStyleName("Quote");
        builder.writeln("1. Nested blockquote");{{< /highlight >}} |                                                              |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	`   - Item 2a`<br />	`   - Item 2b` | Bulleted lists are represented using paragraph numbering:<br />`ListFormat.ApplyBulletDefault()`<br />There can be 3 types of bulleted lists. They are only diff in a numbering format of the very first level. These are: `‘-’`, `‘+’` or `‘*’` respectively. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        builder.getListFormat().applyBulletDefault();
        builder.getListFormat().getList().getListLevels().get(0).setNumberFormat("-");

        builder.writeln("Item 1");
        builder.writeln("Item 2");

        builder.getListFormat().listIndent();

        builder.writeln("Item 2a");
        builder.writeln("Item 2b");{{< /highlight >}} |                                                              |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Ordered lists are represented using paragraph numbering:<br />`ListFormat.ApplyNumberDefault()`<br />There can be 2 number format markers: ‘.’ and ‘)’. The default marker is ‘.’. |
| {{< highlight java >}}Document doc = new Document();
        DocumentBuilder builder = new DocumentBuilder(doc);

        builder.getListFormat().applyBulletDefault();
        builder.getListFormat().getList().getListLevels().get(0).setNumberFormat(MessageFormat.format("{0}.", (char)0));
        builder.getListFormat().getList().getListLevels().get(1).setNumberFormat(MessageFormat.format("{0}.", (char)1));

        builder.writeln("Item 1");
        builder.writeln("Item 2");

        builder.getListFormat().listIndent();

        builder.writeln("Item 2a");
        builder.writeln("Item 2b");{{< /highlight >}} |                                                              |

### Tables

Aspose.Words also allows to translate tables into DOM, as shown below:

| Markdown feature                         | Aspose.Words                                                 |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://apireference.aspose.com/words/java/com.aspose.words/Table), [Row](https://apireference.aspose.com/words/java/com.aspose.words/Row) and [Cell](https://apireference.aspose.com/words/java/com.aspose.words/Cell) classes. |
| {{< highlight java >}}// Use a document builder to add content to the document.
        DocumentBuilder builder = new DocumentBuilder();

        // Add the first row.
        builder.insertCell();
        builder.writeln("a");
        builder.insertCell();
        builder.writeln("b");

        // Add the second row.
        builder.insertCell();
        builder.writeln("c");
        builder.insertCell();
        builder.writeln("d");{{< /highlight >}} |                                                              |

## See Also

* ["Working with Markdown Features"](https://docs.aspose.com/words/java/working-with-markdown-features/)

