---
title: 指定 C# 中的儲存選項
second_title: Aspose.Words for .NET
articleTitle: 指定儲存選項
linktitle: 指定儲存選項
description: "更準確地控制使用C#的儲存過程。"
type: docs
weight: 10
url: /zh-hant/net/specify-save-options/
---

當儲存文件時，您可以設定一些進階屬性。 Aspose.Words 提供給您類別 [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/)，允許更精確的儲存過程控制。 有過載的 **Save** 方法可以接受 **SaveOptions** 物件，他應該是從 **SaveOptions** 類別派生的物件。 每個儲存格式都有對應的類別，該類別會儲存儲存格式的選項。例如，有 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 用於儲存到 PDF 格式，[MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 用於儲存到 Markdown 格式，或 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 用於儲存到圖像。 本文示例說明如何處理一些從 **SaveOptions** 導出的選項類別。

接下來這個程式碼範例示範了如何在儲存HTML文件前設定儲存選項：

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "export-text-input-form-field-as-text.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載這個範例的範本檔案。

{{% /alert %}}

該文章描述了一些當您儲存文件時可以控制的屬性。

## 用密碼加密一個檔案

使用 **Password** 屬性取得或設定加密文件的密碼。 使用對應類別的 **Password** 屬性來處理所選的文件格式。

例如，當儲存一個文件為DOC或DOT格式的時候，請使用[Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/)屬性的[DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/)類別。

以下範例會示範如何設定密碼來加密文件，使用 RC4 加密法：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

儲存以 Odt 格式的文件時，請使用 [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) 屬性的 [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) 類別。

以下程式碼示範了如何以密碼加密的OpenDocument方式載入並儲存：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}

並非所有格式都支援加密以及使用 **Password** 屬性。

## 顯示儲存進度通知

Aspose.Words讓您可以利用[ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/)屬性來獲取文件儲存進度的通知。

儲存為DOCX、FlatOpc、DOCM、DOTM、DOTX、HTML、MHTML、EPUB、XamlFlow、XamlFlowPack或TXT格式時，它現在可用。

## 更新文件的創建時間

Aspose.Words提供使用[CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/)屬性來取得或設定UTC時間的文件創建日期的能力。 您也可以在儲存前使用 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) 選項更新此值。

以下範例顯示如何更新文件的建立時間：

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-printed.cs" >}}

## 更新上次儲存的屬性

Aspose.Words提供了一個能使用[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/)屬性來獲取或設定一個值的能力，以決定是否在儲存前更新[LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/)屬性。

以下範例示範如何設定此屬性並儲存文件：

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-saved-time.cs" >}}

## 在將檔案儲存為 HTML 或 SVG 時，控制外部資源

若要將 HTML 或 SVG 轉換成 PDF，只要啟動 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 方法並指定包含 .pdf 附檔名的檔案即可。 如果您想要從外部來源加載圖片、CSS 等檔案，您可以使用 [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/)。

## 以一比特每像素格式儲存黑白圖像

要控制圖片的儲存選項，則使用 **ImageSaveOptions** 類別。 例如，您可以使用 [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) 屬性來設定所生成圖像的像素格式。 請注意，由於 GDI+的工作，輸出影像的像素格式可能與設定值不同。

以下範例顯示如何保存一張以一比特每像素格式的黑色與白色圖像：

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "format1-bpp-indexed.cs" >}}
