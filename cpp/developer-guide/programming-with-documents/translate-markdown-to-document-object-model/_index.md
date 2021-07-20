---
title: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Aspose.Words for С++ allows to tarnslate a Markdown document to Document Object Model and back. So you can work with complex existing Markdown and programmatically create a Markdown document from scratch."
weight: 13
url: /cpp/translate-markdown-to-document-object-model/
---

To programmatically read, manipulate, and modify the content and formatting of a document, you need to translate it to the Aspose.Words Document Object Model (DOM).

In contrast to Word documents, Markdown does not conform to the DOM described in the ["Aspose.Words Document Object Model (DOM)"](https://docs.aspose.com/words/cpp/aspose-words-document-object-model/) article. However, Aspose.Words provides its own mechanism for translating Markdown documents to DOM and back, so that we can successfully work with their elements such as text formatting, tables, headers, and others.

This article explains how the various markdown features can be translated into Aspose.Words DOM and back to Markdown format.

## Complexity of Translation Markdown – DOM – Markdown

The main difficulty of this mechanism is not only to translate Markdown to DOM, but also to do the reverse transformation – to save the document back to Markdown format with minimal loss. There are elements, such as multilevel quotes, for which the reverse transformation is not trivial.

Our translation engine allows users not only to work with complex elements in an existing Markdown document, but also to create their own document in Markdown format with the original structure from scratch. To create various elements, you need to use styles with specific names according to certain rules described later in this article. Such styles can be created programmatically.

## Common Translation Principles

We use [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.font/) formatting for inline blocks. When there is no direct correspondence for a Markdown feature in Aspose.Words DOM, we use a character style with a name that starts from some special words.

For container blocks, we use style inheritance to denote nested Markdown features. In this case, even when there are no nested features, we also use paragraph styles with a name that starts from some special words.

Bulleted and ordered lists are container blocks in Markdown as well. Their nesting is represented in DOM the same way as for all other container blocks using style inheritance. However, additionally, lists in DOM have corresponded number formatting in either list style or paragraph formatting.

## Inline Blocks

We use [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.font/) formatting when translating **Bold**, *Italic* or ~~Strikethrough~~ inline markdown features.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Make the text Bold.
builder->get_Font()->set_Bold(true);
builder->Writeln(u"This text will be Bold");{{< /highlight >}} ||
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Make the text Italic.
builder->get_Font()->set_Italic(true);
builder->Writeln(u"This text will be Italic");{{< /highlight >}} ||
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Make the text Strikethrough.
builder->get_Font()->set_Strikethrough(true);
builder->Writeln(u"This text will be Strikethrough");{{< /highlight >}} ||

We use a character style with a name that starts from the word `InlineCode`, followed by an optional dot `(.)` and a number of backticks ```(`)``` for the InlineCode feature. If a number of backticks is missed, then one backtick will be used by default.

| Markdown feature              | Aspose.Words       |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Number of backticks is missed, one backtick will be used by default.
auto inlineCode1BackTicks = doc->get_Style()->Add(StyleType::Character, u"InlineCode");
builder->get_Font()->set_Style(inlineCode1BackTicks);
builder->Writeln(u"Text with InlineCode style with 1 backtick");

// There will be 3 backticks.
auto inlineCode3BackTicks = doc->get_Style()->Add(StyleType::Character, u"InlineCode.3");
builder->get_Font()->set_Style(inlineCode3BackTicks);
builder->Writeln(u"Text with InlineCode style with 3 backtick");{{< /highlight >}} ||
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | The [FieldHyperlink](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_hyperlink/) class. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Insert hyperlink.
builder->InsertHyperlink(u"https://www.aspose.com", u"https://www.aspose.com", false);
builder->InsertHyperlink(u"email@aspose.com", u"mailto:email@aspose.com", false);{{< /highlight >}} ||
| **Link**<br />`[link text](url)`<br />`[link text](<url> "title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | The [FieldHyperlink](https://apireference.aspose.com/words/cpp/class/aspose.words.fields.field_hyperlink/) class. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Insert hyperlink.
builder->InsertHyperlink(u"Aspose", u"https://www.aspose.com", false);{{< /highlight >}} ||
| **Image**<br />`![](url)`<br />`![alt text](<url> “title”)`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | The [Shape](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.shape/) class. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto doc = System::MakeObject<Document>()
auto builder = System::MakeObject<DocumentBuilder>(doc);

// Insert image.
auto shape = System::MakeObject<Shape>(doc, ShapeType::Image);
shape->set_WrapType(WrapType::Inline);
shape->get_ImageData()->set_SourceFullName(u"/attachment/1456/pic001.png");
shape->get_ImageData()->set_Title(u"title");
builder->InsertNode(shape);{{< /highlight >}} ||

## Container Blocks

A document is a sequence of container blocks such as headings, paragraphs, lists, quotes, and others. Container blocks can be divided into 2 classes: Leaf blocks and Complex Containers. Leaf blocks can only contain inline content. Complex containers, in turn, can contain other container blocks, including Leaf blocks.

### Leaf Blocks

The table below shows examples of using Markdown Leaf blocks in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----`                              | This is a simple paragraph with a corresponding HorizontalRule shape:<br />`DocumentBuilder::InsertHorizontalRule()` |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Insert horizontal rule.
builder->InsertHorizontalRule();{{< /highlight >}} |                                                              |
| **ATX Heading**<br />`# H1, ## H2, ### H3…`                  | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, where (1<= N <= 9).<br />This is translated into a built-in style and should be exactly of the specified pattern (no suffixes or prefixes are allowed).<br />Otherwise, it will be just a regular paragraph with a corresponding style. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// By default Heading styles in Word may have Bold and Italic formatting.
//If we do not want to be emphasized, set these properties explicitly to false.
builder->get_Font()->set_Bold(false);
builder->get_Font()->set_Italic(false);

builder->get_ParagraphFormat()->set_StyleName(u"Heading 1");
builder->Writeln(u"This is an H1 tag");{{< /highlight >}} |                                                              |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, based on `“Heading N”` style.<br />If (N >= 2), then `“Heading 2”` will be used, otherwise `“Heading 1”`.<br />Any suffix is allowed, but Aspose.Words importer uses numbers “1” and “2” respectively. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto doc = System::MakeObject<Document>()
auto builder = System::MakeObject<DocumentBuilder>(doc);

builder->get_ParagraphFormat()->set_StyleName(u"Heading 1");
builder->Writeln(u"This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder->get_Font()->set_Bold(false);
builder->get_Font()->set_Italic(false);

auto setexHeading1 = doc->get_Style()->Add(StyleType::Paragraph, u"SetexHeading1");
builder->get_ParagraphFormat()->set_StyleName(setexHeading1);
doc->get_Styles()->idx_get(u"SetexHeading1")->set_BaseStyleName(u"Heading 1");
builder->Writeln(u"Setex Heading level 1");

builder->get_ParagraphFormat()->set_Style(doc->get_Styles()->idx_get(u"Heading 3"));
builder->Writeln(u"This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder->get_Font()->set_Bold(false);
builder->get_Font()->set_Italic(false);

auto setexHeading1 = doc->get_Style()->Add(StyleType::Paragraph, u"SetexHeading2");
builder->get_ParagraphFormat()->set_StyleName(setexHeading2);
doc->get_Styles()->idx_get(u"SetexHeading2")->set_BaseStyleName(u"Heading 3");

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder->Writeln(u"Setex Heading level 2");{{< /highlight >}} |                                                              |
| **Indented Code**                                            | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")`    |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto doc = System::MakeObject<Document>()
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto indentCode = doc->get_Style()->Add(StyleType::Paragraph, u"IndentedCode");
builder->get_ParagraphFormat()->set_StyleName(indentedCode);
builder->Writeln(u"This is an indented code");{{< /highlight >}} |                                                              |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />The `[.]` and `[info string]` are optional. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto doc = System::MakeObject<Document>()
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto fencedCode = doc->get_Style()->Add(StyleType::Paragraph, u"FencedCode");
builder->get_ParagraphFormat()->set_StyleName(fencedCode);
builder->Writeln(u"This is an fenced code");

auto fencedCodeWithInfo = doc->get_Style()->Add(StyleType::Paragraph, u"FencedCode.C#");
builder->get_ParagraphFormat()->set_StyleName(fencedCodeWithInfo);
builder->Writeln(u"This is a fenced code with info string");{{< /highlight >}}   |                                                              |

### Complex Containers

The table below shows examples of using Markdown Complex Containers in Aspose.Words:

| Markdown feature                                             | Aspose.Words                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote`             | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />The suffix in style name is optional, but Aspose.Words importer uses the ordered numbers 1, 2, 3, …. in case of nested quotes.<br />The nesting is defined via the inherited styles. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto doc = System::MakeObject<Document>()
auto builder = System::MakeObject<DocumentBuilder>(doc);

// By default a document stores blockquote style for the first level.
builder->get_ParagraphFormat()->set_StyleName(u"Quote");
builder->Writeln(u"Blockquote");

// Create styles for nested levels through style inheritance.
auto quoteLevel2 = doc->get_Style()->Add(StyleType::Paragraph, u"Quote1");
builder->get_ParagraphFormat()->set_StyleName(quoteLevel2);
doc->get_Style()->idx_get(u"Quote1")->set_BaseStyleName(u"Quote");
builder->Writeln(u"1. Nested blockquote");{{< /highlight >}} |                                                              |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	`   - Item 2a`<br />	`   - Item 2b` | Bulleted lists are represented using paragraph numbering:<br />`get_ListFormat()->ApplyBulletDefault()`<br />There can be 3 types of bulleted lists. They are only diff in a numbering format of the very first level. These are: `‘-’`, `‘+’` or `‘*’` respectively. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

builder->get_ListFormat()->ApplyBulletDefault();
builder->get_ListFormat()->get_List()->get_ListLevels()->idx_get(0)->set_NumberFormat(u"-");

builder->Writeln(u"Item 1");
builder->Writeln(u"Item 2");

builder->get_ListFormat()->ListIndent();

builder->Writeln(u"Item 2a");
builder->Writeln(u"Item 2b");{{< /highlight >}} |                                                              |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Ordered lists are represented using paragraph numbering:<br />`get_ListFormat()->ApplyNumberDefault()`<br />There can be 2 number format markers: ‘.’ and ‘)’. The default marker is ‘.’. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

builder->get_ListFormat()->ApplyBulletDefault();
builder->get_ListFormat()->get_List()->get_ListLevels()->idx_get(0)->set_NumberFormat(System::String::Format(u"{0}.", (char16_t)0));
builder->get_ListFormat()->get_List()->get_ListLevels()->idx_get(1)->set_NumberFormat(System::String::Format(u"{0}.", (char16_t)1));

builder->Writeln(u"Item 1");
builder->Writeln(u"Item 2");

builder->get_ListFormat()->ListIndent();

builder->Writeln(u"Item 2a");
builder->Writeln(u"Item 2b");{{< /highlight >}} |                                                              |

### Tables

Aspose.Words also allows to translate tables into DOM, as shown below:

| Markdown feature                         | Aspose.Words                                                 |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.table/), [Row](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.row/) and [Cell](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.cell/) classes. |
|{{< highlight cpp >}}// Use a document builder to add content to the document.
auto builder = System::MakeObject<DocumentBuilder>();

// Add the first row.
builder->InsertCell();
builder->Writeln(u"a");
builder->InsertCell();
builder->Writeln(u"b");

// Add the second row.
builder->InsertCell();
builder->Writeln(u"c");
builder->InsertCell();
builder->Writeln(i"d");{{< /highlight >}} |                                                              |

## See Also

* ["Working with Markdown Features"](https://docs.aspose.com/words/cpp/working-with-markdown-features/)

