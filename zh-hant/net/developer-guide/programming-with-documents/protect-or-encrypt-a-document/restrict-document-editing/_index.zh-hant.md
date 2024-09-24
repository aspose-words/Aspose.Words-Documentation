---
title: 在C#中限制文書編輯
second_title: 「Aspose.Words for .NET」
articleTitle: 限制文書編輯
linktitle: 限制文書編輯
description: "透過使用C#設定限制類型來限制編輯文件。 「您也可以移除保護並設定不受限的可編輯區域。」"
type: docs
weight: 30
url: /zh-hant/net/restrict-document-editing/
---

「有時你可能需要限制編輯文件的能力，只允許某些動作。」 這可以有效地防止其他人編輯您的文件中的敏感或機密資訊。

「Aspose.Words 允許您透過設定限制類型來限制編輯文件。」 「此外，Aspose.Words 也讓您可以為文件設定寫入保護設定。」

這篇文章說明如何使用 Aspose.Words 來選擇限制類型，如何增加或移除保護，以及如何讓不受限的編輯區域。

## 選取編輯限制類型

「 Aspose.Words 讓你透過 [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) enum 參數來控制如何限制內容。」 這將能讓您選擇以下類型的保護，例如：

* 只允許留言
* AllowOnlyFormFields
*AllowOnlyRevisions
*只讀
「*NoProtection」

所有類型都使用密碼保護，如果這密碼不正確輸入，使用者將無法合法地改變你的文件內容。 「因此，如果您的文件沒有要求提供必要的密碼就退回給您，這是個不好的兆頭。」

如果您在選擇安全類型時沒有設定密碼，其他使用者可以輕易地忽略保護您的文件。

{{% alert color="primary" %}}

請注意，所設定的密碼只是文件中可移除的特性之一。 「因此，這樣的密碼並不是文件安全的保證。」 「[Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/)方法顯示就是這樣。」

{{% /alert %}}

## 「添加文件保護」

「將保護添加到您的文件是一個簡單的過程，因為您只需要將本節中詳述的一種保護方法套用即可。」

「 Aspose.Words 讓您可以使用「 [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/)」方法保護您的文件。 「此方法並非安全功能，也沒有加密文件。」

{{% alert color="primary" %}}

在 Microsoft Word 中，您可以使用以下方式以類似的方式限制編輯：

「* 限制編輯 (檔案→資訊→保護文件)」
「*替代功能」– 「限制編輯」 (檢視→保護→限制編輯)

{{% /alert %}}

接下來的程式碼範例示範了如何將密碼保護加入您的文件中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

以下範例展示了如何限制 dokumen中的編輯功能，以便只允許在表單欄位中進行編輯：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## 「移除文件保護」

「Aspose.Words 讓您能透過簡單且直接的文件修改來從文件中移除保護。」 「你可以不必知道實際密碼就將文件保護移除，或者提供正確的密碼來解開文件，利用 [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) 方法。」 「兩種移除方式都沒差別。」

接下來的程式碼範例示範了如何從您的文件中移除保護:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## 指定「無限制可編輯區域」。

您可以限制編輯文件，同時允許對文件中選定的部分進行修改。 因此，任何打開您的文件的人都能存取這些不受限制的部分並對內容進行更改。

「Aspose.Words 讓你能用 [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) 和 [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) 的方法來標記文件中可以更改的部分。」

以下範例示範如何標記整個文件為只讀並指定可編輯區域：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

您也可以為不同的部分設定不同的文件編輯限制。

「接下來的程式碼範例示範如何將限制加在整個文件上，然後再移除此部分之一。」

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
