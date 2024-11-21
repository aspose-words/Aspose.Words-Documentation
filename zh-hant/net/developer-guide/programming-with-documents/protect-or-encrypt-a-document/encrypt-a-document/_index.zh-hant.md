---
title: 用 C# 加密檔案
second_title: Aspose.Words for .NET
articleTitle: 加密一個文件
linktitle: 加密一個文件
description: "使用適當的加密演算法為特定的文件格式加密您的文件，在C#中。"
type: docs
weight: 20
url: /zh-hant/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

加密是將可讀文字轉換成一串無意義的字節序列的過程，以使其只能由擁有解密金鑰或秘密碼的人所閱讀。 這個過程在保護您的內容方面扮演著重要的角色。 它有助於將內容編碼，驗證文件的來源，證明內容在傳送後並沒有被修改過，並確保從文件中取得的數據是安全的。

這篇文章解釋了Aspose.Words如何允許您加密文件以及如何檢查文件是否被加密。

## 以密碼加密

要加密文件，請使用 **Password** 屬性提供一個作為加密鑰匙的密碼。 這會修改您的文件內容，使其不可讀。 加密文件必須在開啟前輸入此密碼。

{{% alert color="primary" %}}

你可以在所需的格式中找到合適的 **Password** 屬性。 每個文件儲存格式在 [Saving Namespace](https://reference.aspose.com/words/net/aspose.words.saving/) 中都有相應的類別，包含此格式的儲存選項。 例如，在 [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) 類別中的 [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) 屬性，或在 [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) 類別中的 [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) 屬性。

{{% /alert %}}

{{% alert color="primary" %}}

請注意，只有某些文件格式支援加密。 例如，RTF 不支援加密。

{{% /alert %}}

下面的表列出了 Aspose.Words 支援的格式和加密演算法：

| 格式 | 加載時支援加密 | 儲存時支援加密。 |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC， DOT | XOR 加密40 位 RC4 加密CryptoAPI RC4 加密 | RC4加密 (40 位) |
| DOCX、DOTX、DOCM、DOTM、FlatOPC、FlatOpcTemplate、FlatOpcMacroEnabled、FlatOpcTemplateMacroEnabled。 | ECMA-376標準加密ECMA-376敏捷加密 | ECMA-376 標準加密 (AES128 + SHA1) |
| ODT，OTT | ODF 加密 (Blowfish/AES) | ODF 加密 (AES256 + SHA256) |
| PDF | - | RC4 加密 (40/128 位) |

以下範例展示了如何用密碼來加密檔案：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## 檢查文件是否加密

在有些情況下，您可能有個無法閱讀的文件，想要確保文件已加密且沒有損壞或壓縮。

若要檢查文件是否經過加密且是否需要密碼，您可以使用 [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) 屬性與 [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) 類別的相關功能。 此屬性將允許您在載入文件前執行某些動作，例如通知使用者提供密碼。

接下來是一段示範如何偵測文檔加密的程式碼範例：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## 用密碼或不用密碼打開一個文件

當我們確保一封信是加密的，我們可以試著在沒有密碼的情況下打開它，這應該會導致一個例外。

以下程式碼範例示範了如何嘗試在不輸入密碼的情況下開啟加密的檔案。

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

當我們看到加密文件無法在沒有密碼的情況下打開時，我們可以嘗試通過輸入密碼來打開它。

以下範例顯示如何試著以密碼開啟加密的文件：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
