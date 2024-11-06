---
title: 在C#中使用標頭與尾部
second_title: Aspose.Words for .NET
articleTitle: 與標題和页脚一起工作
linktitle: 與標題和页脚一起工作
description: "如何透過C#操作標頭和腳列。 建立標頭和腳線C#. 移除標題或页腳C#。"
type: docs
weight: 150
url: /zh-hant/net/working-with-headers-and-footers/
---

Aspose.Words 讓使用者可以在文件中處理標題和页脚。 標頭是放在頁面頂部的文字，尾腳是放到頁面的底部的文字。 這些區域通常用於插入在文件中所有或某些頁面都應該重複的資訊，例如頁碼、建立日期、公司資訊等。

## 透過 DocumentBuilder 创建标头或页脚

如果您想要以程式方式加上文件頭或腳列，最簡單的方法是使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別來完成它。

接下來的程式碼範例示範了如何在文件中加入標頭和尾欄：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## 指定標頭或页脚選項

當你在文件中加入標題或页脚時，你可以設定一些進階的屬性。Aspose.Words 提供給用戶 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 和 [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) 類別，以及 [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) 列舉，這讓使用者可以在標題和页腳自訂時有更多的控制權。

### 指定標題或页脚類型

您可以為一篇文章指定三個不同的標題類型和三個不同的腳注類型：
1. 第一頁的標題和/或页脚
2. 每偶數頁的標題和/或页脚
3。 奇數頁的標頭和/或页脚

接下來的程式碼範例說明如何在奇數頁面添加標頭：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### 指定是否要為第一頁顯示不同的標頭或页脚

如上所述，您也可以為第一頁設定不同的標頭或尾列。 要做到這一點，你需要將旗標 [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) 設定為 `true`，然後指定 **HeaderFirst** 或 **FooterFirst** 值。

接下來的程式碼範例示範如何只為第一頁設定標頭：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### 指定是否要為奇數或偶數頁顯示不同的標題或尾列

 接下來，你希望為文件中的奇數和偶數頁設定不同的標題或页脚。 要做到這一點，你必須將旗標[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/)設定為`true`，然後指定值**HeaderPrimary**和**HeaderEven**、或**FooterPrimary**和**FooterEven**。

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### 將絕對定位圖像插入標頭中

若要將圖片放置在標題或页脚中，請使用 **HeaderPrimary** 標題類型或 **FooterPrimary** 页脚類型以及 [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 方法。

以下程式碼範例說明如何將圖像加入標頭：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### 設定標題或腳注文字的書體與段落屬性

使用 Aspose.Words，您可以設定字體與段落屬性，使用 **HeaderPrimary** 標題或 **FooterPrimary** 頁尾類型，以及處理文件正文中使用的字體與段落的相關方法與屬性。

接下來的程式碼範例示範了如何將標頭中的文字設定為 Arial、粗體、字體大小 14，且居中間對齊的方式：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### 在頭版或尾版中插入頁碼

如果必要，您可以在頁頭或頁尾加上頁碼。 要做到這一點，請使用『**HeaderPrimary**`』標題類型或『**FooterPrimary**`』腳注類型和『[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/)`方法來增加所需的欄位。

以下範例示範如何在頁腳右邊加入分頁號碼：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### 使用前一節所定義的標頭或尾部

如果你需要從上一個分節複製標題或頁腳，也可以這樣做。

接下來的程式碼範例示範如何從前一節中複製標題或页腳：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### 確保在使用不同頁面方向和頁面大小時，標頭或尾部出現。

Aspose.Words 讓您在使用不同的orientations和頁面尺寸時，可以設定頭欄或尾欄的外觀。

以下示例顯示如何做到這點：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## 如何移除僅標頭或僅腳線

文件中的每個節段可以有最多三個標題和最多三個页腳（用於第一頁、偶數頁和奇數頁）。 如果你想從文件中移除此所有標題或所有腳注，你需要迴圈通過所有部分並移除每個對應的標題節點或腳注節點。

以下範例代碼示範了如何從所有節點中移除腳底線，但保留標題。 您透過類似的方法可以移除頭條：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx) 下載此範例的樣本檔案。

{{% /alert %}}