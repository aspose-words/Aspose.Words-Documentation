---
title: Find and Replace
type: docs
weight: 50
url: /net/find-and-replace/
---

Use [Range.Replace](https://apireference.aspose.com/net/words/aspose.words/range/methods/replace/index) to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. The [Range.Replace](https://apireference.aspose.com/net/words/aspose.words/range/methods/replace/index) method provides several overloads. Here are the possibilities they provide:

- You can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected. Note that a word is defined as being made up of only alpha-numeric characters. If replace is executed with only whole words only being matched and the input string happens to contain symbols, then no phrases will be found.
- You can pass a regular expression pattern used to find matches and a string that will replace them. This overload replaces the whole match captured by the regular expression.
- You can pass a regular expression pattern and an object that implements the [IReplacingCallback](https://apireference.aspose.com/net/words/aspose.words/ireplacingcallback) interface. This sets out a user-defined method, which evaluates replacement at each step, you can also indicate whether the replacement should be done in a forward or backward direction. It is recommended if you are removing nodes during replacement then the replacement should be executed **backwards** to avoid any potential issues that may arise when removing nodes during the replacement process. A class implementing the IReplacingCallback interface will define a method [IReplacingCallback.Replacing](https://apireference.aspose.com/net/words/aspose.words/ireplacingcallback/methods/replacing) that accepts a [ReplacingArgs](https://apireference.aspose.com/net/words/aspose.words/replacingargs) object providing data for a custom replace operation. The method should return a [ReplaceAction](https://apireference.aspose.com/net/words/aspose.words/replaceaction) enumeration value that specifies what happens to the current match during a replace operation - whether it should be replaced, skipped, or the whole replace operation should be terminated.

The following examples show how to use the aforementioned overloads. The sample class provides methods, each of which uses a Range.Replace overload:

- **Example 1** simply replaces all occurrences of the word "sad" to "bad".
- **Example 2** replaces all occurrences of the words "sad" or "mad" to "bad".
- **Example 3** uses a replace evaluator method to concatenate occurrences of words "sad" or "bad" with the counter value that is incremented each time the new occurrence is found.
1. Example 1: Replace One Word with Another. Shows how to replace all occurrences of the word "sad" to "bad". You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/Document.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

1. Example 2: Replace Two Similar Words with One Other. Shows how to replace all occurrences of words "sad" or "mad" to "bad". You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/Document.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

1. Example 3: Use a Custom Evaluator. Shows how to replace with a custom evaluator. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/Range.ReplaceWithEvaluator.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithEvaluator-ReplaceWithEvaluator.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithEvaluator-MyReplaceEvaluator.cs" >}}
## **How to Find and Highlight Text**
This section describes how to programmatically find and highlight a word or a phrase in a document using Aspose.Words. It might seem easy to simply find the string of text in a document and change its formatting, but the main difficulty is that due to formatting, the match string could be spread over several runs of text. Consider the following example. The phrase “Hello World!” if formatted and consists of three different runs: Hello is italic, World is bold, and the exclamation mark is regular text:

*Hello* **World**!

In addition to formatting, bookmarks in the middle of text will split it into more runs.) The above example is represented in Aspose.Words using the following objects:

- [Run](/pages/createpage.action?spaceKey=wordsnet&title=Run+Class&linkCreation=true&fromPageId=102465845) ([Run.Text](/pages/createpage.action?spaceKey=wordsnet&title=Text+Property&linkCreation=true&fromPageId=102465845) = “Hello”, [Font.Italic](/pages/createpage.action?spaceKey=wordsnet&title=Italic+Property&linkCreation=true&fromPageId=102465845) = true)
- Run (Run.Text = “World”, [Font.Bold](/pages/createpage.action?spaceKey=wordsnet&title=Bold+Property&linkCreation=true&fromPageId=102465845) = true)
- Run (Run.Text = “!”)

This article provides a solution designed to handle the described case – if necessary it collects the word (or phrase) from several runs while skipping non-run nodes.

The sample code will open a document and find any instance of the text “your document”. A replace handler is set up to handle the logic to be applied to each resulting match found. In this case, the resulting runs are split around the text and the resulting runs highlighted. Below example finds and highlights all instances of a particular word or a phrase in a Word document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Find-Replace/TestFile.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-FindAndHighlight-FindAndHighlight.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-FindAndHighlight-ReplaceEvaluatorFindAndHighlight.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-FindAndHighlight-SplitRun.cs" >}}
## **Find and Replace Text using Meta-Characters**
### **How to Preserve Meta-Characters During Replacement**
If you want to preserve meta-characters beginning with "&" during find and replace process, you can use FindReplaceOptions.PreserveMetaCharacters property. The following code example shows how to find a text and replace it with HTML that has meta-characters.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceHtmlTextWithMeta-Characters-ReplaceHtmlTextWithMetaCharacters.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceHtmlTextWithMeta-Characters-ReplaceHtmlFindAndInsertHtml.cs" >}}
### **Replace Text using Meta-Characters**
Range.Replace method supports breaks in both the search pattern and replacement string. You need to use special meta-characters to specify breaks: **&p** for a paragraph break, **&b** for section break, **&m** for page break and **&l** for a manual line break. the given below code example shows how to replace text that contains paragraph and page break.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-MetaCharactersInSearchPattern.cs" >}}

The below code example shows how to replace certain paragraph breaks with a new paragraph break and replace custom text tag with a section break.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}
## **Find and Replace with HTML**
The following code example shows how to find and replace the text with HTML using evaluator.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}
## **Find and Replace in Header and Footer**
### **ReplaceText In Footer**
The header and footer sections can be extracted from HeaderFooterCollection and the following code example shows how to find and replace a text string in the footer section of the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}
### **Show Changes for Header and Footer Orders**
The following code example shows the changes for header and footer orders.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ShowChangesForHeaderAndFooterOrders.cs" >}}
## **Find and Replace using Legacy Order**
Aspose.Words provides the [UseLegacyOrder](https://apireference.aspose.com/net/words/aspose.words.replacing/findreplaceoptions/properties/uselegacyorder) property to find and replace text sequentially from top to bottom considering the text in the text boxes. The following code example demonstrates how to perform find and replace with UseLegacyOrder.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-UsingLegacyOrder-FineReplaceUsingLegacyOrder.cs" >}}
## **Ignore Text during Find and Replace**
### **Ignore Text Inside Field**
Aspose.Words provides the [IgnoreFields](https://apireference.aspose.com/net/words/aspose.words.replacing/findreplaceoptions/properties/ignorefields) in the FindReplaceOptions class indicating either to ignore the text inside fields. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside fields while find and replace.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideFields.cs" >}}
### **Ignore Text Inside Delete Revisions**
Aspose.Words provides the [IgnoreDeleted](https://apireference.aspose.com/net/words/aspose.words.replacing/findreplaceoptions/properties/ignoredeleted) property in the FindReplaceOptions class indicating either to ignore the text inside delete revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside delete revisions.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}
### **Ignore Text Inside Insert Revisions**
Aspose.Words provides the [IgnoreInserted](https://apireference.aspose.com/net/words/aspose.words.replacing/findreplaceoptions/properties/IgnoreInserted) property in the FindReplaceOptions class indicating either to ignore the text inside insert revisions. This is a boolean type property and its default value is False. The following code example demonstrates how to ignore text inside insert revisions.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideInsertRevisions.cs" >}}
