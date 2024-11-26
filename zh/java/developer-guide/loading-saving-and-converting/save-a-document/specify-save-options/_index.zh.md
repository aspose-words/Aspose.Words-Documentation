---
title: 在Java中指定保存选项
second_title: Aspose.Words为Java
articleTitle: 指定保存选项
linktitle: 指定保存选项
description: "使用Java保存文档时设置高级属性，以便对过程进行更精确的控制。"
type: docs
weight: 20
url: /zh/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

保存文档时，可以设置一些高级属性。 Aspose.Words为您提供[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)类，它允许更精确地控制保存过程。 有接受**SaveOptions**对象的**Save**方法的重载-它应该是从**SaveOptions**类派生的类的对象。 每个保存格式都有一个相应的类，用于保存此保存格式的保存选项，例如，有[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)用于保存为PDF格式，[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)用于保存为Markdown格式，或[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)用于保存为图像。 本文提供了使用从**SaveOptions**派生的一些options类的示例。

下面的代码示例演示如何在将文档保存到HTML之前设置保存选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

本文介绍了保存文档时可以控制的一些属性。

## 使用密码加密文档

使用**Password**属性获取或设置加密文档的密码。 使用相应类的**Password**属性来处理选定的文档格式。

例如，将文档保存为DOC或DOT格式时，请使用[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)类的[Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password)属性。

下面的代码示例演示如何设置密码以使用RC4加密方法加密文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

将文档保存为ODT格式时，请使用[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)类的[Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password)属性。

下面的代码示例演示如何加载和保存使用密码加密的OpenDocument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

并非所有格式都支持加密和使用**Password**属性。

## 显示文档保存进度通知

Aspose.Words提供了使用[ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback)属性获取有关文档保存进度的通知的功能。

现在可以在保存到DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, 或TXT格式。

## 更新文档创建时间

Aspose.Words提供了使用[CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime)属性在UTC中获取或设置文档创建日期的功能。 您也可以在使用[UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty)选项保存之前更新此值。

下面的代码示例演示如何更新文档创建时间:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## 更新上次保存的属性

Aspose.Words提供了使用[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)属性获取或设置确定[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)属性是否在保存之前更新的值的功能。

下面的代码示例演示如何设置此属性并保存文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## 以每像素一位格式保存黑白图像

要控制图像保存选项，使用**ImageSaveOptions**类。 例如，您可以使用[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)属性为生成的图像设置像素格式。 请注意，由于GDI+的工作，输出图像的像素格式可能与设定值不同。

下面的代码示例演示如何以每像素一位格式保存黑白图像:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
