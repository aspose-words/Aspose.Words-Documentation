---
title: 指定保存选项 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 指定保存选项
linktitle: 指定保存选项
description: "使用保存文档时设置高级属性 Java 更准确地控制这一过程。"
type: docs
weight: 20
url: /zh/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

保存文档时,可以设置一些高级属性. Aspose.Words 为你提供 [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) class,允许更精确地控制保存过程。 有超载的 **Save** 接受一个 **SaveOptions** 对象 – 它应该是来源于 **SaveOptions** 课。 每种保存格式都有相应的类, 持有保存格式的选项, 例如, 有 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 用于保存到 PDF 格式, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 用于保存到 Markdown 格式,或 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 用于保存到图像。 本条提供了一些实例,说明如何与来自 **SaveOptions**。 。 。 。

以下代码示例显示在将文档保存到 HTML 之前如何设置保存选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

文章描述了您在保存文档时可以控制的一些属性.

## 加密文档 带密码

使用 **Password** 属性以获取或设置加密文档的密码。 使用 **Password** 属性,用于使用选定的文档格式。

例如,将文档保存到 DOC 或 DOT 格式,使用 [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) 财产和财产 [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) 课。

以下代码示例显示如何使用RC4加密方法设置加密文件的密码:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

当将文档保存到 ODT 格式时,请使用 [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) 财产和财产 [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) 课。

以下代码示例显示如何加载和保存加密的OpenDocument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

并非所有格式都支持加密和使用 **Password** 属性。

## 显示文档保存进度通知

Aspose.Words 提供使用 [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) 属性以获取文档保存进度的通知。

它现在保存到DOCX,FlatOpc,DOCM, DOT门 DOTX,HTML,MHTML,EPUB,XamlFlow,XamlFlowPack,或TXT格式.

## 更新文档创建时间

Aspose.Words 提供使用这种技术的能力 [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) 属性以获取或设置世界协调时的文档创建日期。 在使用 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) 选项。

以下代码示例显示如何更新文档创建时间:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## 更新上次保存的属性

Aspose.Words 提供使用这种技术的能力 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 属性以获取或设置一个值,以确定是否 [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 属性在保存前更新。

以下代码示例显示如何设置此属性并保存文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## 用每个像素格式一个位元保存黑白图像

要控制图像保存选项,请 **ImageSaveOptions** 类被使用。 例如,你可以使用 [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) 属性设置生成的图像的像素格式。 请注意,由于GDI+的工作,输出图像的像素格式可能与设定值不同.

以下代码示例显示如何用每个像素格式一个比特保存黑白图像:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
