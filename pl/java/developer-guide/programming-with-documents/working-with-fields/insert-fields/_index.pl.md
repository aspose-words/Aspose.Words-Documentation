---
title: Wstaw pola Java
second_title: Aspose.Words zamiast Java
articleTitle: Wstaw pola
linktitle: Wstaw pola
description: "Różne sposoby wprowadzania pól do dokumentu za pomocą Java."
type: docs
weight: 20
url: /pl/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Istnieje kilka różnych sposobów umieszczania pól w dokumencie:

- [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- [Aspose.Words Document Object Model (DOM)](/words/pl/java/aspose-words-document-object-model/)

W tym artykule, będziemy patrzeć na każdy sposób bardziej szczegółowo i przeanalizować, jak umieścić pewne pola przy użyciu tych opcji.

## Wstawianie pól do dokumentu przy użyciu DocumentBuilder

W Aspose.Words do [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) metoda jest używana do wprowadzania nowych pól do dokumentu. Pierwszy parametr akceptuje pełny kod pola, które ma zostać wstawione. Drugi parametr jest opcjonalny i pozwala na ręczne ustawienie wyniku pola. Jeśli to nie jest dostarczone, pole jest automatycznie aktualizowane. Możesz podać null lub pustym do tego parametru, aby umieścić pole o pustej wartości pola. Jeśli nie jesteś pewien konkretnej składni kodu pola, stwórz pole w Microsoft Word pierwszy i przełącz, aby zobaczyć jego kod pola.

{{% alert color="primary" %}}

Jeśli Twój kod pola ma parametr zawierający przestrzeń, to musi być umieszczony wewnątrz znaków mowy. W przeciwnym razie pole w obu Microsoft Word oraz Aspose.Words nie może działać tak, jak oczekiwano, ponieważ parametr jest traktowany przez oba jako obcinany.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak wstawić pole scalania do dokumentu używając **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Tę samą technikę stosuje się do umieszczania pól zagnieżdżonych w innych polach.

Poniższy przykład kodu pokazuje jak wstawić pola zagnieżdżone w innym polu używając **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Określić położenie na poziomie pola

Identyfikator języka jest standardowym międzynarodowym skrótem numerycznym dla danego języka w kraju lub regionie geograficznym. Z Aspose.Words, możesz określić Locale na poziomie pola za pomocą [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) nieruchomość, która pobiera lub ustawia identyfikator lokalizacji pola.

Poniższy przykład kodu pokazuje jak korzystać z tej opcji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Wstaw niewpisane / puste pole

Jeśli chcesz wstawić niewpisane / puste pola ({}) just like Microsoft Word pozwala, można użyć [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metoda z [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parametr. Aby umieścić pole w dokumencie Word, można nacisnąć kombinację klawiszy Ctrl + F9.

Poniższy przykład kodu pokazuje jak umieścić puste pole w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Wstaw `COMPARE` Pole

W `COMPARE` pole porównuje dwie wartości i zwraca wartość liczbową 1, jeśli porównanie jest true lub 0, jeśli porównanie jest false.

Poniższy przykład kodu pokazuje jak dodać `COMPARE` pola używające DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Wstaw `IF` Pole

W `IF` pole może być użyte do oceny argumentów warunkowo.

Poniższy przykład kodu pokazuje jak dodać `IF` pola używające DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Wstawianie pól do dokumentu przy użyciu FieldBuilder

Alternatywny sposób umieszczania pól w Aspose.Words jest [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) Klasa. Zapewnia płynny interfejs do określenia przełączników pola i wartości argumentów jako tekst, węzły lub nawet zagnieżdżone pola.

Poniższy przykład kodu pokazuje jak wstawić pole do dokumentu używając **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Wstawianie pól DOM

Można również wprowadzić różne rodzaje pól za pomocą [Aspose.Words Document Object Model (DOM)](/words/pl/java/aspose-words-document-object-model/). W tej części przyjrzymy się kilku przykładom.

### Wstawianie połączenia Pole w dokumencie DOM

`MERGEFIELD` pole w dokumencie Word może być reprezentowane przez [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Klasa. Możesz użyć **FieldMergeField** klasa do wykonywania następujących operacji:

- podać nazwę pola połączenia
- określić formatowanie pola połączenia
- określić tekst, który znajduje się pomiędzy separatorem pola a końcem pola pola połączenia
- określić tekst, który ma być wstawiony po polu scalania, jeśli pole nie jest puste
- określić tekst, który ma być wstawiony przed polem połączenia, jeśli pole nie jest puste

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `MERGE` użycie pola DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Wprowadzanie Mail Merge `ADDRESSBLOCK` pole w dokumencie DOM

W `ADDRESSBLOCK` pole jest używane do wprowadzenia mail merge blok adresu w dokumencie Word. `ADDRESSBLOCK` pole w dokumencie Word może być reprezentowane przez [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Klasa. Możesz użyć **FieldAddressBlock** klasa do wykonywania następujących operacji:

- określić, czy włączyć nazwę kraju / regionu do pola
- określić, czy należy formatować adres w zależności od kraju / regionu odbiorcy w rozumieniu POST * CODE (Universal Postal Union 2006)
- podać wyłączoną nazwę kraju / regionu
- określić format nazwy i adresu
- określić identyfikator języka używany do formatowania adresu

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać Mail Merge `ADDRESSBLOCK` Pole DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Wprowadzanie `ADVANCE` pole do dokumentu bez korzystania z DocumentBuilder

W `ADVANCE` pole jest używane do przesunięcia kolejnego tekstu w linii w lewo, prawo, w górę lub w dół. `ADVANCE` pole w dokumencie Word może być reprezentowane przez [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Klasa. Można użyć **FieldAdvance** klasa do wykonywania następujących operacji:

- określić liczbę punktów, za pomocą których tekst po polu powinien być przesunięty pionowo od górnej krawędzi strony
- określić liczbę punktów, za pomocą których tekst po polu powinien być przesunięty poziomo od lewej krawędzi kolumny, ramki lub pola tekstowego
- określić liczbę punktów, w których tekst po polu powinien być przesunięty w lewo, w prawo, w górę lub w dół

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `ADVANCE` Pole DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Wprowadzanie `ASK` pole do dokumentu bez korzystania z DocumentBuilder

W `ASK` pole służy do wywołania przez użytkownika tekstu przypisania do zakładki w dokumencie Word. `ASK` pole w dokumencie Word może być reprezentowane przez [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Klasa. Możesz użyć **FieldAsk** klasa do wykonywania następujących operacji:

- podać nazwę zakładki
- określenie domyślnej odpowiedzi użytkownika (wartość początkowa zawarta w oknie "prompt")
- określić, czy odpowiedź użytkownika powinna być odbierana raz na mail merge działanie
- określić tekst (tytuł okna)

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `ASK` Pole DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Wprowadzanie `AUTHOR` pole do dokumentu bez korzystania z DocumentBuilder

W `AUTHOR` pole służy do określenia nazwy autora dokumentu z `Document` nieruchomości. `AUTHOR` pole w dokumencie Word może być reprezentowane przez [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Klasa. Możesz użyć **FieldAuthor** klasa do wykonywania następujących operacji:

- podać nazwę autora dokumentu

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `AUTHOR` Pole DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Wprowadzanie `INCLUDETEXT` pole do dokumentu bez korzystania z DocumentBuilder

W `INCLUDETEXT` pole wprowadza tekst i grafikę zawarte w dokumencie określonym w kodzie pola. Można wstawić cały dokument lub część dokumentu, o którym mowa w zakładce. To pole w dokumencie Word jest reprezentowane przez INCLUDETEXT. Możesz użyć [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) klasa do wykonywania następujących operacji:

- podać nazwę dołączonego dokumentu zakładki
- określić lokalizację dokumentu

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `INCLUDETEXT` użycie pola DOM do ustępu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Wprowadzanie `TOA` pole do dokumentu bez korzystania z DocumentBuilder

W `TOA` (* Tabela organów *) pole buduje i umieszcza tabelę organów. W `TOA` pole zbiera wpisy oznaczone przez `TA` (* Tabela wpisów organów *). Microsoft Office Word wprowadza `TOA` pole po kliknięciu * Wstaw tabelę organów * w **Tabela organów** Grupa **References** Tab. Kiedy oglądasz `TOA` pole w dokumencie, składnia wygląda tak:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Więcej szczegółów na stronie internetowej: [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) klasa API.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak dodać `TOA` użycie pola DOM do ustępu w dokumencie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
