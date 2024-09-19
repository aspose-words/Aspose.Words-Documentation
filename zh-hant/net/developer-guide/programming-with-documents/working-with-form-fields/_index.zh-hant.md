---
title: 在C#中與表單欄位共同工作
second_title: 「 Aspose.Words for .NET」
articleTitle: 「與表單欄位一起工作」
linktitle: 「與表單欄位一起工作」
description: "了解「理解表單欄位」功能，使用C#與表單欄位一起工作。"
type: docs
weight: 380
url: /zh-hant/net/working-with-form-fields/
---

「包含空白欄位（欄位）的文件稱為表單。」 「例如，您可以在 Microsoft Word 中建立一個登錄表單，使用從中使用者可以選擇項目的下拉清單。」 「`Form`」欄位是儲存特定類型資料的欄位，例如姓名或地址。 「Microsoft Word 中的欄位包括文字輸入、組合框和核選方塊。」

您可以在您的專案中使用表單欄位來與使用者「溝通」。 例如，您創建一篇其內容受保護的文件，但僅表單欄位是可編輯的。 「使用者可以在表單欄位中輸入資料，然後提交文件。」 「您的應用程式使用 Aspose.Words 可從表單欄位中取得資料並進行處理。」

透過程式碼將表單欄位插入文件中是簡單的。 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 有插入它们的特殊方法，每個表單欄位類型都有一個。 每個方法都接受一個字串參數，代表表單欄位的名稱。 這個名字可以是一個空字串。 「然而，若您為表單欄位指定名字，則會自動建立具有相同名稱的書籤。」

## 插入表單欄位

「表單欄位」是讓使用者與之互動的詞欄位的特例。 「Microsoft Word中的欄位包括文字框、組合框和選項框。」

「**DocumentBuilder** 提供特別方法，讓每個類型的表單欄位插入到文件中： [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) 、 [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) 和 [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/)。」 請注意，如果你為表單欄位指定一個名稱，則會自動建立一個相同名稱的書籤。

以下範例說明了如何將combobox輸入欄位插入到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### 插入文字輸入

「利用 **InsertTextInput** 方法將文字方塊插入文件中。」

以下程式碼範例示範如何將文字輸入式欄位插入到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### 「插入核取框」

呼叫 **InsertCheckBox** 在文件中插入選項方塊。

以下範例說明如何將一個勾選框插入到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### 插入 combo box

「Call **InsertComboBox** 在文件中插入一個選單。」

接下來的程式碼範例示範了如何將 Combobox 表單欄位插入到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## 「取得表單欄位」

「某個表單欄位集合是由 [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) 類別所代表，可以使用 [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) 屬性來取得。」 這意味著你可以取得任何包含在文書節點中的表單欄位，包括該文件本身。

{{% alert color="primary" %}}

您可以從以下範例中下載樣本檔案："" [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx) ""。

{{% /alert %}}

接下來範例會說明如何取得一個表單欄位集合：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

你可以透過索引或名稱取得特定的表單欄位。

以下範例顯示如何存取表單欄位：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

「**FormField**」屬性讓你可以與表單字段名稱、類型及結果進行操作。

以下範例顯示如何使用欄位名稱、類型和結果：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## 格式化表單欄位

The [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) property of [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)讓你可以在**FormField**中，包括欄位值，使用字型格式。

以下範例示範了如何將字體格式應用到 **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
