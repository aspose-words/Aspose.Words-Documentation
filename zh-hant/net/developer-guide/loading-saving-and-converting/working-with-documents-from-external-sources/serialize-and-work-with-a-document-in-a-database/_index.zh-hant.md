---
title: 將文件序列化到資料庫
second_title: 「Aspose.Words for .NET」
articleTitle: 「序列化與資料庫中的文件工作」
linktitle: 「序列化與資料庫中的文件工作」
description: "把一份文件轉換成字節陣列，以便在使用C#時可以在資料庫中處理該份文件。 「您可以儲存並從資料庫中擷取一份文件。」"
type: docs
weight: 10
url: /zh-hant/net/serialize-and-work-with-a-document-in-a-database/
---

「當處理文件時，你可能需要完成的一些任務之一是儲存和檢索 **Document** 個物件到資料庫中或從資料庫中。」 例如，如果你要實作任何類型的內容管理系統，這會是必要的。 所有以前版本的文件必須存儲在數據庫系統中。 「可儲存在資料庫中的文件的能力在你的應用程式提供網站服務時也極為有用。」

Aspose.Words提供將文件轉換為字節陣列的能力，以便在數據庫中進一步處理該文件。

## 將文件轉換為字節陣列

「若要將文件儲存在資料庫或為透過網路傳輸文件作準備，通常必須先將文件序列化，再得到字節陣列。」

以 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 物件在 Aspose.Words 序列化：

1. 使用 **MemoryStream** 的 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 方法重載儲存至 **Document** 類別。
1. 「呼叫 **ToArray** 方法，它會返回以字節形式表示的文件的字節數列。」

「上述步驟可以被反轉來將字節加載回 **Document** 物件中。」

{{% alert color="primary" %}}

「選定的保存格式很重要，確保在存檔與重新載入 **Document** 物件時能保留最高忠實度。」 「為此，建議使用一系列 OOXML 檔案格式。」

{{% /alert %}}

以下範例示範了如何將 **Document** 物件序列化為字節陣列，以及如何反序列化字節陣列來取得 **Document** 物件：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "docx-to-byte.cs" >}}

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載本範例的範本檔案。」

## 在資料庫中儲存、讀取與刪除一筆資料

「本節示範如何將檔案儲存在資料庫中，然後再將它載回 `Document` 物件，以便與它進行工作。」 為了簡化，該檔案名稱是用來從資料庫中儲存和取得文件的鍵。 資料庫包含兩欄。 第一欄「檔案名稱」儲存在字串中，用於辨識文件。 「第二欄『FileContent』是以 `BLOB` 物件儲存的，該物件儲存了以字節形式儲存的文件物件。」

以下代碼示範了如何建立連接到資料庫並執行命令：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "open-database-connection.cs" >}}

{{% alert color="primary" %}}

「在此範例中，我們使用 Microsoft Access .mdb 資料庫來儲存 Aspose.Words 文檔。」

{{% /alert %}}

接下來這段程式碼示範了如何將資料儲存到資料庫中，然後再讀取相同的資料，最後從資料庫中刪除包含該資料的記錄：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "open-retrieve-and-delete.cs" >}}

### 將文件儲存到資料庫

「若要將文件儲存在資料庫中，請按照本文開頭所述，將該文件轉換為字節陣列。」 「然後，將這個字節陣列儲存在資料庫欄位中。」

接下來的程式碼範例示範了如何將文件儲存到指定的數據庫：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "store-to-database.cs" >}}

指定 commandString，這是一個 SQL 運算式，完成所有工作。

- 要儲存一檔案進資料庫，使用「INSERT INTO」命令，並指定一個表以及兩個記錄欄位 - FileName 和 FileContent 的值。 為了避免其他參數，該檔案名稱從 **Document** 物件本身取得。 「`FileContent`」欄位值從包含儲存文件二進位表示的記憶體流中分配字節。
「- 剩餘的程式碼會執行儲存 Aspose.Words 文檔到資料庫的命令。」

### 從資料庫中檢索一份文件。

從資料庫中取得資料時，請選擇包含資料陣列的記錄。 「接著將此記錄中的字節陣列載入 **MemoryStream**，並建立一個 **Document**物件，以從 **MemoryStream** 加載文件。」

以下程式碼示例說明如何使用檔案名稱作為鍵來從指定資料庫中取得並傳回一份文件：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "read-from-database.cs" >}}

{{% alert color="primary" %}}

SQL指令「SELECT * FROM」用來取得基於檔案名稱的適當記錄。

{{% /alert %}}

### 從資料庫中刪除一篇文件

若要從資料庫中刪除一個檔案，請使用相應的 SQL 指令而不需對 **Document** 物件進行任何操作。

以下範例示範了如何透過檔案名稱從資料庫中移除此紀錄：

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "delete-from-database.cs" >}}
