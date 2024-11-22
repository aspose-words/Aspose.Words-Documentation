---
title: C#中的欄位概覽
second_title: Aspose.Words for .NET
articleTitle: 欄位概述
linktitle: 欄位概述
description: "欄位功能在細節中，欄位代碼和欄位結果解釋在 Aspose.Words 中為 .NET。。"
type: docs
weight: 10
url: /zh-hant/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words 是一個設計用來處理 Microsoft Word 文檔的類別庫，並支援以下欄位：

"- 文檔中所有欄位都在開啟/儲存與轉換過程中保留"
- 能更新大部分欄位

在這篇文章中，我們將更多了解字段結構、在 Aspose.Words 支援的字段以及如何使用這些字段的細節。

## 欄位結構

一個欄位由以下構成：

- 欄位開頭與分隔符節點用於涵蓋構成欄位碼（通常為纯文本）的內容。
- 欄位分隔符與欄位結束封閉了欄位結果。 這可以包含各種不同類型的內容，從文字串到段落再到表格。
- 某些欄位可能會沒有分界符，這意味著整個內容都是欄位代碼。
-該欄位編碼定義了欄位的行為，由欄位識別符和常有其他參數如欄位名稱和開關組成。
- 此欄位結果包含該欄位的最新評估。 這個值儲存在結果欄位中，並且是給使用者顯示的東西。 某些欄位可能沒有任何結果，因此不會在文件中顯示任何東西。 同樣，某些欄位可能尚未更新，因此也沒有欄位結果。

![fields-aspose-words](fields-overview-1.png)

