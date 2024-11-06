---
title: 在 C# 中以只讀模式打開文書。
second_title:  Aspose.Words for .NET
articleTitle: 以只讀模式打開文件
linktitle: 以只讀模式打開文件
description: "讓你的檔案僅供讀取，以便可以複製或閱讀其內容，但無法修改它，C#。"
type: docs
weight: 10
url: /zh-hant/net/open-a-document-read-only/
---

有時，你可能會有一份需要審查的文件，但是你不想讓審查人員隨意修改你的內容。透過 Aspose.Words ，您可以設定您的文件權限為只讀，這樣就可以讓内容被複製或閱讀，但不能被修改。 這將防止您的檔案中內容被移除或加入。

{{% alert color="primary" %}}

將只讀選項套用到您的文件中，並不會阻止某人建立該文件的新副本並使用另一個名稱儲存。

{{% /alert %}}

這篇文章說明如何讓文件僅供讀取。

## 將文書設定為只讀

 Aspose.Words有指定文件寫入保護設定之公有類別 [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/)。 您不能直接建立這個類別的物件。

寫入保護顯示作者是否已推薦以只讀方式打開文件，以及/或需要密碼才能修改該文件。

Aspose.Words讓你能透過使用[ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/)屬性和[SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/)方法來限制編輯。

{{% alert color="primary" %}}

在 Microsoft Word 中，您可以透過以下方式以類似的方式創建只讀檔案：

* "永遠開啟只讀" (檔案→資訊→保護文件)
:* 密碼修改" (儲存為 → 工具 → 一般選項 → 密碼)

{{% /alert %}}

{{% alert color="primary" %}}

使用者也可以透過將 [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) 選取為 **ReadOnly**，來限制編輯文件；但這是另外一個能提供更多進階保護功能的特徵。 這樣的函數在 Microsoft Word 中有，它是在 Aspose.Words 實作的。

**ProtectionType**將詳細描述於下列文章之一：限制文件編輯。

{{% /alert %}}

您的 **ReadOnlyRecommended** 屬性是受密碼保護的，因此如果您在套用 **ReadOnlyRecommended** 屬性之前未設定密碼，那麼其他使用者可以像沒有保護一樣打開這份文件。 您透過 **SetPassword** 方法存取文件保護設定並設定寫入權限密碼。

{{% alert color="primary" %}}

注意，正在設置的密碼只是文件中的一個性質，如果存取了文件的性質，它就可以被移除。 因此，這樣的密碼並不是文件安全的保證。

{{% /alert %}}

如果您需要檢查一篇文件是否有限制編輯的寫入保護密碼，您可以利用 [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) 屬性。

以下範例示範如何使文件只讀：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## 移除只讀限制

如果您不想讓使用者以只讀模式打開您的文件，您可以簡單設定 **ReadOnlyRecommened** 屬性為 *false* 或選擇 **ProtectionType** 為 **NoProtection**。

以下範例示範了如何從文件中移除只讀存取權：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
