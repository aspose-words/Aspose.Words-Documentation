---
title: Zaszyfruj dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Zaszyfruj dokument
linktitle: Zaszyfruj dokument
description: "Zaszyfruj swój dokument za pomocą odpowiednich algorytmów szyfrowania dla określonych formatów dokumentów w C#."
type: docs
weight: 20
url: /pl/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Szyfrowanie to proces, który tłumaczy czytelny tekst na bezsensowne sekwencje bajtów, dzięki czemu może go odczytać tylko osoba posiadająca klucz odszyfrowujący lub tajny kod. Proces ten odgrywa ważną rolę w zabezpieczeniu treści. Pomaga zakodować treść, zweryfikować pochodzenie dokumentu, wykazać, że treść nie uległa zmianie po wysłaniu, a także zapewnić bezpieczeństwo danych zawartych w dokumencie.

W tym artykule wyjaśniono, w jaki sposób Aspose.Words umożliwia szyfrowanie dokumentu i jak sprawdzić, czy dokument jest zaszyfrowany, czy nie.

## Szyfruj za pomocą hasła

Aby zaszyfrować dokument, użyj właściwości **Password** w celu podania hasła, które działa jako klucz szyfrowania. Spowoduje to modyfikację zawartości dokumentu i uczyni go nieczytelnym. Zaszyfrowany dokument będzie wymagał wprowadzenia tego hasła, zanim będzie można go otworzyć.

{{% alert color="primary" %}}

Możesz znaleźć odpowiednią właściwość **Password** dla wymaganego formatu. Każdy format zapisu dokumentu w formacie [Zapisywanie przestrzeni nazw](https://reference.aspose.com/words/net/aspose.words.saving/) ma odpowiednią klasę zawierającą opcje zapisu dla tego formatu. Na przykład właściwość [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) w klasie [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) dla DOC lub właściwość [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) w klasie [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) dla DOCX, DOCM, DOTX, DOTM i FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Należy pamiętać, że tylko niektóre formaty dokumentów obsługują szyfrowanie. Na przykład RTF nie obsługuje szyfrowania.

{{% /alert %}}

Poniższa tabela zawiera listę formatów i algorytmów szyfrowania obsługiwanych przez Aspose.Words:

| Format |  Obsługiwane szyfrowanie podczas ładowania |  Obsługiwane szyfrowanie podczas zapisywania |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOK, DOT |  Szyfrowanie XOR 40-bitowe szyfrowanie RC4 Szyfrowanie CryptoAPI RC4 |  Szyfrowanie RC4 (40-bitowe) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Szyfrowanie standardowe ECMA-376 Szyfrowanie Agile ECMA-376 |  Standardowe szyfrowanie ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Szyfrowanie ODF (Blowfish/AES) |  Szyfrowanie ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Szyfrowanie RC4 (40/128 bitów) |

Poniższy przykład kodu pokazuje, jak zaszyfrować dokument hasłem:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Sprawdź, czy dokument jest zaszyfrowany

W niektórych przypadkach możesz mieć nieczytelny dokument i chcesz mieć pewność, że dokument jest zaszyfrowany i nie jest uszkodzony ani skompresowany.

Aby wykryć, czy dokument jest zaszyfrowany i czy wymagane jest hasło, możesz użyć właściwości [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) klasy [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Właściwość ta pozwoli także na wykonanie jakiejś akcji przed załadowaniem dokumentu, np. poinformowanie użytkownika o konieczności podania hasła.

Poniższy przykład kodu pokazuje, jak wykryć szyfrowanie dokumentu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Otwórz dokument z hasłem lub bez

Kiedy upewnimy się, że dokument jest zaszyfrowany, możemy spróbować otworzyć ten dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument bez hasła:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Gdy zobaczymy, że zaszyfrowanego dokumentu nie można otworzyć bez hasła, możemy spróbować go otworzyć, wprowadzając hasło.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument za pomocą hasła:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
