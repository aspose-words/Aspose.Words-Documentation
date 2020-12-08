---
title: Find and Replace
type: docs
description: "Aspose.Words allows you to find a string or regular expression pattern in your document and replace it with the text you want. In this case, you do not need third-party applications."
weight: 50
url: /net/find-and-replace/
---

You can easily navigate within your document using a keyboard and mouse, but if you have many pages to scroll through, it will take quite a while to find specific text in a long document. It will be more time consuming when you want to replace certain characters or words that you have used in your document. The “Find and replace” functionality enables you to find a sequence of characters in a document and replace it with another sequence of characters.

Aspose.Words allows you to find a specific string or regular expression pattern in your document and replace it with an alternative without installing and using additional applications such as Microsoft Word. This will speed up many typing and formatting tasks, potentially saving you hours of work.

This article explains how to apply string replacement and regular expressions with the support of metacharacters.

## Ways to Find and Replace

Aspose.Words provides two ways to apply the find and replace operation by using the following:

1. *Simple string replacement* – to find and replace a specific string with another, you need to specify a search string (alphanumeric characters) that is going to be replaced according to all occurrences with another specified replacement string. Both strings must not contain symbols. Take into account that string comparison can be case-sensitive, or you may be unsure of spelling or have several similar spellings.
2. *Regular expressions* – to specify a regular expression to find the exact string matches and replace them according to your regular expression. Note that a word is defined as being made up of only alphanumeric characters. If replacement is executed with only whole words being matched and the input string happens to contain symbols, then no phrases will be found.

In addition, you can use special metacharacters with simple string replacement and regular expressions to specify breaks within the find and replace operation.

