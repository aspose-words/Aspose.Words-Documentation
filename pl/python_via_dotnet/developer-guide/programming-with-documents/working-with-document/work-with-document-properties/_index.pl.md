---
title: Pracuj z właściwościami dokumentu
second_title: Aspose.Words dla Python via .NET
articleTitle: Pracuj z właściwościami dokumentu
linktitle: Pracuj z właściwościami dokumentu
description: "Aspose.Words dla Python umożliwia przechowywanie niektórych przydatnych informacji o dokumencie, takich jak API i numer wersji lub autoryzowany Date, we wbudowanych lub niestandardowych właściwościach dokumentu."
type: docs
weight: 10
url: /pl/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Właściwości dokumentu umożliwiają przechowywanie przydatnych informacji o dokumencie. Właściwości te można podzielić na dwie grupy:

* Systemowe lub wbudowane, które zawierają wartości takie jak tytuł dokumentu, nazwisko autora, statystyki dokumentu i inne.
* Zdefiniowane przez użytkownika lub niestandardowe, dostarczane jako pary nazwa-wartość, w których użytkownik może zdefiniować zarówno nazwę, jak i wartość.

Warto wiedzieć, że informacje o API i numerze wersji są bezpośrednio zapisywane w dokumentach wyjściowych. Na przykład po konwersji dokumentu do formatu PDF Aspose.Words wypełnia pole "Aplikacja" wartością "Aspose.Words", a pole "Producent PDF" wartością "Aspose.Words for .NET YY.MN", gdzie *YY.M.N* to wersja Aspose.Words używana do konwersji. Więcej szczegółów znajdziesz w [Nazwa generatora lub producenta zawarta w dokumentach wyjściowych](/words/pl/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Pamiętaj, że w formacie **nie może reżyserować** Aspose.Words możesz zmienić lub usunąć te informacje z dokumentów wyjściowych.

{{% /alert %}}

## Uzyskaj dostęp do właściwości dokumentu

Aby uzyskać dostęp do właściwości dokumentu w formacie Aspose.Words, użyj:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) w celu uzyskania wbudowanych właściwości.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) w celu uzyskania niestandardowych właściwości.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) i [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) to zbiory obiektów [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Obiekty te można uzyskać za pomocą właściwości indeksatora według nazwy lub indeksu.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) dodatkowo zapewnia dostęp do właściwości dokumentu poprzez zestaw wprowadzanych właściwości, które zwracają wartości odpowiedniego typu. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) umożliwia dodawanie lub usuwanie właściwości dokumentu z dokumentu.

Klasa [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) pozwala uzyskać nazwę, wartość i typ właściwości dokumentu. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) zwraca obiekt, ale istnieje zestaw metod umożliwiających przekonwertowanie wartości właściwości na określony typ. Po zapoznaniu się z typem właściwości można skorzystać z jednej z metod **Właściwość dokumentu.to_XXX**, np. **Właściwość dokumentu.\_\_str\_\_** i [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), w celu uzyskania wartości odpowiedniego typu.

Poniższy przykład kodu pokazuje, jak wyliczyć wszystkie właściwości wbudowane i niestandardowe w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

W Microsoft Word dostęp do właściwości dokumentu można uzyskać za pomocą menu "Plik → Właściwości".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="praca z-właściwościami-dokumentu-1.png" style="width:400px"/>

## Dodaj lub usuń właściwości dokumentu

Nie można dodawać ani usuwać wbudowanych właściwości dokumentu za pomocą Aspose.Words. Można jedynie zmieniać lub aktualizować ich wartości.

Aby dodać niestandardowe właściwości dokumentu za pomocą Aspose.Words, użyj metody [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), przekazując nową nazwę właściwości i wartość odpowiedniego typu. Metoda zwraca nowo utworzony obiekt [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/).

Aby usunąć właściwości niestandardowe, użyj metody [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), przekazując jej nazwę właściwości do usunięcia, lub metody [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/), aby usunąć właściwość według indeksu. Możesz także usunąć wszystkie właściwości za pomocą metody [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

Poniższy przykład kodu sprawdza, czy w dokumencie istnieje niestandardowa właściwość o podanej nazwie i dodaje kilka dodatkowych niestandardowych właściwości dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak usunąć niestandardową właściwość dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Zaktualizuj wbudowane właściwości dokumentu

Aspose.Words nie aktualizuje automatycznie właściwości dokumentu, jak robi to Microsoft Word w przypadku niektórych właściwości, ale zapewnia metodę aktualizacji niektórych wbudowanych właściwości statystycznych dokumentu. Wywołaj metodę [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/), aby ponownie obliczyć i zaktualizować następujące właściwości:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Utwórz nową właściwość niestandardową połączoną z zawartością

Aspose.Words udostępnia metodę [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) do tworzenia nowej niestandardowej właściwości dokumentu powiązanej z treścią. Ta właściwość zwraca nowo utworzony obiekt właściwości lub wartość null, jeśli plik **źródło_linku** jest nieprawidłowy.

Poniższy przykład kodu pokazuje, jak skonfigurować łącze do właściwości niestandardowej:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Pobierz zmienne dokumentu

Kolekcję zmiennych dokumentu można uzyskać za pomocą właściwości [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Nazwy i wartości zmiennych są ciągami znaków.

Poniższy przykład kodu pokazuje, jak dodawać zmienne dokumentu i uzyskiwać do nich dostęp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Usuń dane osobowe z dokumentu

Jeśli chcesz udostępnić dokument programu Word innym osobom, możesz usunąć dane osobowe, takie jak imię i nazwisko autora i firma. Aby to zrobić, użyj właściwości [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/), aby ustawić flagę wskazującą, że Microsoft Word usunie wszystkie informacje o użytkowniku z komentarzy, wersji i właściwości dokumentu po zapisaniu dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć dane osobowe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Ustawienie tej opcji w rzeczywistości nie usuwa danych osobowych podczas przetwarzania dokumentu w Aspose.Words i wpływa jedynie na zachowanie Microsoft Word.

{{% /alert %}}
