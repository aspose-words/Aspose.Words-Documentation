---
title: Working with Lists
type: docs
weight: 100
url: /net/working-with-lists/
---

This topic describes how to work programmatically with lists using Aspose.Words. Lists can be used in your documents to format, arrange, and emphasize text. Lists are a great way to organize data in documents, and they make it easier for readers to understand key points. 

A list in a Microsoft Word document is a set of list formatting properties. Each list can have up to 9 levels and formatting properties, such as number style, start value, indent, tab position etc are defined separately for each level. A List object always belongs to the ListCollection collection.
## **Creating Lists by Applying List Formatting**
Aspose.Words allows the easy creation of lists by applying list formatting. DocumentBuilder provides the DocumentBuilder.ListFormat property that returns a ListFormat object. This object has several methods to start and end a list and to increase/decrease the indent. There are two general types of lists in Microsoft Word: bulleted and numbered.

- To start a bulleted list, call [ListFormat.ApplyBulletDefault](http://www.aspose.com/api/net/words/aspose.words/listformat/methods/applybulletdefault) .
- To start a numbered list, call [ListFormat.ApplyNumberDefault](http://www.aspose.com/api/net/words/aspose.words/listformat/methods/applynumberdefault) .

The bullet or number and formatting are added to the current paragraph and all further paragraphs created using **DocumentBuilder** until [ListFormat.RemoveNumbers](http://www.aspose.com/api/net/words/aspose.words/listformat/methods/removenumbers) is called to stop bulleted list formatting. In Word documents, lists may consist of up to nine levels. List formatting for each level specifies what bullet or number is used, left indent, space between the bullet and text etc.

- To increase the list level of the current paragraph by one level, call [ListFormat.ListIndent](http://www.aspose.com/api/net/words/aspose.words/listformat/methods/listindent).
- To decrease the list level of the current paragraph by one level, call [ListFormat.ListOutdent](http://www.aspose.com/api/net/words/aspose.words/listformat/methods/listoutdent).

The methods change the list level and apply the formatting properties of the new level.

{{% alert color="primary" %}} 

You can also use the [ListFormat.ListLevelNumber](http://www.aspose.com/api/net/words/aspose.words/listformat/properties/listlevelnumber) property to get or set the list level for the paragraph. The list levels are numbered 0 to 8.

{{% /alert %}} 

Below example shows how to build a multilevel list.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}
## **How to Restart List for each Section**
You can restart a list for each section using List.IsRestartAtEachSection property. Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376. Following code example shows how to create a list and restart it for each section. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
