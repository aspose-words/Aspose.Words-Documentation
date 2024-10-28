---
title: 在C++中指定保存选项
second_title: Aspose.Words对于C++
articleTitle: 指定保存选项
linktitle: 指定保存选项
description: "更精确地控制保存过程。"
type: docs
weight: 10
url: /zh/cpp/specify-save-options/
---

保存文档时，可以设置一些高级属性。 Aspose.Words为您提供[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)类，它允许更精确地控制保存过程。 有接受**SaveOptions**对象的**Save**方法的重载-它应该是从**SaveOptions**类派生的类的对象。 每个保存格式都有一个相应的类，用于保存此保存格式的保存选项，例如，有[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)用于保存为PDF格式，[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions)用于保存为Markdown格式，或[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)用于保存为图像。 本文提供了使用从**SaveOptions**派生的一些options类的示例。

下面的代码示例演示如何在将文档保存到HTML之前设置保存选项:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

本文介绍了保存文档时可以控制的一些属性。

## 使用密码加密文档

使用**Password**属性获取或设置加密文档的密码。 使用相应类的**Password**属性来处理选定的文档格式。

例如，将文档保存为DOC或DOT格式时，请使用[DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options)类的[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)属性。

下面的代码示例演示如何设置密码以使用RC4加密方法加密文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

将文档保存为ODT格式时，请使用[OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options)类的[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/)属性。

下面的代码示例演示如何加载和保存使用密码加密的OpenDocument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

并非所有格式都支持加密和使用**Password**属性。

## 显示文档保存进度通知

Aspose.Words提供了使用[ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/)属性获取有关文档保存进度的通知的功能。

现在可以在保存到DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, 或TXT格式。

## 更新文档创建时间

Aspose.Words提供了使用[CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/)属性在UTC中获取或设置文档创建日期的功能。 您也可以在使用[UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/)选项保存之前更新此值。

下面的代码示例演示如何更新文档创建时间:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## 更新上次保存的属性

Aspose.Words提供了使用[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/)属性获取或设置确定[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)属性是否在保存之前更新的值的功能。

下面的代码示例演示如何设置此属性并保存文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## 以每像素一位格式保存黑白图像

要控制图像保存选项，使用**ImageSaveOptions**类。 例如，您可以使用[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/)属性为生成的图像设置像素格式。 请注意，由于GDI+的工作，输出图像的像素格式可能与设定值不同。

下面的代码示例演示如何以每像素一位格式保存黑白图像:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
