---
title: 在C#中與數位簽名一起工作
second_title: Aspose.Words for .NET
articleTitle: 與數字簽名一起工作
linktitle: 與數字簽名一起工作
description: "用 C# 來デジタル署名文件並検出、計數、驗證、移除現有的数字签名。"
type: docs
weight: 40
url: /zh-hant/net/working-with-digital-signatures/
---

數位簽名是電子簽名的技術實作，用於簽署文件並確認簽署人身份，以保證文件自簽署後尚未修改。 每個簽名因為遵循 PKI 協議來生成公有與私有的鍵，所以是獨一無二的。 以數位方式簽名是指使用簽署者私鑰來創建一個签名，其中一個數學演算法被用來加密生成之雜湊值。

Aspose.Words可讓您檢驗、計數或驗證現有的數位簽名，以及新增您的文件中的新簽名來找出任何的竄改。 您也可以從文件中移除了所有數位簽名。 使用 [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) 類別來處理數位簽名。

這篇文章說明如何做所有上述事以驗證一項數位文件的真實性和完整性。

{{% alert color="primary" %}}

請注意，您只能在.NET Framework 2.0及以上版本運行時存取文件的數字簽名。

{{% /alert %}}

{{% alert color="primary" %}}

**試試網路上**

您可以用我們的 [Free online signature](https://products.aspose.app/words/signature) 來試用這個功能。

{{% /alert %}}

## 支援的格式

Aspose.Words 允許您在 DOC、OOXML 和 ODT 文檔上使用數位簽名，並以 PDF 或 XPS 格式簽署生成的文件。

## 數位簽名的局限

下表描述您可能在透過 Aspose.Words 使用數位簽名時遇到的幾項限制，以及一些替代方案。

| 限制 | 替代方案 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 在載入及儲存文件後失去數字簽名的情況。 因此，處理文件到伺服器可能會導致所有數字簽名損失而沒有通知。 | 檢查文件是否有數位簽名，如果有發現，請採取相應的行動。 例如，向用戶傳送警示，告訴他們正在上傳的文件包含會因處理而丟失的數位簽名。 |
| Aspose.Words 支援在文件中工作使用巨集指令。 但 Aspose.Words 尚不支援電子簽名。 | 將文件輸出至任何 Word 格式，並使用 Microsoft Word 來加入數位簽名到巨集指令。 |

## 檢查、計數並驗證數位簽名

" Aspose.Words 允許您透過使用 [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) 方法和 [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) 屬性在文件中偵測數位簽名。" 值得注意的是，這樣的檢查將只會檢測簽名的事實，而不是它的有效性。

一張文件可以多次簽名，而這些簽名可以由不同的人進行。 要驗證數位簽名，您需要透過 [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) 方法從文件中載入它們，並使用 [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) 屬性。 此外，Aspose.Words 讓您透過 [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) 屬性來計數文件中所有數位簽名的集合。

這提供了一種有效且安全的方式，在處理之前檢查文件的簽名。

接下來這個範例顯示了如何檢驗數位簽名是否存在以及如何確認它們：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## 建立數位簽名 {#create-a-digital-signature}

要建立數位簽名，你必須加載確認身分的簽名證書。 當你傳送一個有數位簽名的文件時，你也傳送你的證書和公開鑰。

Aspose.Words讓您可建立X.509憑證，這種數位憑證使用國際接受的X.509 PKI標準來驗證公鍵是否屬於憑證內包含的簽名者。 要做到這一點，請使用 [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) 方法在 [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) 類中。

接下來的部分說明如何加入數字簽名、簽名欄位以及如何在生成的 PDF 文檔上簽名。

### 簽署文件

Aspose.Words讓您使用 [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) 方法和 [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) 屬性以數字方式簽名 DOC、DOCX、XPS 或 ODT 文檔。

以下範例展示如何使用憑證持有人與簽名選項來簽名文件：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### 加入簽名行

在文件中，簽名行是一個數位簽名的視覺化表示。 Aspose.Words 允许您使用 [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) 方法插入簽名行。 您還可以使用 [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) 類別來設定此表示的參數。

例如，下面的圖片顯示了有效與無效的簽名如何顯示。

<img src="valid.png" alt="drawing" style="width:300px"/>

<img src="invalid.png" alt="drawing" style="width:300px"/>

此外，如果一篇文件包含簽名欄位而沒有數位簽名，就會出現一個功能來要求使用者加入簽名。

接下來這個程式碼範例示範如何使用個人憑證和特定簽名欄位來簽名一個文件。

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### 簽署生成的 PDF 文檔 {#sign-a-generated-pdf-document}

 Aspose.Words 允許您透過 [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) 的屬性簽署並取得 PDF 文件的所有詳細資訊。

以下範例說明如何簽署已生成的 PDF：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## 檢索數位簽名值

Aspose.Words 也提供從已用數位簽名文件取得數位簽名值作為字節陣列的能力，使用 [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 屬性。

以下範例顯示如何從文件中獲取字節陣列形式的數位簽名值：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## 移除數字簽名

 Aspose.Words 讓您透過 [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) 的方法，從已簽名文件中移除所有數位簽名。

接下來的程式碼範例示範了如何在文件中載入並移除數位簽名：

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

請注意，您無法在您的文件中移除一個數字簽名。

{{% /alert %}}
