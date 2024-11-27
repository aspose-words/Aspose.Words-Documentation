---
title: Praca z właściwościami dokumentu w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z właściwościami dokumentu
linktitle: Praca z właściwościami dokumentu
description: "Aspose.Words for C++ umożliwia przechowywanie niektórych przydatnych informacji o dokumencie, takich jak API i numer wersji lub autoryzowana data, we wbudowanych lub niestandardowych właściwościach dokumentu."
type: docs
weight: 10
url: /pl/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Właściwości dokumentu umożliwiają przechowywanie przydatnych informacji o dokumencie. Właściwości te można podzielić na dwie grupy:

* System lub wbudowane, które zawierają wartości, takie jak tytuł dokumentu, nazwisko autora, statystyki dokumentu i inne.
* Zdefiniowane przez użytkownika lub niestandardowe, dostarczane jako pary nazwa-wartość, w których użytkownik może zdefiniować zarówno nazwę, jak i wartość.

Warto wiedzieć, że informacje o API i numerze wersji są zapisywane bezpośrednio w dokumentach wyjściowych. Na przykład po przekonwertowaniu dokumentu na PDF Aspose.Words wypełnia pole "aplikacja" za pomocą "Aspose.Words", A pole "PDF Producent" za pomocą "Aspose.Words dla C++ YY.M. N", gdzie *YY.M.N* jest wersją Aspose.Words używaną do konwersji. Aby uzyskać więcej informacji, zobacz [Nazwa generatora lub producenta zawarta w dokumentach wyjściowych](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Zauważ, że **cannot direct** Aspose.Words Aby zmienić lub usunąć te informacje z dokumentów wyjściowych.

{{% /alert %}}

## Dostęp Do Właściwości Dokumentu

Aby uzyskać dostęp do Właściwości dokumentu w Aspose.Words użyj:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) aby uzyskać wbudowane właściwości.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) aby uzyskać niestandardowe właściwości.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Klasa [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) pozwala uzyskać nazwę, wartość i typ właściwości dokumentu. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) zwraca obiekt, ale istnieje zestaw metod umożliwiających konwersję wartości właściwości na określony typ. Po zapoznaniu się z typem właściwości możesz użyć jednej z metod **DocumentProperty.ToXXX**, takich jak **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) i **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), aby uzyskać wartość odpowiedniego typu.

Poniższy przykład kodu pokazuje, jak wyliczyć wszystkie wbudowane i niestandardowe właściwości w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

W Microsoft Word możesz uzyskać dostęp do Właściwości dokumentu za pomocą menu" Plik → Właściwości".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Dodawanie lub usuwanie Właściwości dokumentu

Nie można dodawać ani usuwać wbudowanych Właściwości dokumentu za pomocą Aspose.Words. Możesz tylko zmienić lub zaktualizować ich wartości.

Aby dodać niestandardowe właściwości dokumentu za pomocą Aspose.Words, użyj metody [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), przekazując nową nazwę właściwości i wartość odpowiedniego typu. Metoda zwraca nowo utworzony obiekt **DocumentProperty**.

Aby usunąć właściwości niestandardowe, użyj metody [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), przekazując jej nazwę właściwości do usunięcia lub metody [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) do usunięcia właściwości według indeksu. Możesz także usunąć wszystkie właściwości za pomocą metody [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Poniższy przykład kodu sprawdza, czy w dokumencie istnieje właściwość niestandardowa o podanej nazwie i dodaje kilka dodatkowych właściwości dokumentu niestandardowego:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak usunąć niestandardową właściwość dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Zaktualizuj Wbudowane Właściwości Dokumentu

Aspose.Words nie aktualizuje automatycznie Właściwości dokumentu, tak jak Microsoft Word w przypadku niektórych właściwości, ale udostępnia metodę aktualizacji niektórych wbudowanych statystycznych Właściwości dokumentu. Wywołaj metodę [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/), aby ponownie obliczyć i zaktualizować następujące właściwości:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Utwórz nową właściwość niestandardową połączoną z treścią

Aspose.Words udostępnia [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) metodę tworzenia nowej niestandardowej Właściwości dokumentu połączonej z treścią. Ta właściwość zwraca nowo utworzony obiekt Właściwości lub null, Jeśli [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) jest nieprawidłowy.

Poniższy przykład kodu pokazuje, jak skonfigurować łącze do właściwości niestandardowej:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Pobierz Zmienne Dokumentu

Zbiór zmiennych dokumentu można uzyskać za pomocą właściwości [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Nazwy i wartości zmiennych są ciągami.

Poniższy przykład kodu pokazuje, jak wyliczyć zmienne dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Usuń dane osobowe z dokumentu

Jeśli chcesz udostępnić dokument Word innym osobom, możesz usunąć dane osobowe, takie jak nazwisko autora i firma. Aby to zrobić, użyj właściwości [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/), aby ustawić flagę wskazującą, że Microsoft Word usunie wszystkie informacje o użytkowniku z komentarzy, wersji i właściwości dokumentu po zapisaniu dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć dane osobowe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Ustawienie tej opcji w rzeczywistości nie usuwa danych osobowych podczas przetwarzania dokumentu w Aspose.Words i wpływa tylko na zachowanie Microsoft Word.

{{% /alert %}}
