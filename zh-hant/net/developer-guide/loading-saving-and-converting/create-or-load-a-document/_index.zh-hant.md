---
title: 在C#中建立或載入文件。
second_title: Aspose.Words for .NET
articleTitle: 建立或加載文件
linktitle: 建立或加載文件
type: docs
url: /zh-hant/net/create-or-load-a-document/
description: "透過 C# 建立一個空白的文件或從檔案或串流中載入它。"
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

幾乎任何你想要使用 Aspose.Words 完成的工作都涉及到加載一份文件。 The `Document` class表示載入記憶體中的文件。 這個文件有多個超載的构造函数，讓您可以創造一個空白的文件或從檔案或串流中載入它。 這份文件可以用 Aspose.Words 支援的任何載入格式載入。 支援的所有載入格式清單，請參閱 [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 枚舉。

## 創建新文件 {#create-a-new-document}

我們將以無參數的形式呼叫 [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) 建構函式來建立新的空白文件。 如果你想以程式的方式產生文書，最簡單的方法就是使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別來增加文書內容。

以下範例示範如何透過檔案建構器建立文件：

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "create-new-document.cs" >}}

{{% alert color="primary" %}}

注意預設值：

"- 一份空白文件包含一個預設參數的段落、一個空白段落、一些文檔風格。" 這份文件與在 Microsoft Word 中建立新文件的結果是一樣的。
- 文檔紙尺寸是 [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter** 。

{{% /alert %}}

## 請載入一篇文件 {#load-a-document}

要載入已有的文件，若以任何一種 [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 格式來處理它，請把檔案名稱或串流傳給 File 建構函式。 載入的文件的格式會由其拡張名自動決定。

### 從檔案載入 {#load-from-a-file}

以字串的方式傳遞檔名給 Document 建構函式，以從檔案中開啟現有的文件。

接下來的程式碼範例示示了如何從檔案中打開一份文件：

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-document.cs" >}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載這個範例的範本檔。

### 從流載入 {#load-from-a-stream}

若要從資料流中打開一份文件，只需將包含該份文件的資料傳流物件傳入至『Document』建構函式。

以下範例說明如何從串流中打開文件：

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-from-stream.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載這個範例的範本檔案。

{{% /alert %}}