Aspose.Words presents the find and replace functionality with the [Aspose.Words.Replacing](https://apireference.aspose.com/words/net/aspose.words.replacing) namespace. You can work with many options during the find and replace process using [FindReplaceOptions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions) class.

### Find and Replace Text using Simple String Replacement

You can use one of the [Replace](https://apireference.aspose.com/net/words/aspose.words/range/methods/replace/index) methods to find or replace a particular string and return the number of replacements that were made. In this case, you can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected.

The following code example shows how to find the string “_CustomerName_” and replace it with the string “James Bond”:

{{< highlight csharp >}}
// Load a Word Docx document by creating an instance of the Document class.
Document doc = new Document(); 
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("Hello _CustomerName_,");

// Specify the search string and replace string using the Replace method.
doc.Range.Replace("_CustomerName_", "James Bond", new FindReplaceOptions());

// Save the result.
doc.Save("Range.ReplaceSimple.docx");
{{< /highlight >}}

You can notice the difference between the document before applying simple string replacement:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

And after applying simple string replacement:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Find and Replace Text using Regular Expressions

A regular expression (regex) is a pattern that describes a certain sequence of text. Suppose you want to replace all double occurrences of a word with a single word occurrence. Then you can apply the following regular expression to specify the double-word pattern: `([a-zA-Z]+) \1`.

Use the other [Replace](https://apireference.aspose.com/words/net/aspose.words.range/replace/methods/3) method to search and replace particular character combinations by setting the Regex parameter as the regular expression pattern to find matches.

The following code example shows how to replace strings that match a regular expression pattern with a specified replacement string:

{{< highlight csharp >}}
Document doc = **new** Document();
DocumentBuilder builder = **new** DocumentBuilder(doc);
builder.Writeln("sad mad bad");
Assert.AreEqual("sad mad bad", doc.GetText().Trim());

// Replaces all occurrences of the words "sad" or "mad" to "bad".
doc.Range.Replace(**new** Regex("[s|m]ad"), "bad", options);

// Save the Word document.
doc.Save("Range.ReplaceWithRegex.docx");
{{< /highlight >}}

You can notice the difference between the document before applying string replacement with regular expressions:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

And after applying string replacement with regular expressions:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Find and Replace String using Metacharacters

You can use metacharacters in the search string or the replacement string if a particular text or phrase is composed of multiple paragraphs, sections, or pages. Some of the metacharacters include **&p** for a paragraph break, **&b** for a section break, **&m** for a page break, and **&l** for a line break.

{{% alert color="primary" %}}

Note that the metacharacter **&&** equals to **&**. For example, if you need to find text for **&p** that is not a paragraph break, then you can use **&&p**.

{{% /alert %}}

The following code example shows how to replace text with paragraph and page break:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Font.Name = "Arial";
builder.Writeln("First section");
builder.Writeln("  1st paragraph");
builder.Writeln("  2nd paragraph");
builder.Writeln("{insert-section}");
builder.Writeln("Second section");
builder.Writeln("  1st paragraph");

FindReplaceOptions options = new FindReplaceOptions();
options.ApplyParagraphFormat.Alignment = ParagraphAlignment.Center;

// Double each paragraph break after word "section", add kind of underline and make it centered.
int count = doc.Range.Replace("section&p", "section&p----------------------&p", options);

// Insert section break instead of custom text tag.
count = doc.Range.Replace("{insert-section}", "&b", options);
dataDir = dataDir + "ReplaceTextContaingMetaCharacters_out.docx";
doc.Save(dataDir);
{{< /highlight >}}

## Find and Replace String in Header/Footer of a Document

You can find and replace text in the header/footer section of a Word document using the [HeaderFooter](https://apireference.aspose.com/net/words/aspose.words/headerfooter) class.

The following code example shows how to replace the text of the header section in your document:

{{< highlight csharp >}}
// Access header of the Word document.
HeaderFooterCollection headersFooters = doc.FirstSection.HeadersFooters;
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];

// Set options.
FindReplaceOptions options = new FindReplaceOptions
{ 
	MatchCase = false, 
	FindWholeWordsOnly = false 
};

// Replace text in the header of the Word document.
header.Range.Replace("Aspose.Words", "Remove", options);

// Save the Word document.
doc.Save("HeaderReplace.docx");
{{< /highlight >}}

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

## Ignore Text During Find and Replace

While applying the find and replace operation, you can ignore certain segments of the text. So, certain parts of the text can be excluded from the search, and the find and replace can be applied only to the remaining parts.

Aspose.Words provides many find and replace properties for ignoring text such as [IgnoreDeleted](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignoredeleted), [IgnoreFields](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignorefields), and [IgnoreInserted](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignoreinserted).

The following code example shows how to ignore text inside delete revisions:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert non-revised text.
builder.Writeln("Deleted");
builder.Write("Text");

// Remove first paragraph with tracking revisions.
doc.StartTrackRevisions("John Doe", DateTime.Now);
doc.FirstSection.Body.FirstParagraph.Remove();
doc.StopTrackRevisions();

Regex regex = new Regex("e");
FindReplaceOptions options = new FindReplaceOptions();

// Replace 'e' in document while ignoring deleted text.
options.IgnoreDeleted = true;
doc.Range.Replace(regex, "*", options);
Assert.AreEqual(doc.GetText().Trim(), "Deleted\rT*xt");

// Replace 'e' in document while not ignoring deleted text.
options.IgnoreDeleted = false;
doc.Range.Replace(regex, "*", options);
{{< /highlight >}}

## Customize Find and Replace Operation

Aspose.Words provides many different [properties](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/index) to find and replace text such as applying specific format with [ApplyFont](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/applyfont) and [ApplyParagraphFormats](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/applyparagraphformat) properties, using substitutions in replacement patterns with [UseSubstitutions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/usesubstitutions) property, and others.

The following code example shows how to highlight a specific word in your document:

{{< highlight csharp >}}
// Highlight word "the" with yellow color.
FindReplaceOptions options = new FindReplaceOptions();
options.ApplyFont.HighlightColor = Color.Yellow;

// Replace highlighted text.
doc.Range.Replace("the", "the", options);
{{< /highlight >}}

Aspose.Words allows you to use [IReplacingCallback](https://apireference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback) interface to create and call a custom method during a replace operation. You may have some use cases where you need to customize the find and replace operation such as replacing text specified with a regular expression with HTML tags, so basically you will apply replace with inserting HTML.

If you need to replace a string with an HTML tag, apply the **IReplacingCallback** interface to customize the find and replace operation so the match starts at the beginning of a run with the match node of your document. Let us provide several examples of using **IReplacingCallback**.

The following code example shows how to replace text specified with HTML:

{{< highlight csharp >}}
public static void ReplaceWithHtml(string dataDir) 
{ 
	Document doc = new Document();
	DocumentBuilder builder = new  DocumentBuilder(doc);
	builder.Writeln("Hello <CustomerName>,"); 
	FindReplaceOptions options = new FindReplaceOptions();
	options.ReplacingCallback = new ReplaceWithHtmlEvaluator(options);
	doc.Range.Replace(new Regex(@" <CustomerName>,"), String.Empty, options);

	// Save the modified document. 
	doc.Save(dataDir + "Range.ReplaceWithInsertHtml.doc"); 
}

private class ReplaceWithHtmlEvaluator : IReplacingCallback 
{ 
	internal ReplaceWithHtmlEvaluator (FindReplaceOptions options) 
	{ 
		mOptions = options; 
	} 

	//This simplistic method will only work well when the match starts at the beginning of a run. 
	ReplaceAction IReplacingCallback.Replacing(ReplacingArgs args) 
	{ 
		DocumentBuilder builder = new DocumentBuilder((Document)args.MatchNode.Document);
		builder.MoveTo(args.MatchNode); 
	
		// Replace '<CustomerName>' text with a red bold name.
		builder.InsertHtml("<b><font color='red'>James Bond, </font></b>"); args.Replacement = ""; 
		return ReplaceAction.Replace;
	}
	
	private readonly FindReplaceOptions mOptions;
}
{{< /highlight >}}

The following code example shows how to highlight positive numbers with green color and negative numbers with red color:

{{< highlight csharp >}}
// Replace and Highlight Numbers.
internal class NumberHighlightCallback : IReplacingCallback
{
	public NumberHighlightCallback (FindReplaceOptions opt)
	{
		mOpt = opt;
	}

	public ReplaceAction Replacing (ReplacingArgs args)
	{
		// Let replacement to be the same text.
		args.Replacement = args.Match.Value;
	
		int val = int.Parse(args.Match.Value);
	
		// Apply either red or green color depending on the number value sign.
		mOpt.ApplyFont.Color = (val > 0)
			? Color.Green
			: Color.Red;
	
		return ReplaceAction.Replace;
	}
	
	private readonly FindReplaceOptions mOpt;
}
{{< /highlight >}}

The following code example shows how to highlight numbers in text:

{{< highlight csharp >}}
public void TestLineCounter()
{
	// Create a document.
	Document doc = new Document();
	DocumentBuilder builder = new DocumentBuilder(doc);

	// Add lines of text.
	builder.Writeln("This is first line");
	builder.Writeln("Second line");
	builder.Writeln("And last line");
	
	// Prepend each line with line number.
	FindReplaceOptions opt = new FindReplaceOptions() {ReplacingCallback = new LineCounterCallback()};
	doc.Range.Replace(new Regex("[^&p]*&p"), "", opt);
	
	doc.Save(@"X:\TestLineCounter.docx");
}

internal class LineCounterCallback : IReplacingCallback
{
	public ReplaceAction Replacing(ReplacingArgs args)
	{
		Debug.WriteLine(args.Match.Value);

		args.Replacement = string.Format("{0} {1}", mCounter++,    args.Match.Value);
		return ReplaceAction.Replace;
	}
	
	private int mCounter = 1;
}
{{< /highlight >}}