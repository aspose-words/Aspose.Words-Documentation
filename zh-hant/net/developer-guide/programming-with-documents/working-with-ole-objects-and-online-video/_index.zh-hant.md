---
title: 在 C# 中使用 OLE 物件和線上影片
second_title:  Aspose.Words for .NET
articleTitle: 與 OLE 物件和線上影片一起工作
linktitle: 與 OLE 物件和線上影片一起工作
description: "透過 C# 在文件中建立並修改 OLE 嵌入。"
type: docs
weight: 360
url: /zh-hant/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE（物件聯結與嵌入）是一種技術，讓使用者可以作業於由第三方應用程式所建立的或編輯的物件所包含的文件。 也就是說，ole允許編輯應用程式將這些物件輸出到另一個編輯應用程式並再輸入它們，並附帶額外的內容。

在本文中，我們將討論如何在文件中插入 OLE 物件並設定其屬性以及如何在文檔中插入線上影片。

## 插入 OLE 物件

如果你想要 OLE 物件，請呼叫 [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) 方法並傳入 **ProgId** 以及其它參數。

接下來的程式碼範例示範如何將 OLE 物件插入到文書中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### 在插入 OLE 物件時，請設定檔案名稱與副檔名。

OLE 封包是如果 OLE 處理器未知時，儲存內嵌物件的過時且未記錄的方法。

早期 Windows 版本，如 Windows 3.1、95 和 98，都有 Packager.exe 应用程序，可以将任何类型的数据嵌入到文档中。 這個應用程式目前已被從 Windows 中排除，但 Microsoft Word 和其他應用程式仍使用它來嵌入資料，若缺少或不知道 OLE 處理器。  `OlePackage`類別允許使用者存取 OLE 封包屬性。

以下範例示範了如何設定 OLE 封包的檔案名稱、 副檔名和顯示名稱：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### 取得 OLE 物件原始資料

使用者可以使用 `OleFormat` 類別的各種屬性和方法來存取 OLE 物件資料。 例如，可以取得 `OLE` 物件的原始資料或所連結的 OLE 物件來源檔案的路徑與名稱。

以下範例以 [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) 方法示範如何取得 OLE 物件原始資料：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### 將 OLE 物件作為圖標插入

OLE 物件也可以插入在文件中當圖像使用。

以下範例示範如何將 OLE 物件插入為圖標。 為了此目的，[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別公開了 [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) 方法：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

以下程式碼示例說明如何從資料串流中插入嵌入式 OLE 物件作為圖標到文件中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

圖標最大尺寸必須為 32 x 32 以正確顯示。

{{% /alert %}}

## 插入線上影片

網絡影片可以從*插入>網路影片*分頁插入Word文件。 您可以在目前的位置中插入在線視頻，方法是呼叫 [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) 方法。

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)類別引入了此方法的四種重載。 第一個可以與最受歡迎的視頻資源一起工作，並使用視頻的 `URL` 作為參數。 例如，第一過載支援從 [YouTube](https://www.youtube.com/) 和 [Vimeo](https://vimeo.com/) 資源中簡單插入線上影片。

以下範例展示如何在文件中插入來自*Vimeo*的線上影片。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

第二個過載會與其他所有視頻資源一起工作，並採用嵌入的 HTML 程式碼作為參數。 嵌入影片的 HTML 程式碼會因提供者而有所不同，因此請聯絡有關提供者以獲取詳情。

{{% alert color="primary" %}}

請注意，該文件將自動優化為 2013 年 Microsoft Word 以顯示影片。

{{% /alert %}}

接下來的程式碼範例示範了如何透過使用此 HTML 程式碼將線上影片插入到文件中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
