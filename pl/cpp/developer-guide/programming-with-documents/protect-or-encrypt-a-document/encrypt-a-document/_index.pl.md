---
title: Zaszyfruj dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Zaszyfruj dokument
linktitle: Zaszyfruj dokument
description: "Zaszyfruj dokument za pomocą odpowiednich algorytmów szyfrowania dla określonych formatów dokumentów."
type: docs
weight: 20
url: /pl/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Szyfrowanie to proces, który tłumaczy czytelny tekst na bezsensowne sekwencje bajtów, więc może go odczytać tylko osoba, która ma klucz deszyfrujący lub tajny kod. Ten proces odgrywa ważną rolę w zabezpieczaniu treści. Pomaga zakodować treść, zweryfikować pochodzenie dokumentu, udowodnić, że treść nie została zmodyfikowana po wysłaniu i upewnić się, że dane z dokumentu są bezpieczne.

W tym artykule wyjaśniono, w jaki sposób Aspose.Words umożliwia szyfrowanie dokumentu i jak sprawdzić, czy dokument ma szyfrowanie, czy nie.

## Szyfruj za pomocą hasła

Aby zaszyfrować dokument, użyj właściwości **Password**, aby podać hasło, które działa jako klucz szyfrowania. Spowoduje to zmodyfikowanie zawartości dokumentu i uczynienie go nieczytelnym. Zaszyfrowany dokument będzie wymagał wprowadzenia tego hasła przed jego otwarciem.

{{% alert color="primary" %}}

Możesz znaleźć odpowiednią właściwość **Password** dla wymaganego formatu. Każdy format zapisu dokumentu w [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) ma odpowiednią klasę zawierającą opcje zapisu dla tego formatu. Na przykład właściwość [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) w klasie [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) dla DOC lub Właściwość [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) w klasie [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) dla DOCX, DOCM, DOTX, DOTM, i FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Pamiętaj, że tylko niektóre formaty dokumentów obsługują szyfrowanie. Na przykład RTF nie obsługuje szyfrowania.

{{% /alert %}}

Poniższa tabela zawiera listę formatów i algorytmów szyfrowania obsługiwanych przez Aspose.Words:

| Format | Obsługiwane szyfrowanie podczas ładowania | Obsługiwane szyfrowanie podczas zapisywania |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR szyfrowanie40-bitowe RC4 EncryptionCryptoAPI RC4 Szyfrowanie | RC4 Szyfrowanie (40-bitowe) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standardowe EncryptionECMA-376 Zwinne Szyfrowanie | ECMA-376 Standardowe Szyfrowanie (AES128 + SHA1) |
| ODT, OTT | ODF Szyfrowanie (Blowfish / AES) | ODF Szyfrowanie (AES256 + SHA256) |
| PDF | RC4 Szyfrowanie (40/128 bit) |

Poniższy przykład kodu pokazuje, jak zaszyfrować dokument za pomocą hasła:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Sprawdź, czy dokument jest zaszyfrowany

W niektórych przypadkach możesz mieć nieczytelny dokument i chcesz mieć pewność, że dokument jest zaszyfrowany i nie jest uszkodzony ani skompresowany.

Aby wykryć, czy dokument jest zaszyfrowany i czy wymagane jest hasło, możesz użyć właściwości [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) klasy [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Ta właściwość pozwoli Ci również wykonać jakąś akcję przed załadowaniem dokumentu, na przykład informując użytkownika o podaniu hasła.

Poniższy przykład kodu pokazuje, jak wykryć szyfrowanie dokumentu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Otwórz dokument z hasłem lub bez niego

Po upewnieniu się, że dokument jest zaszyfrowany, możemy spróbować otworzyć ten dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument bez hasła:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Po tym, jak zobaczymy, że zaszyfrowanego dokumentu nie można otworzyć bez hasła, możemy spróbować go otworzyć, wprowadzając hasło.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument za pomocą hasła:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