構成場碼的內容，儲存在 [Run](https://reference.aspose.com/words/net/aspose.words/run/) 個節點中，它們介在 [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) 和 [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) 之間。 字段結果儲存在 **FieldSeparator** 和 [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) 節點之間，它可以由各種不同的內容組成。 一般來說，字段結果僅包含由 **Run** 個節點組成的文字，然而有可能 **FieldEnd** 節點位于不同的段落中，因此字段結果包含 [block level nodes](/words/net/logical-levels-of-nodes-in-a-document/) 等如 **Table** 和 **Paragraph** 節點。

這裡是如何透過使用*DocumentExplorer*範例儲存一個欄位於Aspose.Words的方式，這個範例可以在[Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)中找到。

![document-explorer-aspose-words](fields-overview-2.png)

## Aspose.Words Document Object Model (DOM)中的欄位

當文件載入到 Aspose.Words 時，文件的字段會作為一組獨立的元件（節點）被載入到 [Aspose.Words Document Object Model](/words/net/aspose-words-document-object-model/)。 單個欄位會作為一組包含 **FieldStart**、**FieldSeparator** 和 **FieldEnd** 節點的集合載入，以及這些節點之間的內容。 如果一個欄位沒有欄位結果，就不會有 **FieldSeparator** 節點。 這些節點總是 inline (作為 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 或 [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/) 的子節點) 找到。

在 Aspose.Words 中，各 **FieldXXX** 節點皆由 [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/) 導出。 這個類別提供一個屬性，透過 [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) 屬性來檢查指定節點所代表之欄位類型。 例如，**FieldType.FieldMergeField** 代表該文檔內的合併欄位。

{{% alert color="primary" %}}

在 Word 文檔中存在一些特定欄位，不會被匯入 Aspose.Words 中，因為它們被視為 **FieldXXX** 個節點。 例如，`LINK`欄位和`INCLUDEPICTURE`欄位被匯入Aspose.Words中作為[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)物件。 這個物件提供性質以與儲存在這些欄位中的圖像資料進行工作。 要輸入`INCLUDEPICTURE`欄位作為**FieldXXX**節點，必須指定[PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/)選項為**true**。

欄位也進口到 Aspose.Words 作為他們自己的特殊類別。 [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)這個類別代表一個 Word 文檔中的表單欄位，並提供特定於表單欄位的額外方法。

{{% /alert %}}

## 支援的欄位

在當前的 Aspose.Words 版本中支援以下欄位的計算：

- = (公式)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 精確的欄位解析

Aspose.Words 遵循 Microsoft Word 處理欄位的方式，因此正確地處理：

"-嵌套欄位："
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 欄位引數可以是一個嵌套欄位的結果
- 欄位可以在欄位程式碼中嵌套，也可以在欄位結果中嵌套。
"-空格/不空格，引號/不引號，字段中的逃離字符等等："
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
-跨多段落範圍的欄位

### 公式欄位

Aspose.Words 提供對公式引擎的非常嚴肅的實作，並支援：

- 運算與邏輯運算符：
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
"-功能:"
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 書签的参考：
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 數字格式化開關：
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

在運算式中支援以下功能：`ABS`、`AND`、`AVERAGE`、`COUNT`、`DEFINED`、`FALSE`、`IF`、`INT`、`MAX`、`MIN`、`MOD`、`NOT`、`OR`、`PRODUCT`、`ROUND`、`SIGN`、`SUM`、TRUE。

### `IF` 和 `COMPARE` 欄位

您只需提供一些 `IF` 表達式讓 Aspose.Words 可以輕易計算出來，就能讓你瞭解這個功能有多麼強大：

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` 和 `TIME` 欄位

Aspose.Words 支援 Microsoft Word 中所有日期與時間格式化開關，以下是一些例子：

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 欄位

Aspose.Words在您的文件中對字段複雜性沒有任何限制，mail merge支援嵌套字段以及公式字段，`IF`甚至可以透過公式計算合併字段的名字。

有些例子是 Mail Merge 欄位 Aspose.Words 支援的：

- Mail merge 欄位切換：
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
"- 在公式中嵌套的合併字段："
  `IF { `MERGEFIELD ` Value1 } >= { `MERGEFIELD ` Value2 } True False`
- 在運行時計算結合欄位之名稱：
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
"- 條件移轉到資料來源中的下一個記錄："
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 格式切換

一篇文件中的欄位可以有格式設定開關，來說明結 quả的值應該如何格式化。Aspose.Words支援以下格式設定開關：

"- \\\@ – 日期與時間格式化"
"- \\\# – 數字格式化"
- \\\* Caps
"- \\\* FirstCap"
"- \\\* 下方"
"- \\\* Upper"
"- \\\* CHARFORMAT – 根據欄位碼的開頭字符格式化結果"
"-\\\* MERGEFORMAT – 根據舊結果的格式來格式化結果"

### Date 和欄位中的數值格式化

當 Aspose.Words 計算一個欄位結果的時候，它經常需要將一個字串解析成數字或日期值，也需要將它格式化回一個字串。預設 Aspose.Words 在計算欄位值的時候會使用當前的線條文化來進行解析與格式化，以及 Mail Merge 。 還有由 [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) 類別所提供的選項，讓你可以更精確地控制在欄位更新時所用的文化。

"-預設的情況下，[FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/)屬性為[CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/)，以當前的線程文化格式化欄位"
- 此屬性可以設定為 [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) 來使用字段的字段編碼中設置的語言進行格式化

### 以當前 رشته的 فرهنگی格式化

要控制計算域中的文化，只需在邀請計算域之前將 **Thread.CurrentThread.CurrentCulture** 屬性設定為您選擇的文化。

以下示例程式碼展示在更新時，如何改變在格式化欄位時使用的文化：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

透過使用目前的文化來格式化欄位，系統可以在所有欄位更新時，容易且一致地控制如何格式化文件中的所有欄位。

### 以文件中的文化來格式化

另一方面，Microsoft Word根據字段中發現的文本語言來格式化每個字段（具體來說，從字段代碼中運行）。 在某些情況下，在場更新時，這可能是預期的行為，例如如果您有全球化文件，其中包含由許多不同的語言組成的內容，並希望每個欄位都能尊重從文本中使用的當地語言。 Aspose.Words也支持這個功能。

[Document](https://reference.aspose.com/words/net/aspose.words/document/)類別提供一個[FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/)屬性，其中包含可用於控制文件中欄位更新方式的成員。

以下程式碼範例說明了如何指定在欄位更新時用來格式化日期的文化，以及 Mail Merge 是從何選取的：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
