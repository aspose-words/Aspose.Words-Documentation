---
title: 更新欄位 C#
second_title: Aspose.Words for .NET
articleTitle: 更新欄位
linktitle: 更新欄位
description: "了解如何在C#中更新欄位。 以程式方式更新欄位或使用 .NET API 的自動欄位更新。"
type: docs
weight: 30
url: /zh-hant/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

典型的，在 Microsoft Word 中插入的欄位已經包含最新的值。 例如，如果欄位是公式或頁碼，則會包含當前版本文件的正確計算值。 但是，如果您有一個應用程式，它會產生或修改包含像合併兩份文件或填入資料等欄位的一份文件，那麼在文書有用之前，所有欄位都必須更新。

## 如何更新欄位

當一份文件載入時，Aspose.Words 模擬 Microsoft Word 的動作，而自動更新欄位的選項已關。 這個行為可以概括如下：

"-當你打開/儲存一個文件，欄位保持不變"
"- 您可以明顯更新文件中的所有欄位，例如當您需要時，重建 `TOC`。"
當您列印/轉載為 PDF 或 XPS 時，標題/腳部中的頁碼相關欄位會更新
- 当你執行 mail merge 時，所有欄位會自動更新

### 以程式方式更新欄位

若要更新整個文件中的欄位，請簡單地呼叫 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) 方法。 要更新部分文件中包含的欄位，請取得一個 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 物件並呼叫 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) 方法。 在 Aspose.Words 中，您可以透過 [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) 屬性使用 **Range** 在文件樹中獲取任何節點，例如 [Section](https://reference.aspose.com/words/net/aspose.words/section/)、[HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 和 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)。 您可透過調用 [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) 方法更新單個欄位的結果。

### 在渲染期間自動更新頁面相關欄位

當您執行將文件轉換為固定頁面格式（例如PDF或 XPS）的操作時，然後 Aspose.Words 會自動更新文件頭/尾中的 `PAGE` 和 `PAGEREF` 相關字段。 此動作模擬在列印文件時 Microsoft Word 的動作。

如果您要更新文件中其他所有欄位，那您必須在渲染該文件之前先呼叫 [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)。

以下範例示範了如何在 렌더링 문서之前更新所有欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載此範例的樣本檔案。

{{% /alert %}}

### 自動更新欄位期間 Mail Merge

當你執行一個 mail merge，文件中的所有欄位都會自動更新。 這是因為mail merge是一個場更新案例。 該程式遇到一個 mail merge 欄位，並需要更新其結果，這涉及到從資料源取得值並將其插入至該欄位中。 當然，逻辑更複雜，例如，當文件/区域mail merge的末尾被达到而还有需要合并的数据时，这个区域需要被复制，新的字段集被更新。

## 更新有汙汚屬性的欄位

w:dirty是一個欄位層次的屬性，當該文件打開時，僅會更新您指定的欄位。 它會告訴微軟字元，下次打開這個文件時只更新這個欄位。 您可以使用 [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) 屬性來指定是否要更新具有 dirty 屬性的欄位。 當 **UpdateDirtyFields** 的值設定為 *true* 時，在文件載入時所有具有 *true* 值的 [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) 或 [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) 屬性的欄位會更新。

以下代碼示例展示了如何更新具有dirty屬性的字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## 在儲存之前更新LastSavedTime屬性。

您可以在儲存文件時，利用 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) 屬性來更新對應的內建文件屬性 [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/)。

下面的程式碼範例示範如何更新此屬性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
