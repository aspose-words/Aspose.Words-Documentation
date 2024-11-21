---
title: Pracuj z właściwościami dokumentu w C#
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z właściwościami dokumentu
linktitle: Pracuj z właściwościami dokumentu
description: "Aspose.Words dla .NET umożliwia przechowywanie niektórych przydatnych informacji o dokumencie, takich jak API i numer wersji lub autoryzowany Date, we wbudowanych lub niestandardowych właściwościach dokumentu przy użyciu C#."
type: docs
weight: 10
url: /pl/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Właściwości dokumentu umożliwiają przechowywanie przydatnych informacji o dokumencie. Właściwości te można podzielić na dwie grupy:

* Systemowe lub wbudowane, które zawierają wartości takie jak tytuł dokumentu, nazwisko autora, statystyki dokumentu i inne.
* Zdefiniowane przez użytkownika lub niestandardowe, dostarczane jako pary nazwa-wartość, w których użytkownik może zdefiniować zarówno nazwę, jak i wartość.

Warto wiedzieć, że informacje o API i numerze wersji są bezpośrednio zapisywane w dokumentach wyjściowych. Na przykład podczas konwersji dokumentu do formatu PDF Aspose.Words wypełnia pole "Aplikacja" wartością "Aspose.Words", a pole "Producent PDF" wartością "Aspose.Words for .NET YY.MN", gdzie *YY.M.N* to wersja Aspose.Words używana do konwersji. Więcej szczegółów znajdziesz w [Nazwa generatora lub producenta zawarta w dokumentach wyjściowych](/words/pl/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Pamiętaj, że w formacie **nie może reżyserować** Aspose.Words możesz zmienić lub usunąć te informacje z dokumentów wyjściowych.

{{% /alert %}}

## Uzyskaj dostęp do właściwości dokumentu

Aby uzyskać dostęp do właściwości dokumentu w formacie Aspose.Words, użyj:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) w celu uzyskania wbudowanych właściwości.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) w celu uzyskania niestandardowych właściwości.

**BuiltInDocumentProperties** i **CustomDocumentProperties** to zbiory obiektów [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/). Obiekty te można uzyskać za pomocą właściwości indeksatora według nazwy lub indeksu.

**BuiltInDocumentProperties** dodatkowo zapewnia dostęp do właściwości dokumentu poprzez zestaw wprowadzanych właściwości, które zwracają wartości odpowiedniego typu. **CustomDocumentProperties** umożliwia dodawanie lub usuwanie właściwości dokumentu z dokumentu.

Klasa [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) pozwala uzyskać nazwę, wartość i typ właściwości dokumentu. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) zwraca obiekt, ale istnieje zestaw metod umożliwiających przekonwertowanie wartości właściwości na określony typ. Po zapoznaniu się z typem właściwości można skorzystać z jednej z metod **DocumentProperty.ToXXX**, np. **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) i **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), w celu uzyskania wartości odpowiedniego typu.

Poniższy przykład kodu pokazuje, jak wyliczyć wszystkie właściwości wbudowane i niestandardowe w dokumencie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

W Microsoft Word dostęp do właściwości dokumentu można uzyskać za pomocą menu "Plik → Właściwości".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="praca z-właściwościami-dokumentu-1.png" style="width:400px"/>

## Dodaj lub usuń właściwości dokumentu

Nie można dodawać ani usuwać wbudowanych właściwości dokumentu za pomocą Aspose.Words. Można jedynie zmieniać lub aktualizować ich wartości.

Aby dodać niestandardowe właściwości dokumentu za pomocą Aspose.Words, użyj metody [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), przekazując nową nazwę właściwości i wartość odpowiedniego typu. Metoda zwraca nowo utworzony obiekt **DocumentProperty**.

Aby usunąć właściwości niestandardowe, użyj metody [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), przekazując jej nazwę właściwości do usunięcia, lub metody [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at), aby usunąć właściwość według indeksu. Możesz także usunąć wszystkie właściwości za pomocą metody [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

Poniższy przykład kodu sprawdza, czy w dokumencie istnieje niestandardowa właściwość o podanej nazwie i dodaje kilka dodatkowych niestandardowych właściwości dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak usunąć niestandardową właściwość dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Zaktualizuj wbudowane właściwości dokumentu

Aspose.Words nie aktualizuje automatycznie właściwości dokumentu, jak robi to Microsoft Word w przypadku niektórych właściwości, ale zapewnia metodę aktualizacji niektórych wbudowanych właściwości statystycznych dokumentu. Wywołaj metodę [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/), aby ponownie obliczyć i zaktualizować następujące właściwości:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Utwórz nową właściwość niestandardową połączoną z zawartością

Aspose.Words udostępnia metodę [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) do tworzenia nowej niestandardowej właściwości dokumentu powiązanej z treścią. Ta właściwość zwraca nowo utworzony obiekt właściwości lub wartość null, jeśli plik [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) jest nieprawidłowy.

Poniższy przykład kodu pokazuje, jak skonfigurować łącze do właściwości niestandardowej:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Pobierz zmienne dokumentu

Kolekcję zmiennych dokumentu można uzyskać za pomocą właściwości [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Nazwy i wartości zmiennych są ciągami znaków.

Poniższy przykład kodu pokazuje, jak wyliczyć zmienne dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Usuń dane osobowe z dokumentu

Jeśli chcesz udostępnić dokument programu Word innym osobom, możesz usunąć dane osobowe, takie jak imię i nazwisko autora i firma. Aby to zrobić, użyj właściwości [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/), aby ustawić flagę wskazującą, że Microsoft Word usunie wszystkie informacje o użytkowniku z komentarzy, wersji i właściwości dokumentu po zapisaniu dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć dane osobowe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Ustawienie tej opcji w rzeczywistości nie usuwa danych osobowych podczas przetwarzania dokumentu w Aspose.Words i wpływa jedynie na zachowanie Microsoft Word.

{{% /alert %}}
