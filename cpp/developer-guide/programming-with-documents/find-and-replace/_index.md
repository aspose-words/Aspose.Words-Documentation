---
title: Find and Replace
type: docs
weight: 90
url: /cpp/find-and-replace/
---

## **Find and Replace Overview**
Use Range.Replace to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object and footnote.

The Range.Replace method provides several overloads. Here are the possibilities they provide:

- You can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected. Note that a word is defined as being made up of only alpha-numeric characters. If replace is executed with only whole words only being matched and the input string happens to contain symbols, then no phrases will be found.
- You can pass a regular expression pattern used to find matches and a string that will replace them. This overload replaces the whole match captured by the regular expression.
- You can pass a regular expression pattern and an object that implements the IReplacingCallback interface. This sets out a user-defined method, which evaluates replacement at each step, you can also indicate whether the replacement should be done in a forward or backward direction. It is recommended if you are removing nodes during replacement then the replacement should be executed **backward** to avoid any potential issues that may arise when removing nodes during the replacement process. A class implementing the IReplacingCallback interface will define a method IReplacingCallback.Replacing that accepts a ReplacingArgs object providing data for a custom replace operation. The method should return a ReplaceAction enumeration value that specifies what happens to the current match during a replace operation - whether it should be replaced, skipped, or the whole replace operation should be terminated.

The following examples show how to use the aforementioned overloads. The sample class provides methods, each of which uses a Range.Replace overload:

- **Example 1** simply replaces all occurrences of the word "sad" to "bad".
- **Example 2** replaces all occurrences of the words "sad" or "mad" to "bad".
- **Example 3** uses a replace evaluator method to concatenate occurrences of words "sad" or "bad" with the counter value that is incremented each time the new occurrence is found.
- **Example 4** explains how to recognize and use substitutions within replacement patterns.
### **Example 1: Replace One Word with Another**
Shows how to replace all occurrences of the word "sad" to "bad". You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}
### **Example 2: Replace Two Similar Words with One Other**
Shows how to replace all occurrences of words "sad" or "mad" to "bad". You can download the template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}
### **Example 3: Use a Custom Evaluator**
Shows how to replace it with a custom evaluator. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/Range.ReplaceWithEvaluator.doc).

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceWithEvaluator-ReplaceWithEvaluator.cpp" >}}

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceWithEvaluator-MyReplaceEvaluator.cpp" >}}
### **Example 4: Recognize and Use Substitutions within Replacement Patterns**
The following code example demonstrates how to recognize and use substitutions within replacement patterns using UseSubstitutions property.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-RecognizeAndSubstitutionsWithinReplacementPatterns.cpp" >}}


## **How to Find and Highlight Text**
This section describes how to programmatically find and highlight a word or a phrase in a document using Aspose.Words. It might seem easy to simply find the string of text in a document and change its formatting, but the main difficulty is that due to formatting, the match string could be spread over several runs of text. Consider the following example. The phrase “Hello World!” if formatted and consists of three different runs: Hello is italic, World is bold, and the exclamation mark is the regular text:

*Hello* **World**!

In addition to formatting, bookmarks in the middle of text will split it into more runs.) The above example is represented in Aspose.Words using the following objects:

- [Run](/pages/createpage.action?spaceKey=wordscpp&title=Run+Class&linkCreation=true&fromPageId=68943873) ([Run.Text](/pages/createpage.action?spaceKey=wordscpp&title=Text+Property&linkCreation=true&fromPageId=68943873) = “Hello”, [Font.Italic](/pages/createpage.action?spaceKey=wordscpp&title=Italic+Property&linkCreation=true&fromPageId=68943873) = true)
- Run (Run.Text = “World”, [Font.Bold](/pages/createpage.action?spaceKey=wordscpp&title=Bold+Property&linkCreation=true&fromPageId=68943873) = true)
- Run (Run.Text = “!”)

This article provides a solution designed to handle the described case – if necessary it collects the word (or phrase) from several runs while skipping non-run nodes.

The following document is used in this sample.

![todo:image_alt_text](http://i.imgur.com/AtdnRmR.png)
### **The Code**
The sample code will open a document and find any instance of the text “your document”. A replace handler is set up to handle the logic to be applied to each resulting match found. In this case, the resulting runs are split around the text and the resulting runs highlighted. The following code example finds and highlights all instances of a particular word or a phrase in a Word document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/TestFile.doc).

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-FindAndHighlight-FindAndHighlight.cpp" >}}

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-FindAndHighlight-ReplaceEvaluatorFindAndHighlight.cpp" >}}

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-FindAndHighlight-SplitRun.cpp" >}}
### **The Result**
Each resulting match is highlighted yellow, even those matches that have different formatting and span across multiple runs.

![todo:image_alt_text](http://i.imgur.com/GtyZdQd.png)
## **Find and Replace Text using Meta-Characters**
### **How to Preserve Meta-Characters During Replacement**
If you want to preserve meta-characters beginning with "&" during find and replace process, you can use FindReplaceOptions.PreserveMetaCharacters property. The following code example shows how to find a text and replace it with HTML that has meta-characters.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-ReplaceHtmlTextWithMetaCharacters-ReplaceHtmlTextWithMetaCharacters.cpp" >}}

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Find-Replace-ReplaceHtmlTextWithMetaCharacters-ReplaceHtmlFindAndInsertHtml.cpp" >}}
### **Replace Text using Meta-Characters**
Range.Replace method supports breaks in both the search pattern and a replacement string. You need to use special meta-characters to specify breaks: **&p** for a paragraph break, **&b** for section break, **&m** for page break and **&l** for a manual line break. The following code example shows how to replace text that contains paragraphs and page breaks.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-MetaCharactersInSearchPattern.cpp" >}}

The following code example shows how to replace certain paragraph breaks with new paragraph break and replace custom text tag with a section break.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}
## **Ignore Text during Find and Replace**
### **Ignore Text Inside Field**
Aspose.Words provides the [IgnoreFields](https://apireference.aspose.com/cpp/words/class/aspose.words.replacing.find_replace_options/#ad1d6ffd2811f93722fb7c6e7a25ca641) in the FindReplaceOptions class indicating either to ignore the text inside fields. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside fields while find and replace.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideFields.cpp" >}}
### **Ignore Text Inside Delete Revisions**
Aspose.Words provides the [IgnoreDeleted](https://apireference.aspose.com/cpp/words/class/aspose.words.replacing.find_replace_options/#a64bceaeb51010a5242d4264217962883) property in the FindReplaceOptions class indicating either to ignore the text inside delete revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside delete revisions.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}
### **Ignore Text Inside Insert Revisions**
Aspose.Words provides the [IgnoreInserted](https://apireference.aspose.com/cpp/words/class/aspose.words.replacing.find_replace_options/#acab2ad6dcd055c092aa45aca692471d4) property in the FindReplaceOptions class indicating either to ignore the text inside insert revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside insert revisions.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideInsertRevisions.cpp" >}}
