---
title: Praca z podpisu cyfrowego w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z podpisami cyfrowymi
linktitle: Praca z podpisami cyfrowymi
description: "Cyfrowy podpis dokumentów i wykrywanie, liczenie, weryfikowanie i usuwanie istniejących podpisów cyfrowych za pomocą Java."
type: docs
weight: 30
url: /pl/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Podpis cyfrowy jest technologicznym wdrożeniem podpisów elektronicznych w celu podpisania dokumentów i uwierzytelnienia podpisującego w celu zagwarantowania, że dokument nie został zmodyfikowany od momentu jego podpisania. Każdy podpis cyfrowy jest unikalny dla każdego sygnatariusza ze względu na przestrzeganie protokołu PKI, aby wygenerować zarówno klucze publiczne i prywatne. Podpisanie dokumentu cyfrowo oznacza stworzenie podpisu przy użyciu klucza prywatnego signera, gdzie do szyfrowania wygenerowanego haszu używany jest algorytm matematyczny.

Aspose.Words pozwala wykryć, policzyć lub zweryfikować istniejące podpisy cyfrowe, a także dodać nowy podpis do dokumentu, aby dowiedzieć się o wszelkich manipulacji w nim. Można również usunąć wszystkie podpisy cyfrowe z dokumentu. Użyj [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) klasy do pracy z podpisów cyfrowych.

Ten artykuł wyjaśnia, jak zrobić wszystkie powyższe, aby potwierdzić autentyczność i integralność dokumentu cyfrowego.

{{% alert color="primary" %}}

Należy pamiętać, że można uzyskać dostęp do podpisów cyfrowych swojego dokumentu tylko podczas uruchamiania Java 6 wersji i powyżej.

{{% /alert %}}

{{% alert color="primary" %}}

**Spróbuj online**

Możesz spróbować tej funkcjonalności z naszym [Bezpłatny podpis online](https://products.aspose.app/words/signature).

{{% /alert %}}

## Obsługiwane formaty

Aspose.Words umożliwia pracę z podpisami cyfrowymi na dokumentach DOC, OOXML i ODT oraz podpisanie wygenerowanego dokumentu w formacie PDF lub XPS format.

## Ograniczenia oznaczeń cyfrowych

Poniższa tabela opisuje kilka ograniczeń, z którymi możesz się zmierzyć podczas pracy z podpisami cyfrowymi poprzez Aspose.Words, oraz kilka alternatywnych opcji.

|  Ograniczenie |  Wariant alternatywny |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Utrata podpisów cyfrowych na dokumencie po załadowaniu i zapisaniu. Dlatego przetwarzanie dokumentu na serwer może spowodować utratę wszystkich podpisów cyfrowych bez powiadomienia |  Sprawdzić, czy dokument posiada podpis cyfrowy i podjąć odpowiednie działania, jeśli zostaną znalezione. Na przykład, wysłać wpis do klientów, informując ich, że dokument, który przesyłają zawiera podpis cyfrowy, który zostanie utracony, jeśli zostanie przetworzony |
|  Aspose.Words obsługuje pracę z makrami w dokumencie. Ale... Aspose.Words nie obsługuje jeszcze podpisów cyfrowych na makro |  Eksportuj dokument z powrotem do dowolnego formatu Word i użyj Microsoft Word dodanie podpisu cyfrowego do makr |

## Wykrywanie, liczenie i weryfikowanie oznaczeń cyfrowych

Aspose.Words pozwala na wykrycie podpisu cyfrowego w dokumencie za pomocą [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) metoda i [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) nieruchomości. Warto zauważyć, że taka kontrola wykryje jedynie fakt podpisu, ale nie jego ważność.

Dokument może być podpisany więcej niż jeden raz i może być wykonany przez różnych użytkowników. Aby sprawdzić ważność podpisów cyfrowych, należy załadować je z dokumentu za pomocą [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) metody i używać [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) nieruchomości. Również Aspose.Words pozwala policzyć zestaw wszystkich podpisów cyfrowych w dokumencie za pomocą [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) nieruchomości.

Wszystko to zapewnia skuteczny i bezpieczny sposób sprawdzenia dokumentów pod kątem podpisów przed ich przetwarzaniem.

Poniższy przykład kodu pokazuje jak wykryć obecność podpisów cyfrowych i je zweryfikować:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Utwórz podpis cyfrowy {#create-a-digital-signature}

Aby utworzyć podpis cyfrowy, trzeba będzie załadować certyfikat podpisu, który potwierdza tożsamość. Po wysłaniu dokumentu podpisanego cyfrowo, wysyłasz także swój certyfikat i klucz publiczny.

Aspose.Words pozwala na stworzenie certyfikatu X.509, cyfrowego certyfikatu, który wykorzystuje akceptowany na całym świecie standard X.509 PKI w celu sprawdzenia, czy klucz publiczny należy do sygnatariusza umieszczonego w certyfikacie. Aby to zrobić, należy użyć [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) metoda w ramach [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) Klasa.

Kolejne sekcje wyjaśniają jak dodać podpis cyfrowy, linię podpisu i jak podpisać wygenerowany dokument PDF.

### Podpisz dokument

Aspose.Words pozwala na podpisanie dokumentu DOC, DOCX lub ODT cyfrowo za pomocą [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) metoda i [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) nieruchomości.

Poniższy przykład kodu pokazuje, jak podpisywać dokumenty przy użyciu posiadacza certyfikatu i podpisywać opcje:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Dodaj linię podpisu

Linia podpisu jest wizualną reprezentacją podpisu cyfrowego w dokumencie. Aspose.Words pozwala na wstawianie linii podpisu za pomocą [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) Metoda. Można również ustawić parametry dla tej reprezentacji za pomocą [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) Klasa.

Na przykład poniższy obrazek pokazuje, jak ważne i nieprawidłowe mogą być wyświetlane podpisy.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Ponadto, jeśli dokument zawiera linię podpisu i nie ma podpisu cyfrowego, istnieje funkcja, aby poprosić użytkownika o dodanie podpisu.

Poniższy przykład kodu pokazuje, jak podpisać dokument z certyfikatem osobistym i określoną linią podpisu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Podpisz wygenerowany dokument PDF {#sign-a-generated-pdf-document}

Aspose.Words pozwala podpisać i uzyskać wszystkie szczegóły dokumentu PDF za pomocą [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) nieruchomości.

Poniższy przykład kodu pokazuje jak podpisać wygenerowany PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Poniższe zdjęcie pokazuje, że wygenerowany dokument PDF jest otwarty w Adobe Acrobat i podpis cyfrowy jest weryfikowany jako obecny i ważny.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Pobieranie wartości podpisu cyfrowego

Aspose.Words zapewnia również możliwość pobrania wartości podpisu cyfrowego z podpisanego cyfrowo dokumentu jako tablicy bajtów za pomocą [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) nieruchomości.

Poniższy przykład kodu pokazuje, jak uzyskać cyfrową wartość podpisu jako tablicę bajtów z dokumentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Usuń znaki cyfrowe

Aspose.Words pozwala na usunięcie wszystkich podpisów cyfrowych z podpisanego dokumentu za pomocą [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Metoda.

Poniższy przykład kodu pokazuje jak załadować i usunąć podpis cyfrowy z dokumentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Należy pamiętać, że w dokumencie nie można usunąć tylko jednego podpisu cyfrowego.

{{% /alert %}}
