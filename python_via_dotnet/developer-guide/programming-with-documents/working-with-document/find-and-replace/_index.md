---
title: Find and Replace
type: docs
description: "Aspose.Words for Python via .NET allows you to find a string or regular expression pattern in your document and replace it with the text you want. In this case, you do not need third-party applications."
weight: 85
url: /python/find-and-replace/
---

You can easily navigate within your document using a keyboard and mouse, but if you have many pages to scroll through, it will take quite a while to find specific text in a long document. It will be more time consuming when you want to replace certain characters or words that you have used in your document. The “Find and replace” functionality enables you to find a sequence of characters in a document and replace it with another sequence of characters.

Aspose.Words allows you to find a specific string or regular expression pattern in your document and replace it with an alternative without installing and using additional applications such as Microsoft Word. This will speed up many typing and formatting tasks, potentially saving you hours of work.

This article explains how to apply string replacement and regular expressions with the support of metacharacters.

## Ways to Find and Replace {#ways-to-find-and-replace}

Aspose.Words provides two ways to apply the find and replace operation by using the following:

1. *Simple string replacement* – to find and replace a specific string with another, you need to specify a search string (alphanumeric characters) that is going to be replaced according to all occurrences with another specified replacement string. Both strings must not contain symbols. Take into account that string comparison can be case-sensitive, or you may be unsure of spelling or have several similar spellings.
2. *Regular expressions* – to specify a regular expression to find the exact string matches and replace them according to your regular expression. Note that a word is defined as being made up of only alphanumeric characters. If replacement is executed with only whole words being matched and the input string happens to contain symbols, then no phrases will be found.

In addition, you can use special metacharacters with simple string replacement and regular expressions to specify breaks within the find and replace operation.

Aspose.Words presents the find and replace functionality with the **aspose.words.replacing** namespace. You can work with many options during the find and replace process using **FindReplaceOptions** class.

### Find and Replace Text using Simple String Replacement {#find-and-replace-text-using-simple-string-replacement}

You can use one of the **replace** and **replace_regex** methods to find or replace a particular string and return the number of replacements that were made. In this case, you can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected.

The following code example shows how to find the string “_CustomerName_” and replace it with the string *“James Bond”*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

You can notice the difference between the document before applying simple string replacement:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

And after applying simple string replacement:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Find and Replace Text using Regular Expressions {#find-and-replace-text-using-regular-expressions}

A regular expression is a pattern that describes a certain sequence of text. Suppose you want to replace all double occurrences of a word with a single word occurrence. Then you can apply the following regular expression to specify the double-word pattern: `([a-zA-Z]+) \1`.

Use the **replace_regex** method to search and replace particular character combinations by setting the regular expression parameter as the pattern to find matches.

The following code example shows how to replace strings that match a regular expression pattern with a specified replacement string:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

You can notice the difference between the document before applying string replacement with regular expressions:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

And after applying string replacement with regular expressions:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Find and Replace String using Metacharacters {#find-and-replace-text-using-metacharacters}

You can use metacharacters in the search string or the replacement string if a particular text or phrase is composed of multiple paragraphs, sections, or pages. Some of the metacharacters include **&p** for a paragraph break, **&b** for a section break, **&m** for a page break, and **&l** for a line break.

{{% alert color="primary" %}}

Note that the metacharacter **&&** equals to **&**. For example, if you need to find text for **&p** that is not a paragraph break, then you can use **&&p**.

{{% /alert %}}

The following code example shows how to replace text with paragraph and page break:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Find and Replace String in Header/Footer of a Document {#find-and-replace-string-in-header-or-footer-of-a-document}

You can find and replace text in the header/footer section of a Word document using the **HeaderFooter** class.

The following code example shows how to replace the text of the header section in your document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

You can notice the difference between the document before applying header string replacement:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

And after applying header string replacement:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

The code example to replace the text of the footer section in your document is very similar to the previous header code example. All you need to do is replace the following two lines:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

With the following:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

You can notice the difference between the document before applying footer string replacement:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

And after applying footer string replacement:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignore Text During Find and Replace {#ignore-text-during-find-and-replace}

While applying the find and replace operation, you can ignore certain segments of the text. So, certain parts of the text can be excluded from the search, and the find and replace can be applied only to the remaining parts.

Aspose.Words provides many find and replace properties for ignoring text such as **ignore_deleted**, **ignore_fields**, and **ignore_inserted**.

The following code example shows how to ignore text inside delete revisions:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Customize Find and Replace Operation {#customize-find-and-replace-operation}

Aspose.Words provides many different properties to find and replace text such as applying specific format with **apply_font** and **apply_paragraph_formats** properties, using substitutions in replacement patterns with **use_substitutions** property, and others.

The following code example shows how to highlight a specific word in your document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
