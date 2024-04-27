---
title: Praca z właściwościami dokumentu w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z właściwościami dokumentu
linktitle: Praca z właściwościami dokumentu
description: "Aspose.Words zamiast Java pozwala na przechowywanie pewnych przydatnych informacji o dokumencie, takich jak API oraz numer wersji lub autoryzowany Date, w właściwościach built- in lub niestandardowych dokumentów."
type: docs
weight: 10
url: /pl/java/work-with-document-properties/
---

Właściwości dokumentu pozwalają na przechowywanie pewnych przydatnych informacji o dokumencie. Właściwości te można podzielić na dwie grupy:

* System lub built- in, które zawierają wartości takie jak tytuł dokumentu, nazwa autora, statystyki dokumentów i inne.
* User- definiowane lub niestandardowe, dostarczane jako pary wartości nazw, gdzie użytkownik może zdefiniować zarówno nazwę jak i wartość.

Warto wiedzieć, że informacje na temat API i numer wersji jest bezpośrednio zapisywany do dokumentów wyjściowych. Na przykład, po konwersji dokumentu do PDF, Aspose.Words wypełnia pole "Aplikacja" z "Aspose.Words"i" PDF producent "pole z"Aspose.Words zamiast Java RR.M.N ", gdzie *YY.M.N* jest wersją Aspose.Words używane do konwersji. Więcej informacji na ten temat znajduje się w sekcji [Generator lub Nazwa producenta Zawarte w dokumentach wyciągniętych](/words/pl/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Zauważ, że **nie może kierować** Aspose.Words zmienić lub usunąć te informacje z dokumentów wyjściowych.

{{% /alert %}}

## Właściwości dokumentu dostępu

Aby uzyskać dostęp do właściwości dokumentów w Aspose.Words podanie:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) aby uzyskać built- in nieruchomości.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) do uzyskania właściwości niestandardowych.

**BuiltInDocumentProperties** oraz **CustomDocumentProperties** są kolekcjami [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) obiektów. Obiekty te można uzyskać przez właściwość indeksera według nazwy lub indeksu.

**BuiltInDocumentProperties** dodatkowo zapewnia dostęp do właściwości dokumentu poprzez zestaw wprowadzonych właściwości, które zwracają wartości odpowiedniego typu. **CustomDocumentProperties** umożliwia dodanie lub usunięcie właściwości dokumentu z dokumentu.

W [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) klasa pozwala uzyskać nazwę, wartość i typ właściwości dokumentu. [Value] https: / / reference.aspose.com / words / java / com.aspose.words / documentproperty # Value) zwraca obiekt, ale istnieje zestaw metad umorzenia wartości własności przemysłowej na okreslony typ. Po wejściu typu nieruchomości, może wystąpić jedno z {0} Metody, takie jak {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) oraz **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), uzyskanie wartości odpowiedniego typu.

Poniższy przykład kodu pokazuje, jak zapisać wszystkie wbudowane i niestandardowe właściwości w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

W Microsoft Word, można uzyskać dostęp do właściwości dokumentu za pomocą menu "Plik → Właściwości".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Dodaj lub usuń właściwości dokumentu

Nie można dodawać lub usuwać właściwości built- in dokumentu za pomocą Aspose.Words. Możesz tylko zmieniać lub aktualizować ich wartości.

Aby dodać niestandardowe właściwości dokumentu z Aspose.Words, stosować [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) metoda, podająca nową nazwę właściwości i wartość odpowiedniego typu. Metoda zwraca nowo utworzone **DocumentProperty** obiekt.

Aby usunąć niestandardowe właściwości, użyj [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) metody, podając jej nazwę właściwości do usunięcia, lub [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) metoda usuwania właściwości przez indeks. Można również usunąć wszystkie właściwości za pomocą [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) Metoda.

Poniższy przykład kodu sprawdza, czy właściwość własna o podanej nazwie istnieje w dokumencie i dodaje kilka innych właściwości dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje jak usunąć właściwość dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Aktualizuj właściwości built- In Document

Aspose.Words nie aktualizuje automatycznie właściwości dokumentu, jak Microsoft Word posiada pewne właściwości, ale dostarcza metody do aktualizacji niektórych statystycznych built- w właściwościach dokumentu. Zadzwoń [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) metoda przeliczania i aktualizacji następujących właściwości:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Utwórz nową właściwość użytkownika powiązaną z treścią

Aspose.Words zapewnia [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) metoda tworzenia nowej właściwości dokumentu niestandardowego powiązanej z treścią. Ta właściwość zwraca nowo utworzony obiekt właściwości lub null jeśli [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) jest nieważny.

Poniższy przykład kodu pokazuje jak skonfigurować link do właściwości niestandardowych:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Pobierz zmienne dokumentu

Możesz uzyskać zbiór zmiennych dokumentu za pomocą [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) nieruchomości. Zmienne nazwy i wartości są strunami.

Poniższy przykład kodu pokazuje, jak zapisać zmienne dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Usuń dane osobowe z dokumentu

Jeśli chcesz podzielić się dokumentem Word z innymi ludźmi, możesz usunąć dane osobowe, takie jak nazwisko autora i firma. Aby to zrobić należy użyć [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) właściwość do ustawienia znacznika wskazująca, że Microsoft Word usunie wszystkie informacje o użytkowniku z komentarzy, poprawek i właściwości dokumentu po zapisaniu dokumentu.

{{% alert color="primary" %}}

Ustawienie tej opcji nie usuwa danych osobowych podczas przetwarzania dokumentu w Aspose.Words i dotyczy tylko Microsoft Word zachowanie.

{{% /alert %}}
