---
title: Work with Options and Appearance of Word Documents
second_title: Aspose.Words for Python via .NET
articleTitle: Work with Options and Appearance of Word Documents
linktitle: Work with Options and Appearance of Word Documents
description: "Control the appearance of Word documents taking into account the difference between various Microsoft Word versions using Python."
type: docs
weight: 120
url: /python-net/work-with-word-document-options-and-appearance/
aliases:
 - /python/work-with-document-options-and-settings/
 - /python/work-with-word-document-options-and-appearance/
---

Sometimes you may need to change the appearance of a document, for example, set language preferences or the number of lines per page.Aspose.Words provides the ability to control how the document will be displayed, as well as some additional options. This article describes such possibilities.

## Set Document Display Options

You can control how a document will be displayed in Microsoft Word using the **ViewOptions** class. For example, you can set a document zoom value using the **zoom_percent** property, or the view mode using the **view_type** property.

The following code example shows how to ensure that a document is displayed at 50% when opened in Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

You can download the template file for this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 does not write any zoom factor to a document and no longer sets the default zoom from the value written to the document, instead, it seems to use the zoom factor of the last open document.

{{% /alert %}}

## Set Page Display Options

If you want to set the number of characters per line, use the **characters_per_line** property. You can also set the number of lines per page for a Word document – use the **lines_per_page** property to get or set the number of lines per page in the document grid.

{{% alert color="primary" %}}

In Microsoft Word, you can set the same parameters using the "Document Grid" tab in the "Page Setup" dialog box only when Asian language support is installed.

{{% /alert %}}

The following code example shows how to set the number of characters per line and the number of lines per page for a Microsoft Word document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Set Language Preferences

Displaying a document in Microsoft Word depends on which languages are set as defaults for this document. If no languages are set in defaults, Microsoft Word takes information from the "Set Office Language Preferences" dialog box, which, for example, can be found under "File → Options → Language" in Microsoft Word 2019.

With Aspose.Words, you can also set up language preferences using the **LanguagePreferences** class. Also note that for the correct display of your document it is necessary to set the Microsoft Word version that the document loading process should match – this can be done using the **msw_version** property.

{{% alert color="primary" %}}

If your Aspose.Words generated document does not look as expected, check the **LanguagePreferences** and **MswVersion** values and adjust them if necessary to match the settings for your Microsoft Word version.

{{% /alert %}}

The following code example shows how to add Japanese to editing languages:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

The following code example shows how to set Russian as the default editing language:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimize a Document for a Particular Word Version

The **optimize_for** method allows optimizing document content, as well as default Aspose.Words behaviour for a particular version of Microsoft Word. You can use this method to prevent Microsoft Word from displaying the “Compatibility mode” ribbon upon document loading. Note that you may also need to set the **compliance** property to ISO29500_2008_TRANSITIONAL or higher.

The following code example shows how to optimize document content for Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}