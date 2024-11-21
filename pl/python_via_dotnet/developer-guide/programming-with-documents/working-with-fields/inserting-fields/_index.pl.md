---
title: Wstawianie pól w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Wstaw pola
linktitle: Wstaw pola
description: "Wstawiaj pola do dokumentu w formacie Python na różne sposoby: za pomocą `DocumentBuilder` lub DOM (Document Object Model)."
type: docs
weight: 20
url: /pl/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

Istnieje kilka różnych sposobów wstawiania pól do dokumentu:

- za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- za pomocą [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- za pomocą [Aspose.Words Document Object Model (DOM)](/words/pl/python-net/aspose-words-document-object-model/)

W tym artykule przyjrzymy się każdemu sposobowi bardziej szczegółowo i przeanalizujemy, jak wstawić określone pola za pomocą tych opcji.

## Wstawianie pól do dokumentu przy użyciu narzędzia DocumentBuilder

W Aspose.Words metoda [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) służy do wstawiania nowych pól do dokumentu. Pierwszy parametr akceptuje pełny kod pola, które ma zostać wstawione. Drugi parametr jest opcjonalny i umożliwia ręczne ustawienie wyniku pola. Jeśli nie zostanie to podane, pole zostanie automatycznie zaktualizowane. Do tego parametru można przekazać wartość null lub pusty, aby wstawić pole z wartością pustego pola. Jeśli nie masz pewności co do składni konkretnego kodu pola, utwórz najpierw pole w formacie Microsoft Word i przełącz się, aby zobaczyć jego kod pola.

{{% alert color="primary" %}}

Jeśli kod pola zawiera parametr zawierający spację, należy go ująć w znaki mowy. W przeciwnym razie pole zarówno w Microsoft Word, jak i Aspose.Words może nie działać zgodnie z oczekiwaniami, ponieważ parametr jest traktowany przez oba jako obcięty.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić pole scalania do dokumentu przy użyciu **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Poniższy przykład kodu pokazuje, jak wstawić pole scalania z niemieckimi ustawieniami regionalnymi do dokumentu przy użyciu **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Tę samą technikę stosuje się do wstawiania pól zagnieżdżonych w innych polach.

Poniższy przykład kodu pokazuje, jak wstawić pola zagnieżdżone w innym polu za pomocą **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Określ ustawienia regionalne na poziomie pola

Identyfikator języka to standardowy międzynarodowy skrót numeryczny języka danego kraju lub regionu geograficznego. Dzięki Aspose.Words możesz określić ustawienia regionalne na poziomie pola. Właściwość [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) pobiera lub ustawia identyfikator ustawień regionalnych pola.

Poniższy przykład kodu pokazuje, jak skorzystać z tej opcji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Wstaw niewpisane/puste pole

Jeśli chcesz wstawić niewpisane/puste pola ({}), tak jak pozwala na to Microsoft Word, możesz użyć metody [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) z parametrem [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). Aby wstawić pole do dokumentu Word, możesz nacisnąć kombinację klawiszy "Ctrl + F9".

Poniższy przykład kodu pokazuje, jak wstawić puste pole do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Wstawianie pól do dokumentu za pomocą FieldBuilder

Alternatywnym sposobem wstawiania pól w Aspose.Words jest klasa [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). Zapewnia płynny interfejs do określania przełączników pól i wartości argumentów jako tekstu, węzłów, a nawet pól zagnieżdżonych.

Poniższy przykład kodu pokazuje, jak wstawić pole do dokumentu za pomocą **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Wstawianie pól za pomocą DOM

Za pomocą [Aspose.Words Document Object Model (DOM)](/words/pl/python-net/aspose-words-document-object-model/) możesz także wstawiać różne typy pól. W tej sekcji przyjrzymy się kilku przykładom.

### Wstawianie pola scalania do dokumentu za pomocą DOM

Pole `MERGEFIELD` w dokumencie Word może być reprezentowane przez klasę [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). Klasę [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) można wykorzystać do wykonania następujących operacji:

- określ nazwę pola scalania
- określ formatowanie pola scalania
- określ tekst znajdujący się pomiędzy separatorem pola a końcem pola scalającego
- określ tekst, który ma zostać wstawiony po polu scalającym, jeśli pole nie jest puste
- określ tekst, który ma zostać wstawiony przed polem scalania, jeśli pole nie jest puste

Poniższy przykład kodu pokazuje, jak dodać pole `Merge` za pomocą formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Wstawianie pola Mail Merge `ADDRESSBLOCK` do dokumentu przy użyciu formatu DOM

Pole `ADDRESSBLOCK` służy do wstawienia bloku adresu mail merge do dokumentu Word. Pole `ADDRESSBLOCK` w dokumencie Word może być reprezentowane przez klasę [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). Za pomocą klasy [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) można wykonać następujące operacje:

- określ, czy w polu ma być zawarta nazwa kraju/regionu
- określ, czy adres ma być formatowany zgodnie z krajem/regionem odbiorcy zgodnie z definicją POST*CODE (Powszechny Związek Pocztowy 2006)
- podaj nazwę wykluczonego kraju/regionu
- określ format nazwy i adresu
- określ identyfikator języka używany do formatowania adresu

Poniższy przykład kodu pokazuje, jak dodać pole Mail Merge `ADDRESSBLOCK` przy użyciu formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Wstawianie pola `ADVANCE` do dokumentu bez użycia narzędzia DocumentBuilder

Pole `ADVANCE` służy do przesuwania kolejnego tekstu w wierszu w lewo, w prawo, w górę lub w dół. Pole `ADVANCE` w dokumencie Word może być reprezentowane przez klasę [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). Klasę [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) można wykorzystać do wykonania następujących operacji:

- określ liczbę punktów, o jaką tekst następujący po polu powinien zostać odsunięty w pionie od górnej krawędzi strony
- określić liczbę punktów, o jaką tekst następujący za polem powinien zostać przesunięty poziomo od lewej krawędzi kolumny, ramki lub pola tekstowego
- określ liczbę punktów, o jaką tekst następujący po polu ma zostać przesunięty w lewo, w prawo, w górę lub w dół

Poniższy przykład kodu pokazuje, jak dodać pole `ADVANCE` przy użyciu formatu DOM do akapitu w dokumencie.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Wstawianie pola `ASK` do dokumentu bez użycia narzędzia DocumentBuilder

Pole `ASK` służy do monitowania użytkownika o tekst do przypisania do zakładki w dokumencie programu Word. Pole `ASK` w dokumencie Word może być reprezentowane przez klasę [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). Klasę **FieldAsk** można wykorzystać do wykonania następujących operacji:

- podaj nazwę zakładki
- określ domyślną reakcję użytkownika (wartość początkowa zawarta w oknie zachęty)
- określ, czy odpowiedź użytkownika powinna być odbierana raz na operację mail merge
- określ tekst zachęty (tytuł okna podpowiedzi)

Poniższy przykład kodu pokazuje, jak dodać pole `ASK` za pomocą formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Wstawianie pola `AUTHOR` do dokumentu bez użycia narzędzia DocumentBuilder

Pole `AUTHOR` służy do podania nazwiska autora Dokumentu na podstawie właściwości `Document`. Pole `AUTHOR` w dokumencie Word może być reprezentowane przez klasę [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). Za pomocą klasy **FieldAuthor** możesz wykonać następujące operacje:

- podać nazwisko autora dokumentu

Poniższy przykład kodu pokazuje, jak dodać pole `AUTHOR` za pomocą formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Wstawianie pola `INCLUDETEXT` do dokumentu bez użycia narzędzia DocumentBuilder

Pole `INCLUDETEXT` wstawia tekst i grafikę zawartą w dokumencie nazwanym w kodzie pola. Można wstawić cały dokument lub jego część, do której odnosi się zakładka. To pole w dokumencie Word jest reprezentowane przez INCLUDETEXT. Klasę [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) można wykorzystać do wykonania następujących operacji:

- podaj nazwę zakładki dołączanego dokumentu
- określ lokalizację dokumentu

Poniższy przykład kodu pokazuje, jak dodać pole `INCLUDETEXT` za pomocą formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Wstawianie pola `TOA` do dokumentu bez użycia narzędzia DocumentBuilder

Pole `TOA` (*Tabela źródeł*) tworzy i wstawia tabelę źródeł. Pole `TOA` gromadzi wpisy oznaczone polami `TA` (*Table of Authorities Entry*). Microsoft Office Word wstawia pole `TOA` po kliknięciu *Wstaw tabelę źródeł* w grupie **Tabela władz** na karcie **References**. Gdy przeglądasz pole `TOA` w swoim dokumencie, składnia wygląda następująco:

{ `TOA` [Switches ] }

Do wykonywania operacji na polu `TOA` można użyć klasy [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/).

Poniższy przykład kodu pokazuje, jak dodać pole `TOA` za pomocą formatu DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
