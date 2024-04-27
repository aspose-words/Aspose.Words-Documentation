---
title: Zaszyfruj dokument Java
second_title: Aspose.Words zamiast Java
articleTitle: Szyfruj dokument
linktitle: Szyfruj dokument
description: "Szyfrowanie dokumentu przy użyciu odpowiednich algorytmów szyfrowania dla określonych formatów dokumentów w Java."
type: docs
weight: 20
url: /pl/java/encrypt-a-document/
---

Szyfrowanie to proces, który przekłada czytelny tekst na bezsensowne sekwencje bajtów, więc może być odczytywane tylko przez osobę, która posiada klucz deszyfrujący lub kod tajny. Proces ten odgrywa ważną rolę w zabezpieczaniu treści. Pomaga kodować zawartość, weryfikuje pochodzenie dokumentu, udowadnia, że zawartość nie została zmieniona po wysłaniu i zapewnia bezpieczeństwo danych z dokumentu.

Ten artykuł wyjaśnia jak Aspose.Words pozwala na szyfrowanie dokumentu i jak sprawdzić, czy dokument ma szyfrowanie lub nie.

## Szyfruj hasłem

Aby zaszyfrować dokument, należy użyć **Password** właściwość do dostarczania hasła, które działa jako klucz szyfrujący. Zmodyfikuje to zawartość dokumentu i sprawi, że będzie on nieczytelny. Zaszyfrowany dokument będzie wymagał wprowadzenia tego hasła przed jego otwarciem.

{{% alert color="primary" %}}

Można znaleźć odpowiednie **Password** właściwość dla wymaganego formatu. Każdy format zapisu dokumentu posiada odpowiednią klasę zawierającą opcje zapisu dla tego formatu. Na przykład: [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) nieruchomości w [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) klasa dla DOC, lub [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) nieruchomości w [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) klasa dla DOCX, DOCM, DOTX, DOTM i FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Zauważ, że tylko niektóre formaty dokumentów wspierają szyfrowanie. Na przykład, RTF nie obsługuje szyfrowania.

{{% /alert %}}

Poniższa tabela zawiera listę formatów i algorytmów szyfrowania obsługiwanych przez Aspose.Words:

| Format |  Obsługiwane szyfrowanie podczas wczytywania |  Obsługiwane szyfrowanie podczas zapisywania |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR szyfrowanie 40- bit RC4 szyfrowanie CryptoAPI Szyfrowanie RC4 |  Szyfrowanie RC4 (40- bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatoPC, FlatopcTemplate, FlatopcMacroEnabled, FlatopcTemplateMacroEnabled |  ECMA- 376 Standardowe szyfrowanie ECMA- 376 Szyfrowanie Agile |  ECMA- 376 Standardowe szyfrowanie (AES128 + SHA1) |
|  ODT, OTT |  Szyfrowanie ODF (Blowfish / AES) |  Szyfrowanie ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Szyfrowanie RC4 (40 / 128 bitów) |

Poniższy przykład kodu pokazuje jak szyfrować dokument hasłem:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Sprawdź, czy dokument jest szyfrowany

W niektórych przypadkach możesz mieć nieczytelny dokument i chcesz mieć pewność, że dokument jest zaszyfrowany i nie jest uszkodzony lub skompresowany.

Aby wykryć, czy dokument jest zaszyfrowany i jeśli wymagane jest hasło, można użyć [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) Własność [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) Klasa. Ta właściwość pozwoli Ci również wykonać pewne działanie przed załadowaniem dokumentu, na przykład, informując użytkownika o dostarczeniu hasła.

Poniższy przykład kodu pokazuje, jak wykryć szyfrowanie dokumentu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Otwórz dokument z hasłem lub bez hasła

Kiedy upewnimy się, że dokument jest zaszyfrowany, możemy spróbować otworzyć ten dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje, jak próbować otworzyć zaszyfrowany dokument bez hasła:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Po stwierdzeniu, że zaszyfrowany dokument nie może zostać otwarty bez hasła, możemy spróbować go otworzyć wprowadzając hasło.

Poniższy przykład kodu pokazuje jak spróbować otworzyć zaszyfrowany dokument z hasłem:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
