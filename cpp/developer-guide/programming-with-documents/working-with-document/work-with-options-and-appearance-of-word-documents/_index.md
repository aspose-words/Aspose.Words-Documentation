---
title: Work with Options and Appearance of Word Documents
description: "Aspose.Words for C++ allows you to control the appearance of Word documents taking into account the difference between various Microsoft Word versions."
type: docs
weight: 110
url: /cpp/work-with-word-document-options-and-appearance/
aliases: [/cpp/work-with-document-options-and-settings/]
---

Sometimes you may need to change the appearance of a document, for example, set language preferences or the number of lines per page.Aspose.Words provides the ability to control how the document will be displayed, as well as some additional options. This article describes such possibilities.

## Set Document Display Options

You can control how a document will be displayed in Microsoft Word using the [ViewOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.settings.view_options) class. For example, you can set a document zoom value using the [ZoomPercent](https://apireference.aspose.com/words/cpp/class/aspose.words.settings.view_options#adefe2f9d3a7e03571801c698d4b9c6db) property, or the view mode using the [ViewType](https://apireference.aspose.com/words/cpp/class/aspose.words.settings.view_options#a40515d73a14fe07aa0c0d0509f5ccc5b) property.

The following code example shows how to ensure that a document is displayed at 50% when opened in Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

You can download the template file for this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 does not write any zoom factor to a document and no longer sets the default zoom from the value written to the document, instead, it seems to use the zoom factor of the last open document.

{{% /alert %}}

## Set Page Display Options

If you want to set the number of characters per line, use the [CharactersPerLine](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#a6f18a3e4cfc718ea46a92e22bca00b86) property. You can also set the number of lines per page for a Word document – use the [LinesPerPage](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup#abf870799be4e1dc6ae560c70c6678d14) property to get or set the number of lines per page in the document grid.

{{% alert color="primary" %}}

In Microsoft Word, you can set the same parameters using the "Document Grid" tab in the "Page Setup" dialog box only when Asian language support is installed.

{{% /alert %}}

The following code example shows how to set the number of characters per line and the number of lines per page for a Microsoft Word document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Set Language Preferences

Displaying a document in Microsoft Word depends on which languages are set as defaults for this document. If no languages are set in defaults, Microsoft Word takes information from the "Set Office Language Preferences" dialog box, which, for example, can be found under "File → Options → Language" in Microsoft Word 2019.

With Aspose.Words, you can also set up language preferences using the [LanguagePreferences](https://apireference.aspose.com/words/cpp/class/aspose.words.loading.language_preferences/) class. Also note that for the correct display of your document it is necessary to set the Microsoft Word version that the document loading process should match – this can be done using the [MswVersion](https://apireference.aspose.com/words/cpp/class/aspose.words.loading.load_options#a4a35a3b868f2b012e17397b0e2f7727b) property.

{{% alert color="primary" %}}

If your Aspose.Words generated document does not look as expected, check the **LanguagePreferences** and **MswVersion** values and adjust them if necessary to match the settings for your Microsoft Word version.

{{% /alert %}}

The following code example shows how to add Japanese to editing languages:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

The following code example shows how to set Russian as the default editing language:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Optimize a Document for a Particular Word Version

The [OptimizeFor](https://apireference.aspose.com/words/cpp/class/aspose.words.settings.compatibility_options#a04ce7125ac6aeba6cb1afdd7513dc9e6) method allows optimizing document content, as well as default Aspose.Words behaviour for a particular version of Microsoft Word. You can use this method to prevent Microsoft Word from displaying the “Compatibility mode” ribbon upon document loading. Note that you may also need to set the Compliance property to Iso29500_2008_Transitional or higher.

The following code example shows how to optimize document content for Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}