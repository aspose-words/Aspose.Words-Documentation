---
title: Wstaw Pola w C++
second_title: Aspose.Words dla C++
articleTitle: Wstaw Pola
linktitle: Wstaw Pola
description: "Różne sposoby wstawiania pól do dokumentu za pomocą C++."
type: docs
weight: 20
url: /pl/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Istnieje kilka różnych sposobów wstawiania pól do dokumentu:

- użycie [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- użycie [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- używanie [Aspose.Words Obiektowy Model Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/)

W tym artykule przyjrzymy się każdemu sposobowi bardziej szczegółowo i przeanalizujemy, jak wstawić określone pola za pomocą tych opcji.

## Wstawianie pól do dokumentu za pomocą DocumentBuilder

W Aspose.Words metoda [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) służy do wstawiania nowych pól do dokumentu. Pierwszy parametr akceptuje Pełny kod pola pola, które ma zostać wstawione. Drugi parametr jest opcjonalny i umożliwia ręczne ustawienie wyniku pola pola. Jeśli nie zostanie to dostarczone, pole zostanie automatycznie zaktualizowane. Możesz przekazać null lub empty do tego parametru, aby wstawić pole z pustą wartością pola. Jeśli nie masz pewności co do konkretnej składni kodu pola, najpierw Utwórz pole w Microsoft Word i przełącz, aby zobaczyć jego kod pola.

{{% alert color="primary" %}}

Jeśli kod pola ma parametr zawierający spację, musi być zamknięty w znakach mowy. W przeciwnym razie pole w obu Microsoft Word i Aspose.Words może nie działać zgodnie z oczekiwaniami, ponieważ parametr jest traktowany przez oba jako obcięty

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak wstawić pole scalania do dokumentu za pomocą **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Ta sama technika jest używana do wstawiania pól zagnieżdżonych w innych polach.

Poniższy przykład kodu pokazuje, jak wstawić pola zagnieżdżone w innym polu za pomocą **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Określ ustawienia regionalne na poziomie pola

Identyfikator języka to standardowy międzynarodowy skrót numeryczny języka w kraju lub regionie geograficznym. Za pomocą Aspose.Words możesz określić ustawienia regionalne na poziomie pola za pomocą właściwości [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), która pobiera lub ustawia ustawienia regionalne pola ID.

Poniższy przykład kodu pokazuje, jak korzystać z tej opcji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Wstaw Nieobtypowane / Puste Pole

Jeśli chcesz wstawić nieobtypowane / puste pola ({}) tak, jak pozwala na to Microsoft Word, możesz użyć metody [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) z parametrem [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Aby wstawić pole do dokumentu Word, możesz nacisnąć kombinację klawiszy "Ctrl + F9".

Poniższy przykład kodu pokazuje, jak wstawić puste pole do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Wstawianie pól do dokumentu za pomocą FieldBuilder

Alternatywnym sposobem wstawiania pól w Aspose.Words jest klasa [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Zapewnia płynny interfejs do określania przełączników pól i wartości argumentów jako tekstu, węzłów, a nawet zagnieżdżonych pól.

Poniższy przykład kodu pokazuje, jak wstawić pole do dokumentu za pomocą **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Wstawianie pól za pomocą DOM

Możesz także wstawiać różne typy pól za pomocą [Aspose.Words Obiektowy Model Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/). W tej sekcji przyjrzymy się kilku przykładom.

### Wstawianie pola scalania do dokumentu za pomocą DOM

Pole `MERGEFIELD` w dokumencie Word może być reprezentowane przez klasę [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Klasy **FieldMergeField** można użyć do wykonania następujących operacji:

- określ nazwę pola scalania
- określ formatowanie pola scalania
- określ tekst znajdujący się między separatorem pola a końcem pola pola scalania
- określ tekst, który ma zostać wstawiony po polu scalania, jeśli pole nie jest puste
- określ tekst, który ma zostać wstawiony przed polem scalania, jeśli pole nie jest puste

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `MERGE` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Wstawianie pola bloku adresu Mail Merge do dokumentu za pomocą DOM

Pole `ADDRESSBLOCK` służy do wstawiania bloku adresu Mail Merge do dokumentu Word. Pole `ADDRESSBLOCK` w dokumencie Word może być reprezentowane przez klasę [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Klasy **FieldAddressBlock** można użyć do wykonania następujących operacji:

- określ, czy w polu należy podać nazwę kraju/regionu
- określ, czy adres ma być sformatowany zgodnie z krajem / regionem odbiorcy zgodnie z definicją POST * CODE (Universal Postal Union 2006)
- podaj wykluczoną nazwę kraju / regionu
- określ format nazwy i adresu
- określ język ID używany do formatowania adresu

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole Mail Merge `ADDRESSBLOCK` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Wstawianie pola Advance do dokumentu bez użycia DocumentBuilder

Pole `ADVANCE` służy do przesuwania kolejnego tekstu w linii w lewo, w prawo, w górę lub w dół. Pole `ADVANCE` w dokumencie Word może być reprezentowane przez klasę [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Możesz użyć klasy FieldAdvance do wykonania następujących operacji:

- określ liczbę punktów, o które tekst następujący po polu powinien zostać przesunięty pionowo od górnej krawędzi strony
- określ liczbę punktów, o które tekst następujący po polu powinien zostać przesunięty poziomo od lewej krawędzi kolumny, ramki lub pola tekstowego
- określ liczbę punktów, o które tekst następujący po polu powinien zostać przesunięty w lewo, w prawo, w górę lub w dół

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `ADVANCE` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Wstawianie pola `ASK` do dokumentu bez użycia DocumentBuilder

Pole `ASK` służy do monitowania użytkownika o przypisanie tekstu do zakładki w dokumencie Word. Pole `ASK` w dokumencie Word może być reprezentowane przez klasę [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Klasy **FieldAsk** można użyć do wykonania następujących operacji:

- określ nazwę zakładki
- określ domyślną odpowiedź użytkownika (wartość początkowa zawarta w oknie monitu)
- określ, czy odpowiedź użytkownika powinna zostać odebrana raz na operację Mail Merge
- określ tekst zachęty (tytuł okna zachęty)

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `ASK` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Wstawianie pola `AUTHOR` do dokumentu bez użycia DocumentBuilder

Pole `AUTHOR` służy do określenia nazwy autora dokumentu z właściwości `Document`. Pole `AUTHOR` w dokumencie Word może być reprezentowane przez klasę [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Klasy **FieldAuthor** można użyć do wykonania następujących operacji:

- podaj nazwisko autora dokumentu

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `AUTHOR` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Wstawianie pola `INCLUDETEXT` do dokumentu bez użycia DocumentBuilder

Pole `INCLUDETEXT` wstawia tekst i grafikę zawarte w dokumencie nazwanym w kodzie pola. Możesz wstawić cały dokument lub część dokumentu, do którego odnosi się zakładka. To pole w dokumencie Word jest reprezentowane przez INCLUDETEXT. Klasy [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) można użyć do wykonania następujących operacji:

- określ nazwę zakładki dołączonego dokumentu
- określ lokalizację dokumentu

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `INCLUDETEXT` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Wstawianie pola `TOA` do dokumentu bez użycia DocumentBuilder

Pole `TOA` (*Table of Authorities*) tworzy i wstawia tabelę władz. Pole `TOA` zbiera wpisy oznaczone polami `TA` (*Table of Authorities Entry*). Microsoft Office Word wstawia pole `TOA` Po kliknięciu *Insert Table of Authorities* w grupie **Table of Authorities** na karcie **References**. Gdy wyświetlasz pole `TOA` w dokumencie, składnia wygląda następująco:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Aby uzyskać więcej informacji, zobacz [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dodać pole `TOA` za pomocą DOM do akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
