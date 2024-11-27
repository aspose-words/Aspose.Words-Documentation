---
title: Praca z podpisami cyfrowymi w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z podpisami cyfrowymi
linktitle: Praca z podpisami cyfrowymi
description: "Cyfrowo podpisuj dokumenty i wykrywaj, licz, Weryfikuj i usuwaj istniejące podpisy cyfrowe."
type: docs
weight: 160
url: /pl/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Podpis cyfrowy to technologiczna implementacja podpisów elektronicznych do podpisywania dokumentów i uwierzytelniania osoby podpisującej w celu zagwarantowania, że dokument nie został zmodyfikowany od czasu jego podpisania. Każdy podpis cyfrowy jest unikalny dla każdego sygnatariusza ze względu na przestrzeganie protokołu PKI w celu generowania zarówno kluczy publicznych, jak i prywatnych. Podpisanie dokumentu cyfrowo oznacza utworzenie podpisu przy użyciu klucza prywatnego sygnatariusza, w którym do szyfrowania wygenerowanego skrótu używany jest algorytm matematyczny.

Aspose.Words umożliwia wykrycie, policzenie lub weryfikację istniejących podpisów cyfrowych, a także dodanie nowego podpisu do dokumentu, aby wykryć wszelkie manipulacje w nim. Możesz także usunąć wszystkie podpisy cyfrowe z dokumentu. Użyj klasy [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) do pracy z podpisami cyfrowymi.

W tym artykule wyjaśniono, jak wykonać wszystkie powyższe czynności, aby zweryfikować autentyczność i integralność dokumentu cyfrowego.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność z naszym [Darmowy podpis online](https://products.aspose.app/words/signature).

{{% /alert %}}

## Obsługiwane Formaty

Aspose.Words umożliwia pracę z podpisami cyfrowymi na dokumentach DOC, OOXML i ODT oraz podpisywanie wygenerowanego dokumentu w formacie PDF lub XPS.

## Ograniczenia podpisów cyfrowych

Poniższa tabela opisuje kilka ograniczeń, które możesz napotkać podczas pracy z podpisami cyfrowymi za pośrednictwem Aspose.Words, a także kilka alternatywnych opcji.

| Ograniczenie | Opcja alternatywna |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Utrata podpisów cyfrowych na dokumencie po załadowaniu i zapisaniu. Dlatego przetwarzanie dokumentu na serwer może spowodować utratę wszystkich podpisów cyfrowych bez powiadomienia. | Sprawdź, czy dokument ma podpisy cyfrowe i podejmij odpowiednie działania, jeśli zostaną znalezione. Na przykład wyślij alert do klientów, informując ich, że przesyłany dokument zawiera podpisy cyfrowe, które zostaną utracone w przypadku przetworzenia. |
| Aspose.Words obsługuje pracę z makrami w dokumencie. Ale Aspose.Words nie obsługuje jeszcze podpisów cyfrowych na makrach. | Eksportuj dokument z powrotem do dowolnego formatu Word i użyj Microsoft Word, aby dodać podpis cyfrowy do makr. |

## Wykrywaj, licz i weryfikuj Podpisy cyfrowe

Aspose.Words umożliwia wykrycie podpisu cyfrowego w dokumencie przy użyciu metody [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) i właściwości [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Warto zauważyć, że taka kontrola wykryje tylko fakt podpisu, ale nie jego ważność.

Dokument może być podpisany więcej niż jeden raz, a mogą to zrobić różni użytkownicy. Aby sprawdzić ważność podpisów cyfrowych, musisz załadować je z dokumentu przy użyciu metody [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) i użyć właściwości [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Również Aspose.Words pozwala policzyć zestaw wszystkich podpisów cyfrowych w dokumencie przy użyciu właściwości [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Wszystko to zapewnia skuteczny i bezpieczny sposób sprawdzania dokumentu pod kątem podpisów przed jego przetworzeniem.

Poniższy przykład kodu pokazuje, jak wykryć obecność podpisów cyfrowych i je zweryfikować:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Utwórz podpis cyfrowy {#create-a-digital-signature}

Aby utworzyć podpis cyfrowy, musisz załadować certyfikat podpisywania potwierdzający tożsamość. Kiedy wysyłasz podpisany cyfrowo dokument, wysyłasz również swój certyfikat i klucz publiczny.

Aspose.Words umożliwia utworzenie certyfikatu X. 509, certyfikatu cyfrowego, który wykorzystuje międzynarodowy standard X. 509 PKI w celu sprawdzenia, czy klucz publiczny należy do podpisującego zawartego w certyfikacie. Aby to zrobić, użyj metody [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) w klasie [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

W następnych sekcjach wyjaśniono, jak dodać podpis cyfrowy, wiersz podpisu i jak podpisać wygenerowany dokument PDF.

### Podpisz dokument

Aspose.Words umożliwia podpisanie dokumentu DOC, DOCX lub ODT cyfrowo przy użyciu metody [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) i właściwości [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

Poniższy przykład kodu pokazuje, jak podpisywać dokumenty za pomocą posiadacza certyfikatu i opcji podpisywania:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Dodaj linię podpisu

Linia podpisu to wizualna reprezentacja podpisu cyfrowego w dokumencie. Aspose.Words umożliwia wstawienie linii podpisu przy użyciu metody [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Możesz także ustawić parametry dla tej reprezentacji za pomocą klasy [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Na przykład poniższy obrazek pokazuje, jak można wyświetlać prawidłowe i nieprawidłowe podpisy.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Ponadto, jeśli dokument zawiera wiersz podpisu i nie ma podpisu cyfrowego, istnieje funkcja, która prosi użytkownika o dodanie podpisu.

Poniższy przykład kodu pokazuje, jak podpisać dokument osobistym certyfikatem i określoną linią podpisu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Podpisz wygenerowany PDF Dokument {#sign-a-generated-pdf-document}

Aspose.Words umożliwia podpisanie i uzyskanie wszystkich szczegółów dokumentu PDF przy użyciu właściwości [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

Poniższy przykład kodu pokazuje, jak podpisać wygenerowany PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Pobierz wartość podpisu cyfrowego

Aspose.Words zapewnia również możliwość pobierania wartości podpisu cyfrowego z podpisanego cyfrowo dokumentu jako tablicy bajtów przy użyciu właściwości [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Poniższy przykład kodu pokazuje, jak uzyskać wartość podpisu cyfrowego jako tablicę bajtów z dokumentu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Usuwanie Podpisów Cyfrowych

Aspose.Words umożliwia usunięcie wszystkich podpisów cyfrowych z podpisanego dokumentu przy użyciu metody [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Poniższy przykład kodu pokazuje, jak załadować i usunąć podpisy cyfrowe z dokumentu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Pamiętaj, że nie możesz usunąć tylko jednego podpisu cyfrowego w dokumencie.

{{% /alert %}}
