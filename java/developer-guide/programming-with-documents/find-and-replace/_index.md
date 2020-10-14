---
title: Find and Replace
type: docs
weight: 90
url: /java/find-and-replace/
---

## Find and Replace Overview

Use [Range.replace](http://www.aspose.com/api/java/words/com.aspose.words/classes/range/methods/replace\(java.lang.String,java.lang.String,boolean,boolean\)/) to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. The [Range.replace](http://www.aspose.com/api/java/words/com.aspose.words/classes/range/methods/replace\(java.lang.String,java.lang.String,boolean,boolean\)/) method provides several overloads. Here are the possibilities they provide:

- You can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected. Note that a word is defined as being made up of only alpha-numeric characters. If replace is executed with only whole words only being matched and the input string happens to contain symbols, then no phrases will be found.
- You can pass a regular expression pattern used to find matches and a string that will replace them. This overload replaces the whole match captured by the regular expression.
- You can pass a regular expression pattern and an object that implements the [IReplacingCallback](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/IReplacingCallback) interface. This sets out a user-defined method, which evaluates replacement at each step, you can also indicate whether the replacement should be done in a forward or backward direction. It is recommended if you are removing nodes during replacement then the replacement should be executed **backwards** to avoid any potential issues that may arise when removing nodes during the replacement process. A class implementing the IReplacingCallback interface will define a method [IReplacingCallback.replacing](http://www.aspose.com/api/java/words/com.aspose.words/interfaces/ireplacingcallback/methods/replacing\(com.aspose.words.ReplacingArgs\)/) that accepts a [ReplacingArgs](http://www.aspose.com/api/java/words/com.aspose.words/classes/ReplacingArgs) object providing data for a custom replace operation. The method should return a [ReplaceAction](http://www.aspose.com/api/java/words/com.aspose.words/constants/ReplaceAction) enumeration value that specifies what happens to the current match during a replace operation - whether it should be replaced, skipped, or the whole replace operation should be terminated.

The following examples show how to use the aforementioned overloads. The sample class provides methods, each of which uses a Range.Replace overload:

- **Example 1** simply replaces all occurrences of the word "sad" to "bad".
- **Example 2** replaces all occurrences of the words "sad" or "mad" to "bad".
- **Example 3** uses a replace evaluator method to concatenate occurrences of words "sad" or "bad" with the counter value that is incremented each time the new occurrence is found.
- **Example 4** explains how to recognize and use substitutions within replacement patterns.

### Example 1: Replace One Word with Another

Shows how to replace all occurrences of the word "sad" to "bad". You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/ReplaceWithString/Document.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceWithString-ReplaceWithString.java" >}}

### Example 2: Replace Two Similar Words with One Other

Shows how to replace all occurrences of words "sad" or "mad" to "bad". You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/find_replace/ReplaceWithRegex/Document.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceWithRegex-ReplaceWithRegex.java" >}}

### Example 3: Use a Custom Evaluator

Shows how to replace with a custom evaluator. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/find_replace/ReplaceWithEvaluator/Document.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceWithEvaluator-ReplaceWithEvaluator.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceWithEvaluator-MyReplaceEvaluator.java" >}}

### Example 4: Recognize and Use Substitutions within Replacement Patterns

The following code example demonstrates how to recognize and use substitutions within replacement patterns using UseSubstitutions property.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceWithRegex-RecognizeAndSubstitutionsWithinReplacementPatterns.java" >}}

## How to Find and Highlight Text

This section describes how to programmatically find and highlight a word or a phrase in a document using Aspose.Words.It might seem easy to simply find the string of text in a document and change its formatting, but the main difficulty is that due to formatting, the match string could be spread over several runs of text. Consider the following example. The phrase “Hello World!” if formatted and consists of three different runs: Hello is italic, World is bold, and the exclamation mark is regular text:

*Hello* **World**!

The above example is represented in Aspose.Words using the following objects:

- **Run** (**Run.Text** = "Hello", **Font.Italic** = true)
- **Run** (**Run.Text** = "World", **Font.Bold** = true)
- **Run** (**Run.Text** = "!")

This article provides a solution designed to handle the described case – if necessary it collects the word (or phrase) from several runs while skipping non-run nodes.

The following document is used in this sample.

|![todo:image_alt_text](http://i.imgur.com/AtdnRmR.png)|
| :- |

### The Code

The sample code will open a document and find any instance of the text “your document”. A replace handler is set up to handle the logic to be applied to each resulting match found. In this case, the resulting runs are split around the TXT and the resulting runs highlighted. Below example finds and highlights all instances of a particular word or a phrase in a Word document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndHighlightText-FindAndHighlightText.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndHighlightText-ReplaceEvaluatorFindAndHighlight.java" >}}

### The Result

Each resulting match is highlighted yellow, even those matches that have different formatting and span across multiple runs.

|![todo:image_alt_text](http://i.imgur.com/GtyZdQd.png)|
| :- |

## Find and Replace Text using Meta-Characters

### How to Preserve Meta-Characters During Replacement

If you want to preserve meta-characters beginning with "&" during find and replace process, you can use FindReplaceOptions.PreserveMetaCharacters property. The following code example shows how to find a text and replace it with HTML that has meta-characters.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceHtmlTextWithMeta_Characters-ReplaceHtmlTextWithMetaCharacters.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceHtmlTextWithMeta_Characters-ReplaceHtmlFindAndInsertHtml.java" >}}

### Replace Text using Meta-Characters

Range.Replace method supports breaks in both the search pattern and replacement string. You need to use special meta-characters to specify breaks: **&p** for a paragraph break, **&b** for section break, **&m** for page break and **&l** for the manual line break. the below code example shows how to replace text that contains paragraph and page break.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindReplaceUsingMetaCharacters-MetaCharactersInSearchPattern.java" >}}

The below code example shows how to replace certain paragraph breaks with a new paragraph break and replace custom text tag with the section break.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.java" >}}

## Find and Replace in Header and Footer

### Replace Text In Footer

The header and footer sections can be extracted from HeaderFooterCollection and the following code example shows how to find and replace a text string in the footer section of the document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.java" >}}

## Find and Replace using Legacy Order

Aspose.Words API provides the [UseLegacyOrder](https://apireference.aspose.com/java/words/com.aspose.words/findreplaceoptions#UseLegacyOrder) property to find and replace text sequentially from top to bottom considering the text in the text boxes. The following code example demonstrates how to perform find and replace with UseLegacyOrder.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-UsingLegacyOrder-FineReplaceUsingLegacyOrder.java" >}}

## Ignore Text during Find and Replace

### Ignore Text Inside Field

Aspose.Words provides the [IgnoreFields](https://apireference.aspose.com/java/words/com.aspose.words/findreplaceoptions#IgnoreFields) in the FindReplaceOptions class indicating either to ignore the text inside fields. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside fields while find and replace.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideFields.java" >}}

### Ignore Text Inside Delete Revisions

Aspose.Words provides the [IgnoreDeleted](https://apireference.aspose.com/java/words/com.aspose.words/findreplaceoptions#IgnoreDeleted) property in the FindReplaceOptions class indicating either to ignore the text inside delete revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside delete revisions.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

### Ignore Text Inside Insert Revisions

Aspose.Words provides the [IgnoreInserted](https://apireference.aspose.com/java/words/com.aspose.words/findreplaceoptions#IgnoreInserted) property in the FindReplaceOptions class indicating either to ignore the text inside insert revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside insert revisions.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideInsertRevisions.java" >}}
