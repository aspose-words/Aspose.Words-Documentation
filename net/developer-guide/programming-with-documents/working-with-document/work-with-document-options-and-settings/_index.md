---
title: Work with Document Options and Settings
type: docs
weight: 30
url: /net/work-with-document-options-and-settings/
---

## **Display the Document's Title in Window's Title bar**

If you need to show the title of the document in the window’s title bar of PDF, PdfSaveOptions.DisplayDocTitle serves this purpose. Set the value of this property to *true* to show the document's title in window’s title bar. If the value of this property is *false*, the title bar should instead display the name of the PDF file containing the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-DisplayDocTitleInWindowTitlebar.cs" >}}

## **Setting View Options**

You can control a document's view when it is opened in Microsoft Word. For example, you may want to switch to the print layout or change the zoom value. Use the Settings.ViewOptions property of the Document object to set the view options.

{{% alert color="primary" %}} 

Microsoft Word 2013 does not write any zoom factor to a document and no longer sets the default zoom from the value written to the document, instead, it appears to use the zoom factor of the last document that was opened.

{{% /alert %}} 

The following code example demonstrates how to make sure the document is displayed at 50% zoom when opened in Microsoft Word. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/TestFile.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

## **Remove Unused Styles and Lists from Document**

If you want to remove only unused styles or lists from the document, you can use Document.Cleanup method with CleanupOptions. CleanupOptions class allows to specify options for document cleaning. The following code example demonstrates how to remove only unused styles from the document. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CleansUnusedStylesandLists-CleansUnusedStylesandLists.cs" >}}

The following code example demonstrates how to remove duplicate styles from the document using DuplicateStyle property provided under the CleanupOptions class.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithCleanupOptions-CleanupDuplicateStyle.cs" >}}


## **Set Lines per Page and Number of Characters per Line**

If you want to set the numbers of characters per line, please use PageSetup.CharactersPerLine property. The minimum value of this property is 1. The maximum value depends on page width and font size of the Normal style. The minimum character pitch is 90 per cent of the font size. For example, a maximum number of characters per line of a Letter page with one-inch margins is 43. By default, the property has a value, on which character pitch equals to the font size of the Normal style.

You can also set the number of lines per page for Word document. Please use PageSetup.LinesPerPage property to get or set the number of lines per page in the document grid. The minimum value of the property is 1. The maximum value depends on page height and font size of the Normal style. Minimum line pitch is 136 per cent of the font size. For example, a maximum number of lines per page of a Letter page with one-inch margins is 39. By default, the property has a value, on which line pitch is in 1.5 times greater than the font size of the Normal style.

The following code example demonstrates how to set the number of characters per line and number of lines per page for Word document. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## **Working With Import Format Options**

Aspose.Words provide ImportFormatOptions class which allows to specify various import options to format output.

### **Set Smart Style Behavior**

ImportFormatOptions class provides **SmartStyleBehavior** property to work when styles clashes upon importing.

When this option is **enabled**, a source style will be expanded into a direct attribute inside a destination document, if KeepSourceFormatting importing mode is used.
When this option is **disabled**, a source style will be expanded only if it is numbered. Existing destination attributes will not be overridden, including lists.

For a moment, this option can be used only with a new public method of a DocumentBuilder class as shown in the example given below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithImportFormatOptions-SmartStyleBehavior.cs" >}}

### **Set Keep Source Numbering**

When import nodes between different documents there can be a situation when source document has lists with the same identifiers that were already used in a destination document. Word in such case always uses the formatting from the destination lists. To allow users to choose an appropriate behavior, the KeepSourceNumbering property was introduced in ImportFormatOptions class which specifies how the numbering will be imported when it clashes in source and destination documents. The default value is false.

For using this property, a new public method that accepts the new KeepSourceNumbering option was introduced as shown in the following example. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithImportFormatOptions-KeepSourceNumbering.cs" >}}

### **Set Ignore Text Boxes**

When import a text box between different documents, the formatting of the destination document is applied to it. This corresponds to the behaviour of the Word. To allow users to choose an appropriate behavior, the IgnoreTextBoxes option was introduced in ImportFormatOptions class. This property indicates whether to ignore formatting in the text boxes of the source destination during the import and the default value is true.



{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithImportFormatOptions-IgnoreTextBoxes.cs" >}}

## **Allowing to Setup Language Preferences**

Displaying the document in MS Word depends on what languages are set in defaults of that document. But what to do, if there are no languages are set in defaults? In this case, Word takes information from '*Set the Office Language Preferences*' dialogue, which for example, can be found under 'File -> Options -> Language' menu in Word 2016. With Aspose.Words, you can set up language preferences using LanguagePreferences class. The following code example demonstrates how to add the Japanese language to the editing languages. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

The following code example demonstrates how to set the Russian language as the default editing language.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## **Optimize Document to Particular MS Word Version**

CompatibilityOptions.OptimizeFor method allows optimizing the document contents as well as default Aspose.Words behaviour to a particular version of MS Word. You can use this method to prevent MS Word from displaying "Compatibility mode" ribbon upon document loading. Note that you may also need to set the Compliance property to Iso29500_2008_Transitional or higher. The following code example demonstrates how to optimize document contents to MS Word 2016.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
