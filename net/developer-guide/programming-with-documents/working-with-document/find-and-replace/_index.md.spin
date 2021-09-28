---
title: Find and Replace
type: docs
description: "Aspose.Words for .NET allows you to find a string or regular expression pattern in your document and replace it with the text you want. In this case, you do not need third-party applications."
weight: 85
url: /net/find-and-replace/
---

You can easily navigate within your document using a keyboard and mouse, but if you have {many|multiple|several|a few|numerous} pages to scroll through, it will take quite a while to find specific text in a long document. It will be more time consuming when you want to replace certain characters or words that you have used in your document. The “Find and replace” functionality enables you to find a sequence of characters in a document and replace it with another sequence of characters.

Aspose.Words allows you to find a specific string or regular expression pattern in your document and replace it with an alternative without installing and using additional applications such as Microsoft Word. This will speed up {many|multiple|several|a few|numerous} typing and formatting tasks, potentially saving you hours of work.

This article explains how to apply string replacement and regular expressions with the support of metacharacters.

## {Ways|Methods} to Find and Replace {#ways-to-find-and-replace}

Aspose.Words provides two ways to apply the find and replace operation by using the following:

1. *Simple string replacement* – to find and replace a specific string with another, you need to specify a search string (alphanumeric characters) that is going to be replaced according to all occurrences with another specified replacement string. Both strings must not contain symbols. Take into account that string comparison can be case-sensitive, or you may be unsure of spelling or have {several|multiple|a few|many|numerous} similar spellings.
2. *Regular expressions* – to specify a regular expression to find the exact string matches and replace them according to your regular expression. Note that a word is defined as being made up of only alphanumeric characters. If replacement is executed with only whole words being matched and the input string happens to contain symbols, then no phrases will be found.

In addition, you can use special metacharacters with simple string replacement and regular expressions to specify breaks within the find and replace operation.

Aspose.Words presents the find and replace functionality with the [Aspose.Words.Replacing](https://apireference.aspose.com/words/net/aspose.words.replacing) namespace. You can work with {many|multiple|several|a few|numerous} options during the find and replace process using [FindReplaceOptions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions) class.

### Find and Replace {Text|String} {Using|With} Simple String Replacement {#find-and-replace-text-using-simple-string-replacement}

You can use one of the [Replace](https://apireference.aspose.com/net/words/aspose.words/range/methods/replace/index) methods to find or replace a particular string and return the number of replacements that were made. In this case, you can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected.

The following code example shows how to find the string “_CustomerName_” and replace it with the string *“James Bond”*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

You can notice the difference between the document before applying simple string replacement:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

And after applying simple string replacement:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Find and Replace {Text|String} {Using|With} Regular Expressions {#find-and-replace-text-using-regular-expressions}

A regular expression (regex) is a pattern that describes a certain sequence of text. Suppose you want to replace all double occurrences of a word with a single word occurrence. Then you can apply the following regular expression to specify the double-word pattern: `([a-zA-Z]+) \1`.

Use the other [Replace](https://apireference.aspose.com/words/net/aspose.words.range/replace/methods/3) method to search and replace particular character combinations by setting the Regex parameter as the regular expression pattern to find matches.

The following code example shows how to replace strings that match a regular expression pattern with a specified replacement string:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

You can notice the difference between the document before applying string replacement with regular expressions:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

And after applying string replacement with regular expressions:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Find and Replace {String|Text} {Using|With} Metacharacters {#find-and-replace-text-using-metacharacters}

You can use metacharacters in the search string or the replacement string if a particular text or phrase is composed of {multiple|several|a few|many|numerous} paragraphs, sections, or pages. Some of the metacharacters include **&p** for a paragraph break, **&b** for a section break, **&m** for a page break, and **&l** for a line break.

{{% alert color="primary" %}}

Note that the metacharacter **&&** equals to **&**. For example, if you need to find text for **&p** that is not a paragraph break, then you can use **&&p**.

{{% /alert %}}

The following code example shows how to replace text with paragraph and page break:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Find and Replace {String|Text} in {Header/Footer|Header or Footer} {of a Document|} {#find-and-replace-string-in-header-or-footer-of-a-document}

You can find and replace text in the header/footer section of a Word document using the [HeaderFooter](https://apireference.aspose.com/net/words/aspose.words/headerfooter) class.

The following code example shows how to replace the text of the header section in your document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

You can notice the difference between the document before applying header string replacement:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

And after applying header string replacement:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

The code example to replace the text of the footer section in your document is very similar to the previous header code example. All you need to do is replace the following two lines:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

With the following:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

You can notice the difference between the document before applying footer string replacement:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

And after applying footer string replacement:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignore Text {During|When} Find and Replace {#ignore-text-during-find-and-replace}

While applying the find and replace operation, you can ignore certain segments of the text. So, certain parts of the text can be excluded from the search, and the find and replace can be applied only to the remaining parts.

Aspose.Words provides {many|multiple|several|a few|numerous} find and replace properties for ignoring text such as [IgnoreDeleted](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignoredeleted), [IgnoreFields](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignorefields), and [IgnoreInserted](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignoreinserted).

The following code example shows how to ignore text inside delete revisions:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## {Customize|Manage} Find and Replace Operation {#customize-find-and-replace-operation}

Aspose.Words provides {many|multiple|several|a few|numerous} different [properties](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/index) to find and replace text such as applying specific format with [ApplyFont](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/applyfont) and [ApplyParagraphFormats](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/applyparagraphformat) properties, using substitutions in replacement patterns with [UseSubstitutions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/usesubstitutions) property, and others.

The following code example shows how to highlight a specific word in your document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words allows you to use [IReplacingCallback](https://apireference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback) interface to create and call a custom method during a replace operation. You may have some use cases where you need to customize the find and replace operation such as replacing text specified with a regular expression with HTML tags, so basically you will apply replace with inserting HTML.

If you need to replace a string with an HTML tag, apply the **IReplacingCallback** interface to customize the find and replace operation so the match starts at the beginning of a run with the match node of your document. Let us provide {several|multiple|a few|many|numerous} examples of using **IReplacingCallback**.

The following code example shows how to replace text specified with HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

The following code example shows how to highlight positive numbers with green color and negative numbers with red color:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

The following code example shows how to prepend a line number to each line:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
