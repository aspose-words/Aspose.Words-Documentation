---
title: C# 中與文件屬性工作
second_title: Aspose.Words for .NET
articleTitle: 在文件屬性中工作
linktitle: 在文件屬性中工作
description: "Aspose.Words for .NET 透過 C# 在內建或自訂的文件屬性中儲存一些關於您的文件的有用資訊，例如 API 和版本號碼或授權 Date。"
type: docs
weight: 10
url: /zh-hant/net/work-with-document-properties/
---

文件屬性可以儲存您的文書中一些有用的資訊。 這些特性可以分成兩組。

*包含值如文檔名稱、作者名稱、文檔統計資料等之系統或內建。
"*用戶定義或自訂，以名稱值對的形式提供，用戶可以定義名稱和值。"

了解 API 和版本號直接寫入輸出文件的資訊很有用。 例如，當將文件轉換為 PDF 時，Aspose.Words 會將應用程式欄位填寫為Aspose.Words，並將PDF 製造商欄位填寫為Aspose.Words for .NET YY.M.N，其中 *YY.M.N* 是用於轉化的 Aspose.Words 版本。 詳細資料請參閱 [Generator or Producer Name Included in Output Documents](/words/net/generator-or-producer-name-included-in-output-documents/)。

{{% alert color="primary" %}}

請注意，您必須 **無法直接** Aspose.Words 以更改或從輸出文件中刪除此資訊。

{{% /alert %}}

## 檢視檔案屬性

若要存取 Aspose.Words 中文件的屬性，請使用：

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) 來取得內建屬性。

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) 以取得自訂屬性。

**BuiltInDocumentProperties** 和 **CustomDocumentProperties** 是 [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) 物件的集合。 這些物件可透過索引屬性名稱或索引取得。

**BuiltInDocumentProperties** 透過輸入的屬性集來提供對文書屬性的存取。**CustomDocumentProperties** 讓您可以在文書中添加或移除文書屬性。

[DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/)類別讓您取得文件屬性的名稱、值和類型。 [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/)會傳回一個物件，但有一組方法可讓您取得屬性值並將其轉換為特定類型。 當你了解該屬性的類型後，您可以使用 **DocumentProperty.ToXXX** 方法中的某一個，例如 **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) 和 **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/) 來取得相應的值。

接下來的程式碼範例顯示如何列舉資料夾中的所有預設屬性和自訂屬性。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) 下載此範例的範本檔案。

{{% /alert %}}

在 Microsoft Word 中，您可以使用檔案→屬性選單來存取檔案屬性。

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-1.png" style="width:400px"/>

## 新增或刪除文件屬性

您無法透過 Aspose.Words 來新增或刪除內建文件屬性。 你只能改變或更新他們的值。

若要以 Aspose.Words 加入自訂的文件屬性，請使用 [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) 方法，傳入新屬性的名稱和相應類型之值。 此方法會返回剛剛建立的 **DocumentProperty** 物件。

若要移除自訂屬性，請使用 [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) 方法並傳遞您想要移除的屬性名稱，或使用 [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) 方法透過索引來移除該屬性。 您也可以透過 [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) 方法移除所有屬性。

以下範例程式碼會檢查文件中是否存在具有指定名稱的自訂屬性，並新增幾個額外的自訂文件屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) 下載此範例的範本檔案。

{{% /alert %}}

接下來的程式碼範例說明了如何移除自訂的文件屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## 更新內建文件屬性

Aspose.Words 不會自動更新文件屬性，就像 Microsoft Word 用一些屬性的方式一樣，但提供一種方法來更新某些內置文件的統計屬性。 呼叫 [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) 方法重新計算並更新以下屬性：

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## 建立新的與內容連結的自訂屬性

Aspose.Words 提供 [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) 方法來建立新的自訂物件属性，該屬性與內容連結。 此屬性會傳回剛建立的屬性物件或無效的 [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) 時返回 null。

接下來的程式碼範例說明如何設定連結到自訂屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## 取得文書變數

您可以透過 [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) 屬性取得文件變數的集合。 變數名稱和值是字串。

以下範例顯示如何枚舉文檔變數。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) 下載本例的範本檔案。

{{% /alert %}}

## 從文件中移除個人資料

如果你想與其他人分享 Word 文檔，你可能想把個人資料（如作者名稱和公司）移除。 若要如此操作，請使用 [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) 屬性設定旗標，指示在儲存文件時 Microsoft Word 會從評論、修訂和文件屬性中移除所有使用者資訊。

以下範例顯示如何移除個人資料：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

設定此選項在處理 Aspose.Words 文檔時並非實際移除個人資料，僅影響 Microsoft Word 動作。

{{% /alert %}}
