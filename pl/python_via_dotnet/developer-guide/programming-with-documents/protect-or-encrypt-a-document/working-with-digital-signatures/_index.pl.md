---
title: Praca z podpisami cyfrowymi
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z podpisami cyfrowymi
linktitle: Praca z podpisami cyfrowymi
description: "Cyfrowo podpisuj dokumenty oraz wykrywaj, licz, weryfikuj i usuwaj istniejące podpisy cyfrowe za pomocą Python."
type: docs
weight: 40
url: /pl/python-net/working-with-digital-signatures/
---

Podpis cyfrowy służy do uwierzytelnienia dokumentu w celu ustalenia, że nadawca dokumentu jest tym, za kogo się podaje, a treść dokumentu nie została naruszona.

Aspose.Words obsługuje dokumenty z podpisami cyfrowymi i zapewnia do nich dostęp, umożliwiając wykrycie i weryfikację podpisów cyfrowych na dokumencie oraz podpisanie wygenerowanego dokumentu PDF dostarczonym certyfikatem. Obecnie podpisy cyfrowe są obsługiwane w dokumentach DOC, OOXML i ODT. Podpisywanie wygenerowanych dokumentów obsługiwane jest w formacie PDF.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatny podpis online](https://products.aspose.app/words/signature).

{{% /alert %}}

## Podpisy cyfrowe nie są zachowywane podczas otwierania i zapisywania

Należy pamiętać, że dokument załadowany, a następnie zapisany przy użyciu formatu Aspose.Words utraci wszelkie podpisy cyfrowe podpisane na dokumencie. Jest to zgodne z projektem, ponieważ podpis cyfrowy gwarantuje, że treść nie została zmodyfikowana, a ponadto potwierdza tożsamość osoby, która podpisała dokument. Zasady te utraciłyby ważność, gdyby oryginalne podpisy zostały przeniesione na dokument powstały.

Z tego powodu, jeśli przetwarzasz dokumenty przesłane na serwer, może to potencjalnie oznaczać, że możesz bez wiedzy uszkodzić dokument przesłany na serwer w ten sposób. Dlatego najlepiej jest sprawdzić podpisy cyfrowe na dokumencie i podjąć odpowiednie działania w przypadku ich znalezienia, na przykład można wysłać do klienta alert informujący, że przekazywany przez niego dokument zawiera podpisy cyfrowe, które zostaną utracone w przypadku obrobiony. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Powyższy kod wykorzystuje metodę [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) do wykrywania, czy dokument zawiera podpisy cyfrowe, bez konieczności wcześniejszego ładowania dokumentu. Zapewnia to skuteczny i bezpieczny sposób sprawdzenia dokumentu pod kątem podpisów przed ich przetworzeniem. Po wykonaniu metoda zwraca obiekt [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/), który udostępnia właściwość [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Ta właściwość zwraca true, jeśli dokument zawiera jeden lub więcej podpisów cyfrowych. Należy zauważyć, że ta metoda nie sprawdza poprawności podpisów, a jedynie sprawdza, czy podpisy są obecne. Sprawdzanie poprawności podpisów cyfrowych opisano w następnej sekcji.

{{% alert color="primary" %}}

Możesz także sprawdzić, czy dokument ma podpisy cyfrowe po załadowaniu, sprawdzając właściwość `Count` kolekcji [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Podpisy cyfrowe w makrach (projekty VBA)

Nie można uzyskać dostępu do podpisów cyfrowych w makrach ani ich podpisać. Dzieje się tak, ponieważ Aspose.Words nie zajmuje się bezpośrednio makrami w dokumencie. Jednak podpisy cyfrowe w makrach są zachowywane podczas eksportowania dokumentu z powrotem do dowolnego formatu Word. Podpisy te można zachować w kodzie VBA, ponieważ binarna zawartość makr nie ulega zmianie nawet w przypadku modyfikacji samego dokumentu.

### Uzyskaj dostęp i weryfikuj podpisy cyfrowe

Dokument może mieć wiele podpisów cyfrowych. Dostęp do tych podpisów można uzyskać poprzez kolekcję [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Każdy zwrócony obiekt to plik [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) reprezentujący pojedynczy podpis cyfrowy należący do dokumentu. Zapewnia to członkom możliwość sprawdzenia ważności podpisu.

Najważniejszą właściwością, którą należy sprawdzić w przypadku podpisów cyfrowych, jest ważność każdego podpisu w dokumencie. Wszystkie podpisy w dokumencie można sprawdzić jednocześnie, wywołując właściwość [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Spowoduje to zwrócenie formatu true, jeśli wszystkie podpisy w dokumencie są ważne lub jeśli dokument nie zawiera podpisów, oraz false, jeśli co najmniej jeden podpis cyfrowy jest nieprawidłowy.

Każdy podpis można również sprawdzić indywidualnie, wywołując [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Podpis może zostać zwrócony nieważny z kilku powodów, na przykład dokument został zmieniony od czasu podpisania lub wygasł ważność certyfikatu. Dodatkowo można uzyskać dostęp do dodatkowych szczegółów podpisu. Poniższy przykładowy kod pokazuje, jak sprawdzić poprawność każdego podpisu w dokumencie i wyświetlić podstawowe informacje o podpisie. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Podpisywanie dokumentów Worda

Klasa [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) udostępnia metody podpisywania dokumentu. Metoda [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) podpisuje dokument źródłowy przy użyciu podanego formatu [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) podpisem cyfrowym i zapisuje podpisany dokument do strumienia docelowego

Poniższy przykład pokazuje jak podpisać prosty dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Poniższy przykład pokazuje jak podpisać zaszyfrowany dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Podpisywanie dokumentu Word za pomocą linii podpisu

Możesz podpisać dokument źródłowy przy użyciu podanych formatów [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) i [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) podpisem cyfrowym i zapisać podpisany dokument do pliku docelowego. Za pomocą klasy [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) możesz określić opcje podpisywania dokumentu. Poniższy przykład pokazuje jak utworzyć nową linię podpisu i podpisać dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Poniższy przykład pokazuje jak zmodyfikować istniejącą linię podpisu i podpisać dokument

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Podpisywanie dokumentu programu Word przy użyciu identyfikatora dostawcy podpisu

Poniższy przykład pokazuje, jak podpisać dokument Word przy użyciu identyfikatora dostawcy podpisu. Dostawca usług kryptograficznych (CSP) to niezależny moduł oprogramowania, który faktycznie wykonuje algorytmy kryptograficzne w celu uwierzytelniania, kodowania i szyfrowania. MS Office rezerwuje wartość {00000000-0000-0000-0000-000000000000} dla swojego domyślnego dostawcy podpisów.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Utwórz nowy dokument Word z linią podpisu, korzystając z identyfikatora dostawcy

Poniższy przykład pokazuje, jak utworzyć linię podpisu i podpisać dokument Word przy użyciu identyfikatora dostawcy podpisu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Pobierz wartość podpisu cyfrowego

Aspose.Words zapewnia także możliwość pobrania wartości podpisu cyfrowego z dokumentu podpisanego cyfrowo w postaci tablicy bajtów przy użyciu właściwości [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

Poniższy przykład kodu pokazuje, jak uzyskać wartość podpisu cyfrowego w postaci tablicy bajtów z dokumentu:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}