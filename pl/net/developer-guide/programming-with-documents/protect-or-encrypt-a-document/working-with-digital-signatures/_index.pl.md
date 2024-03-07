---
title: Pracuj z podpisami cyfrowymi w C#
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z podpisami cyfrowymi
linktitle: Pracuj z podpisami cyfrowymi
description: "Cyfrowo podpisuj dokumenty oraz wykrywaj, licz, weryfikuj i usuwaj istniejące podpisy cyfrowe za pomocą C#."
type: docs
weight: 40
url: /pl/net/working-with-digital-signatures/
---

Podpis cyfrowy to technologiczne wdrożenie podpisów elektronicznych do podpisywania dokumentów i uwierzytelniania podpisującego w celu zagwarantowania, że dokument nie został zmodyfikowany od czasu jego podpisania. Każdy podpis cyfrowy jest unikalny dla każdego podpisującego ze względu na przestrzeganie protokołu PKI w celu generowania zarówno kluczy publicznych, jak i prywatnych. Podpisanie dokumentu cyfrowo oznacza utworzenie podpisu przy użyciu klucza prywatnego osoby podpisującej, przy czym algorytm matematyczny służy do szyfrowania wygenerowanego skrótu.

Aspose.Words pozwala wykryć, zliczyć lub zweryfikować istniejące podpisy cyfrowe, a także dodać nowy podpis do dokumentu, aby wykryć wszelkie manipulacje. Możesz także usunąć wszystkie podpisy cyfrowe z dokumentu. Użyj klasy [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) do pracy z podpisami cyfrowymi.

W tym artykule wyjaśniono, jak wykonać wszystkie powyższe czynności, aby zweryfikować autentyczność i integralność dokumentu cyfrowego.

{{% alert color="primary" %}}

Pamiętaj, że dostęp do podpisów cyfrowych swojego dokumentu możesz uzyskać tylko wtedy, gdy uruchomiona jest wersja .NET Framework 2.0 i nowsza.

{{% /alert %}}

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatny podpis online](https://products.aspose.app/words/signature).

{{% /alert %}}

## Obsługiwane formaty

Aspose.Words umożliwia pracę z podpisami cyfrowymi na dokumentach DOC, OOXML i ODT oraz podpisywanie wygenerowanego dokumentu w formacie PDF lub XPS.

## Ograniczenia podpisów cyfrowych

Poniższa tabela opisuje kilka ograniczeń, które możesz napotkać podczas pracy z podpisami cyfrowymi za pośrednictwem Aspose.Words, a także kilka alternatywnych opcji.

|  Ograniczenie |  Alternatywna opcja |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Utrata podpisów cyfrowych na dokumencie po jego załadowaniu i zapisaniu. Dlatego przetwarzanie dokumentu na serwer może spowodować utratę wszystkich podpisów cyfrowych bez powiadomienia |  Sprawdź, czy dokument ma podpisy cyfrowe i podejmij odpowiednie działania, jeśli je znajdziesz. Na przykład wyślij alert do klientów, informując ich, że przesyłany przez nich dokument zawiera podpisy cyfrowe, które zostaną utracone w przypadku przetwarzania |
|  Aspose.Words obsługuje pracę z makrami w dokumencie. Ale Aspose.Words nie obsługuje jeszcze podpisów cyfrowych w makrach |  Wyeksportuj dokument z powrotem do dowolnego formatu Worda i użyj Microsoft Word, aby dodać podpis cyfrowy do makr |

## Wykrywaj, licz i weryfikuj podpisy cyfrowe

Aspose.Words umożliwia wykrycie podpisu cyfrowego w dokumencie za pomocą metody [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) i właściwości [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). Warto zaznaczyć, że taka kontrola wykryje jedynie fakt złożenia podpisu, ale nie jego ważność.

Dokument można podpisać więcej niż raz i mogą to robić różni użytkownicy. Aby sprawdzić ważność podpisów cyfrowych należy je wczytać z dokumentu metodą [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) i skorzystać z właściwości [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Również Aspose.Words umożliwia policzenie zestawu wszystkich podpisów cyfrowych w dokumencie przy użyciu właściwości [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Wszystko to zapewnia skuteczny i bezpieczny sposób sprawdzenia dokumentu pod kątem podpisów przed jego przetworzeniem.

Poniższy przykład kodu pokazuje, jak wykryć obecność podpisów cyfrowych i je zweryfikować:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Utwórz podpis cyfrowy {#create-a-digital-signature}

Aby utworzyć podpis cyfrowy, konieczne będzie załadowanie certyfikatu podpisu potwierdzającego tożsamość. Wysyłając dokument podpisany cyfrowo, wysyłasz także swój certyfikat i klucz publiczny.

Aspose.Words umożliwia utworzenie certyfikatu X.509, certyfikatu cyfrowego wykorzystującego międzynarodowy standard X.509 PKI w celu sprawdzenia, czy klucz publiczny należy do osoby podpisującej zawartej w certyfikacie. Aby to zrobić, użyj metody [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) w klasie [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

W kolejnych sekcjach wyjaśniono, jak dodać podpis cyfrowy, linię podpisu i jak podpisać wygenerowany dokument PDF.

### Podpisz dokument

Aspose.Words umożliwia cyfrowe podpisywanie dokumentów DOC, DOCX, XPS lub ODT przy użyciu metody [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) i właściwości [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

Poniższy przykład kodu pokazuje, jak podpisywać dokumenty przy użyciu posiadacza certyfikatu i opcji podpisywania:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Dodaj linię podpisu

Linia podpisu to wizualna reprezentacja podpisu cyfrowego w dokumencie. Aspose.Words umożliwia wstawienie linii podpisu metodą [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). Można także ustawić parametry tej reprezentacji za pomocą klasy [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

Na przykład poniższy obrazek pokazuje, jak mogą być wyświetlane ważne i nieważne podpisy.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="rysunek" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="rysunek" style="width:300px"/>

Ponadto, jeśli dokument zawiera linię podpisu i nie zawiera podpisu cyfrowego, dostępna jest funkcja prosząca użytkownika o dodanie podpisu.

Poniższy przykład kodu pokazuje, jak podpisać dokument za pomocą certyfikatu osobistego i określonej linii podpisu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Podpisz wygenerowany dokument PDF {#sign-a-generated-pdf-document}

Aspose.Words umożliwia podpisanie i uzyskanie wszystkich szczegółów dokumentu PDF przy użyciu właściwości [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

Poniższy przykład kodu pokazuje, jak podpisać wygenerowany plik PDF:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Pobierz wartość podpisu cyfrowego

Aspose.Words zapewnia także możliwość pobrania wartości podpisu cyfrowego z dokumentu podpisanego cyfrowo w postaci tablicy bajtów przy użyciu właściwości [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

Poniższy przykład kodu pokazuje, jak uzyskać wartość podpisu cyfrowego w postaci tablicy bajtów z dokumentu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Usuń podpisy cyfrowe

Aspose.Words umożliwia usunięcie wszystkich podpisów cyfrowych z podpisanego dokumentu metodą [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

Poniższy przykład kodu pokazuje, jak załadować i usunąć podpisy cyfrowe z dokumentu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Pamiętaj, że nie możesz usunąć tylko jednego podpisu cyfrowego z dokumentu.

{{% /alert %}}
