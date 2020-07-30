---
title: Features When Loading PDF or RTF – transfer this topic
type: docs
weight: 10
url: /net/features-when-loading-pdf-or-rtf-–-transfer-this-topic/
---

[MG: This section is not related to the topic "Loading a document" topic – it's more like a description of working with specific formats. See comments below.]

When loading plain text or PDF, additional data processing logic may be required. Aspose.Words provides several options for working with documents in such formats.

[MG: Should we remove this section from this article?]
## **Load PDF Files**
[MG: Check this section. Should we move this section to "[Supported Features on Document Load](/words/net/supported-features-on-document-load-html/)"?]

Aspose.Words allows you to load PDF files, and this feature is only supported using Aspose.Words for .NET Standard. For this purpose, either the Aspose.Words shall be added via the NuGet package, or you should add the reference to Aspose.Words.Pdf2Word.dll in your application.

The following code example shows how to load PDF documents. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-ExamplesCore-Program-LoadPDF.cs" >}}
### **Load Encrypted PDF Documents**
Aspose.Words allows loading the password-protected PDF document by providing a password using LoadOptions.

The following code example demonstrates how to load a password-protected PDF document. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-ExamplesCore-Program-LoadAndSaveEncryptedPDF.cs" >}}
### **Load PDF Document with Specific Page Range**
Aspose.Words allows loading PDF documents with a specific page range using PdfLoadOptions

The following code example demonstrates how to specify pages range in the PDF document to load:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-ExamplesCore-Program-LoadPageRangeOfPDF.cs" >}}
## **Detect UTF8 Text While Loading RTF**
[MG: Should we move this section to "[Load in the Rich Text Format 1.9 (.RTF) Format](/words/net/load-in-the-rich-text-format-1-9-28-rtf-29-format-html/)"?]

AM:

*Этот раздел посвящен поддерживаемым фичам из RTF. Это немного другое. Немного постараюсь внести ясность. Есть фичи поддерживаемые форматом. Например в DOCX поддерживаются закладки (bookmarks), а в каком-нибудь TXT конечно же нет. Просто в формате нет и все. Дополнительно к этому мы и эти поддерживаемые фичи читаем не 100%. То есть это уже с нашей стороны поддержка неполная может быть, хотя формат и поддерживает.*

*А есть еще опции загрузки. Мы даем управлять процессом загрузки. Это вот класс LoadOptions плюс несколько производных, например тот же RtfLoadOptions, в нем есть несколько опций, в основном это костылики для кастомеров с кривыми документами.* 

*Detect UTF8 Text While Loading RTF это описание одного из таких костыликов. По идее у нас должен быть где-то раздел с описаниями такого рода опций загрузки для форматов. А раздел [Load in the Rich Text Format 1.9 (.RTF) Format](/words/net/load-in-the-rich-text-format-1-9-28-rtf-29-format/)* *как я как я увидел больше относится именно к фичам которые поддерживаются форматом и которые мы умеем читать. Там RtfLoadOptions просто затеряется, да он и не особо туда подходит, имхо.* 

In some cases, an RTF document contains UTF-8 characters. By default, Aspose.Words do not encode them. For example, "â€" is imported as it is. The [RecognizeUtf8Text](https://apireference.aspose.com/net/words/aspose.words/rtfloadoptions/properties/recognizeutf8text) property allows us to detect UTF-8 encoded characters and preserve them during import.

The following code example detects UTF-8 characters and preserves them:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithRTF-RecognizeUtf8Text.cs" >}}
