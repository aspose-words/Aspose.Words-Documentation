---
title: 以 C# 儲存文件
second_title: 「Aspose.Words for .NET」
articleTitle: 保存文書
linktitle: 保存文書
type: docs
description: "使用 C# 儲存任何支援的格式中的文件。"
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /zh-hant/net/save-a-document/
---

你需要用 Aspose.Words 執行的任務大多都是儲存文件。 「要儲存一個文件Aspose.Words，提供[Save](https://reference.aspose.com/words/net/aspose.words/document/save/)方法的[Document](https://reference.aspose.com/words/net/aspose.words/document/)類別。 有過載，可將文件儲存於檔案、串流或 ASP.NET HttpResponse 物件中傳送至客戶端瀏覽器。 「該文件可儲存在 Aspose.Words 支援的任何儲存格式。」 「所有支援的儲存格式列表，請參閱 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列舉。」

## 儲存到檔案 {#save-a-document-to-a-file}

「只需透過一個檔案名稱使用 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 這個方法。 Aspose.Words 會從你指定的檔案擴展名來決定儲存格式。」

「以下範例示範如何在檔案中載入與儲存文書：」

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc) 下載此範例的範本檔案。

{{% /alert %}}

## 「儲存到流 {#save-a-document-to-a-stream}」

將流物件傳給 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 方法。 「在儲存到流時，必須明顯指定儲存格式。」

以下範例示出了如何將文件載入及儲存到串流：

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save-to-stream.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載此範例的範本檔案。」

{{% /alert %}}

## 傳送文件到客戶端瀏覽器「 {#sending-a-document-to-a-client-browser}」

在傳送一個檔案到客戶端瀏覽器時，請使用一個特別的超載來傳入四個參數：檔案名稱、儲存格式、儲存類型，及一個 ASP.NET HttpResponse 物件。 「該文件會如何呈現給使用者」由 [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) 列舉表示，決定了送交到瀏覽器的文件會提供一個直接在瀏覽器中打開或在與檔案拡張名相關聯的應用程式中打開選項。

「接下來的程式碼範例示範了如何從 ASP.NET 程式碼傳送文件到客戶端瀏覽器。」

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載範例的範本檔案。

{{% /alert %}}

在使用 .NET Client Profile DLL 時，此方法的 `Save` 過載是不可用的。 「這個 DLL 位於 **net3.5_ClientProfile** 資料夾中。」 ".NET Client Profile 排除類別 כגון **System.Web**, 因此，**HttpResponse** 不可用。" 「這是設計本意。」

「這可能 manifeste 出錯誤：」

**「方法"Save"的負載數為4個參數。」**

「若您需要在 Aspose.Words 應用程式中使用 ASP.NET，推薦使用有正確過載的 .NET 2.0 DLL，如本文所述。」

## 「儲存到 PCL {#save-a-document-to-pcl}」

「Aspose.Words支援將文件儲存成PCL (Printer Command Language)。 「Aspose.Words可以將文件儲存成PCL 6 (PCL 6 Enhanced 或 PCL XL) 格式。」 「`PclSaveOptions`」類別可用於在儲存文件到 PCL 格式時指定額外的選項。

以下範例示範了如何以選項儲存文件到PCL：

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "rasterize-transformed-elements.cs" >}}

## 見也

「關於一 ASP.NET 個 [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) 的資訊」
