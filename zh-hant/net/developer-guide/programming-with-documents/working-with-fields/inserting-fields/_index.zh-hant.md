---
title: 「C# 中的 Insert Fields」
second_title: Aspose.Words for .NET
articleTitle: 插入欄位
linktitle: 插入欄位
description: "透過 C# 將欄位插入到文件中 – 學習不同方式與程式碼範例。"
type: docs
weight: 20
url: /zh-hant/net/inserting-fields/
---

「插入字段到文件的方式有幾種不同的方法：」

「*使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)」
* 使用 [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* 使用 [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)

「在本文，我們將更詳細地看每種方式並分析如何透過這些選項插入特定欄位。」

## 透過 DocumentBuilder 在文件中插入欄位

「在 Aspose.Words 中，[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 方法被用來插入新的欄位到文件中。」 「第一個參數接受要插入的欄位完整的欄位程式碼。」 「第二個參數是可選的，可讓您手動設定該欄位結果。」 如果沒有提供這個值，該欄位會自動更新。 「您可以將 null 或空值傳給此參數，來插入包含空欄位值的欄位。」 如果對特定場碼語法不確定，先在 Microsoft Word 中建立該欄位再切換來查看其場碼。

{{% alert color="primary" %}}

「如果你的欄位程式碼有包含空格的參數，它必須被引號括住。」 「否則，在 Microsoft Word 和 Aspose.Words 中的欄位可能不會像預期那樣運作，因為兩個參數都將它視為被截斷的。」

{{% /alert %}}

接下來的程式碼範例說明如何透過 **DocumentBuilder** 在文件中插入合併欄位。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

「相同的技術也用於在其他字段內嵌套的欄位。

「以下範例示範了如何透過 **DocumentBuilder** 來插入嵌套在另一個欄位內的欄位。」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### 在欄位層級指定當地設定

語言識別符是標準國際數字縮寫，用於某個國家或地理區域的語言。 「使用 Aspose.Words，您可以在欄位層級指定 Lokale 的 [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) 屬性，以取得或設定欄位的 Lokale ID。」

「以下範例顯示如何使用此選項：」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### 「插入未類型化/空字段」

「若你想像 Microsoft Word 一樣插入沒標記/空的欄位 ({})，你可以使用 [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 方法並給它 [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) 參數。」 要在 Word 文檔中插入欄位，你可以按「Ctrl + F9」鍵組合。

接下來的程式碼範例示範了如何在文件中插入一個空欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## 「使用 FieldBuilder 在文件中插入欄位」
在 Aspose.Words 中插入字段的替代方法是 [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) 类。 「它提供流暢的介面，讓使用者可以指定欄位開關和引數值，作為文字、節點或甚至是嵌套欄位。」

以下範例顯示如何透過 **FieldBuilder** 在文件中插入欄位。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## 透過 DOM 插入欄位

您也可以透過 [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/) 插入各種不同類型的欄位。 「在這段中，我們將看看幾個例子。」

### 透過 DOM 將 Merge Field 插入文件中。

「Word 文檔中的 `MERGEFIELD` 欄位可以用 [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) 類別來表示。」 您可以用 **FieldMergeField** 類別來執行以下動作：

「- 指定合并欄位的名稱」
- 指定合併欄位之格式
"- 指定合併欄位中，從欄位分隔符到欄位結尾之間的文字"
"- 指定在字段不為空時要插入的文本"
"- 如果該欄位不空，請指定在合併欄位之前插入的文字"

{{% alert color="primary" %}}

更多細節請見 [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) 類別 API 。

{{% /alert %}}

「接下來的程式碼範例說明如何使用『 `MERGE` 』欄位與『 DOM 』標記來在文件中的段落中加入欄位：」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### 「將 Mail Merge 欄位插入至 `ADDRESSBLOCK` 文檔中，使用 DOM」

「`ADDRESSBLOCK`」這個欄位可用於在 Word 文檔中插入「mail merge」地址塊。「Word 文檔中的 `ADDRESSBLOCK`」欄位可由 [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) 類別表示。 「你可以使用 **FieldAddressBlock** 類別來執行以下動作：」

"- 指定是否要在欄位中包含該國/地區的名稱"
- 指定是否將地址格式化為收件人的國家/地區所定義的POST*CODE (萬國郵政聯盟2006年)
"-指定被排除的國家/地區名稱"
「-指定名稱與地址格式」
"- 指定用於格式化地址的語言ID"

{{% alert color="primary" %}}

更多細節請參閱 [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) 類別 API。

{{% /alert %}}

接下來的程式碼示例說明如何使用 DOM 在文件中的段落中新增 Mail Merge 欄位： `ADDRESSBLOCK`。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### 「在沒有使用DocumentBuilder的情況下，將`ADVANCE`欄位插入到一個文件中。」

第 `ADVANCE` 欄用於將線內的後續文字往左、右、上或下偏移。 「Word 文檔中的 `ADVANCE` 欄位可以由 [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) 類別來代表。」 「您可以利用 **FieldAdvance** 類別來執行以下動作：」

「- 指定在欄位後面的文字從頁面頂端移動的點數」
- 指定在欄位後面的文字從欄位、框架或文字方塊的左邊移動多少點數水平位置
"- 指定文字在欄位後的左、右、上或下的移動點數"

{{% alert color="primary" %}}

更多細節請參閱 [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) 類別 API。

{{% /alert %}}

接下來的程式碼範例示範了如何將 `ADVANCE` 欄位透過 DOM 加入到文件中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### 「在不使用DocumentBuilder的情況下，將 `ASK` 欄位插入到文件中」

「`ASK`」這個欄位是用來提示使用者在 Word 文檔中輸入要分配給「書籤」的文字。Word 文檔中的「`ASK`」欄位可以用「[FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/)」類別來表示。 「您可以使用 **FieldAsk** 類別來執行以下動作：」

「- 指定書籤的名稱」
- 指定預設用戶回應 (在提示視窗中包含的初始值)
"- 指定用戶回應是否應該在每個 mail merge 操作中接收一次"
「- 指定提示文字（即提示視窗的標題）」

{{% alert color="primary" %}}

「有關更多細節，請見 [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) 類別的 API。」

{{% /alert %}}

以下範例程式碼示範如何在文件中透過 DOM 來將 `ASK` 欄位加入段落中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### 「將 `AUTHOR` 欄位插入到一個文档中，而不使用 DocumentBuilder」

「 `AUTHOR`」字段用于从 '`Document`' 属性中指定文档的作者。 「Word 文件中的 `AUTHOR` 欄位可以由 [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) 類別表示。」 「你可以使用 **FieldAuthor** 類別來執行以下操作：」

- 指定文件作者名稱

{{% alert color="primary" %}}

更多細節，見 [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) 類別 API。

{{% /alert %}}

接下來是一個示例程式碼，說明如何將 `AUTHOR` 欄位加入 DOM 到文件中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### 「在不使用DocumentBuilder的情況下，將`INCLUDETEXT`欄位插入到一個Document中」

「`INCLUDETEXT`」字段插入该字段代码中指定的文件中包含的文本和图形。 您可以插入整個文件或由書籤所指向的文件中的一部分。 「Word 文檔中的此欄位由 INCLUDETEXT 表示。」 「您可以使用 [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) 類別來執行以下操作：」

"- 指定內含文件的書籤名稱"
"- 指定文件的位置"

{{% alert color="primary" %}}

更多細節請見 [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) 類別 API。

{{% /alert %}}

「接下來的程式碼範例展示了如何在文件中透過 DOM 將 `INCLUDETEXT` 欄位加入段落中。」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### 「在沒有使用 DocumentBuilder 的情況下，將 `TOA` 欄位插入到一個文件中。」

The `TOA` (*Table of Authorities*) 欄位會自動建立並插入目錄表。 「`TOA`」欄位會收集由「`TA` (*資料表引用欄位*)」欄位標記的項目。「Microsoft」Excel 會插入「`TOA`」欄位，方法是按下「**標題目錄**」組中的「*插入資料表引用*」按鈕，「**References**」標籤。 在您的文件中查看" `TOA` "欄位時，語法看起來像這樣：

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

更多細節，請參閱 [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) 類 API。

{{% /alert %}}

接下來的程式碼範例示範了如何使用 `TOA` 欄位與 DOM 在文件中的段落中新增欄位。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
