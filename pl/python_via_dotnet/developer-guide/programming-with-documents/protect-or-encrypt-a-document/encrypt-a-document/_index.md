---
title: Zaszyfruj dokument w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Zaszyfruj dokument
linktitle: Zaszyfruj dokument
description: "Zaszyfruj swój dokument za pomocą odpowiednich algorytmów szyfrowania dla określonych formatów dokumentów w Python."
type: docs
weight: 20
url: /pl/python-net/encrypt-a-document/
---

Szyfrowanie to proces, który tłumaczy czytelny tekst na bezsensowne sekwencje bajtów, dzięki czemu może go odczytać tylko osoba posiadająca klucz odszyfrowujący lub tajny kod. Proces ten odgrywa ważną rolę w zabezpieczeniu treści. Pomaga zakodować treść, zweryfikować pochodzenie dokumentu, wykazać, że treść nie uległa zmianie po wysłaniu, a także zapewnić bezpieczeństwo danych zawartych w dokumencie.

W tym artykule wyjaśniono, w jaki sposób Aspose.Words umożliwia szyfrowanie dokumentu i jak sprawdzić, czy dokument jest zaszyfrowany, czy nie.

## Szyfruj za pomocą hasła

Aby zaszyfrować dokument, użyj właściwości **hasło** w celu podania hasła, które działa jako klucz szyfrowania. Spowoduje to modyfikację zawartości dokumentu i uczyni go nieczytelnym. Zaszyfrowany dokument będzie wymagał wprowadzenia tego hasła, zanim będzie można go otworzyć.

{{% alert color="primary" %}}

Możesz znaleźć odpowiednią właściwość **hasło** dla wymaganego formatu. Każdy format zapisu dokumentu w module [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) posiada odpowiednią klasę zawierającą opcje zapisu dla tego formatu. Na przykład właściwość [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) w klasie [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) dla DOC lub właściwość [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) w klasie [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) dla DOCX, DOCM, DOTX, DOTM i FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Należy pamiętać, że tylko niektóre formaty dokumentów obsługują szyfrowanie. Na przykład RTF nie obsługuje szyfrowania.

{{% /alert %}}

Poniższa tabela zawiera listę formatów i algorytmów szyfrowania obsługiwanych przez Aspose.Words:

| Format |  Obsługiwane szyfrowanie podczas ładowania |  Obsługiwane szyfrowanie podczas zapisywania |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  Szyfrowanie XOR 40-bitowe szyfrowanie RC4 Szyfrowanie CryptoAPI RC4 |  Szyfrowanie RC4 (40-bitowe) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Szyfrowanie standardowe ECMA-376 Szyfrowanie Agile ECMA-376 |  Standardowe szyfrowanie ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Szyfrowanie ODF (Blowfish/AES) |  Szyfrowanie ODF (AES256 + SHA256) |
|  PDF |                                                          |  Szyfrowanie RC4 (40/128 bitów) |

Poniższy przykład kodu pokazuje, jak zaszyfrować dokument hasłem:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Sprawdź, czy dokument jest zaszyfrowany

W niektórych przypadkach możesz mieć nieczytelny dokument i chcesz mieć pewność, że dokument jest zaszyfrowany i nie jest uszkodzony ani skompresowany.

Aby wykryć, czy dokument jest zaszyfrowany i czy wymagane jest hasło, możesz użyć właściwości [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) klasy [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Właściwość ta pozwoli także na wykonanie jakiejś akcji przed załadowaniem dokumentu, np. poinformowanie użytkownika o konieczności podania hasła.

Poniższy przykład kodu pokazuje, jak wykryć szyfrowanie dokumentu:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Otwórz dokument z hasłem lub bez

Kiedy upewnimy się, że dokument jest zaszyfrowany, możemy spróbować otworzyć ten dokument bez hasła, co powinno prowadzić do wyjątku.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument bez hasła:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

Gdy zobaczymy, że zaszyfrowanego dokumentu nie można otworzyć bez hasła, możemy spróbować go otworzyć, wprowadzając hasło.

Poniższy przykład kodu pokazuje, jak spróbować otworzyć zaszyfrowany dokument za pomocą hasła:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
