---
title: Specify Load Options
description: "Aspose.Words for Python via .NET enables you to set advanced properties when loading a document. This allows you to more accurately control the load process."
type: docs
weight: 10
url: /pythonnet/specify-load-options/
---

When loading a document, you can set some advanced properties. Aspose.Words provides you with the **LoadOptions** class, which allows more precise control of the load process. Some load formats have a corresponding class that holds load options for this load format, for example, there is **PdfLoadOptions** for loading to PDF format or **TxtLoadOptions** for loading to TXT. This article provides examples of working with options of the **LoadOptions** class.

## Set Microsoft Word Version to Change the Appearance

Different versions of Microsoft Word application can display documents in differently. For example, there is a well-known problem with OOXML documents such as DOCX or DOTX produced using WPS Office. In such case essential document markup elements may be missing or may be interpreted differently causing Microsoft Word 2019 to show such a document differently compared to Microsoft Word 2010.

By default Aspose.Words opens documents using Microsoft Word 2019 rules. If you need to to make document loading appear as it would happen in one of the previous Microsoft Word application versions, you should explicitly specify the desired version using the **msw_version** property of the **LoadOptions** class.

The following code example shows how to set the Microsoft Word version with load options:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Set Language Preferences to Change the Appearance

The details of displaying a document in Microsoft Word depend not only on the application version and the **msw_version** property value but also on the language settings. Microsoft Word may show documents differently depending on the "Office Language Preferences" dialog settings, that can be found in "File → Options → Languаge". Using this dialog a user can select, for example, primary language, proofing languages, display languages, and so on. Aspose.Words provides the **language_preferences** property as the equivalent of this dialog. If Aspose.Words output differs from the Microsoft Word output, set the appropriate value for **EditingLanguage** – this can improve the output document.

The following code example shows how to set Japanese as **EditingLanguage**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Use TempFolder to Avoid a Memory Exception

Aspose.Words supports extremely large documents that have thousands of pages full of rich content. Loading such documents may require much RAM. In the process of loading, Aspose.Words needs even more memory to hold temporary structures used to parse a document.

If you have a problem with Out of Memory exception while loading a document, try to use the **temp_folder** property. In this case, Aspose.Words will store some data in temporary files instead of memory, and this can help avoid such an exception.

The following code example shows how to set **temp_folder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Set the Encoding Explicitly

Most modern document formats store their content in Unicode and do not require special handling. On the other hand, there are still many documents that use some pre-Unicode encoding and sometimes either miss encoding information or do not even support encoding information by nature. Aspose.Words tries to automatically detect the appropriate encoding by default, but in a rare case you may need to use an encoding different from the one detected by our encoding recognition algorithm. In this case, use the **encoding** property to get or set the encoding.

The following code example shows how to set the encoding to override the automatically chosen encoding:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Load Encrypted Documents

You can load Word documents encrypted with a password. To do this, use a special constructor overload, which accepts a **LoadOptions** object. This object contains the **password** property, which specifies the password string.

The following code example shows how to load a document encrypted with a password:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

If you do not know in advance whether the file is encrypted, you can use the **FileFormatUtil** class, which provides utility methods for working with file formats, such as detecting the file format or converting file extensions to/from file format enumerations. To detect if the document is encrypted and requires a password to open it, use the **is_encrypted** property.

The following code example shows how to verify document either it is encrypted or not:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
