---
title: Specify Load Options
description: "Aspose.Words for .NET allows you to set advanced properties when loading a document. This enables you to more accurately control the load process."
type: docs
weight: 10
url: /net/specify-load-options/
---

When loading a document, you can set some advanced properties. Aspose.Words provides you with the [LoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions) class, which allows more precise control of the load process. Some load formats have a corresponding class that holds load options for this load format, for example, there is [PdfLoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/pdfloadoptions) for loading to PDF format or [TxtLoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/txtloadoptions) for loading to TXT. This article provides examples of working with options of the **LoadOptions** class.

## Set Microsoft Word Version to Change the Appearance

Different versions of Microsoft Word application can display documents in differently. For example, there is a well-known problem with OOXML documents such as DOCX or DOTX produced using WPS Office. In such case essential document markup elements may be missing or may be interpreted differently causing Microsoft Word 2019 to show such a document differently compared to Microsoft Word 2010.

By default Aspose.Words opens documents using Microsoft Word 2019 rules. If you need to to make document loading appear as it would happen in one of the previous Microsoft Word application versions, you should explicitly specify the desired version using the [MswVersion](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/mswversion) property of the **LoadOptions** class.

The following code example shows how to set the Microsoft Word version with load options:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-SetMSWordVersion.cs" >}}

## Set Language Preferences to Change the Appearance

The details of displaying a document in Microsoft Word depend not only on the application version and the **MswVersion** property value but also on the language settings. Microsoft Word may show documents differently depending on the "Office Language Preferences" dialog settings, that can be found in "File → Options → Languаge". Using this dialog a user can select, for example, primary language, proofing languages, display languages, and so on. Aspose.Words provides the [LanguagePreferences](https://apireference.aspose.com/words/net/aspose.words.loading/languagepreferences) property as the equivalent of this dialog. If Aspose.Words output differs from the Microsoft Word output, set the appropriate value for **EditingLanguage** – this can improve the output document.

The following code example shows how to set Japanese as **EditingLanguage**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

## Use WarningCallback to Control Problems While Loading a Document

Some documents may be corrupted, contain invalid entries, or have features not currently supported by Aspose.Words. If you want to know about problems that occurred while loading a document, Aspose.Words provides the [IWarningCallback](https://apireference.aspose.com/words/net/aspose.words/iwarningcallback) interface.

The following code example demonstrates the implementation of the **IWarningCallback** interface:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cs" >}}

To get information about all problems throughout the load time, use the [WarningCallback](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/warningcallback) property.

The following code example shows how to use this property:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cs" >}}

## Use ResourceLoadingCallback to Control the External Resources Loading

A document may contain external links to images located somewhere on a local disk, network, or Internet. Aspose.Words automatically loads such images into a document, but there are situations when this process needs to be controlled. For example, to decide whether we really need to load a certain image or perhaps skip it. The [ResourceLoadingCallback](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/resourceloadingcallback) load option enables you to control this.

The following code example demonstrates the implementation of the [IResourceLoadingCallback](https://apireference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback) interface:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cs" >}}

The following code example shows how to use the **ResourceLoadingCallback** property:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cs" >}}

## Use TempFolder to Avoid a Memory Exception

Aspose.Words supports extremely large documents that have thousands of pages full of rich content. Loading such documents may require much RAM. In the process of loading, Aspose.Words needs even more memory to hold temporary structures used to parse a document.

If you have a problem with Out of Memory exception while loading a document, try to use the [TempFolder](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/tempfolder) property. In this case, Aspose.Words will store some data in temporary files instead of memory, and this can help avoid such an exception.

The following code example shows how to set **TempFolder**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-SetTempFolder.cs" >}}

## Set the Encoding Explicitly

Most modern document formats store their content in Unicode and do not require special handling. On the other hand, there are still multiple documents that use some pre-Unicode encoding and sometimes either miss encoding information or do not even support encoding information by nature. Aspose.Words tries to automatically detect the appropriate encoding by default, but in a rare case you may need to use an encoding different from the one detected by our encoding recognition algorithm. In this case, use the [Encoding](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/encoding) property to get or set the encoding.

The following code example shows how to set the encoding to override the automatically chosen encoding:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cs" >}}

## Load Encrypted Documents

You can load Word documents encrypted with a password. To do this, use a special constructor overload, which accepts a [LoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions) object. This object contains the [Password](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/password) property, which specifies the password string.

The following code example shows how to load a document encrypted with a password:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cs" >}}

If you do not know in advance whether the file is encrypted, you can use the [FileFormatUtil](https://apireference.aspose.com/words/net/aspose.words/fileformatutil) class, which provides utility methods for working with file formats, such as detecting the file format or converting file extensions to/from file format enumerations. To detect if the document is encrypted and requires a password to open it, use the [IsEncrypted](https://apireference.aspose.com/words/net/aspose.words/fileformatinfo/properties/isencrypted) property.

The following code example shows how to verify OpenDocument either it is encrypted or not:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-VerifyODTdocument.cs" >}}
