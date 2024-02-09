---
title: Zamień pola Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Zamień pola na tekst statyczny
linktitle: Zamień pola na tekst statyczny
description: "Dowiedz się, jak zastąpić pola tekstem w Python. Zastąp pola danymi statycznymi przy użyciu formatu Python via .NET API."
type: docs
weight: 37
url: /pl/python-net/replace-fields/
---

Zastąpienie pól jest często wymagane, jeśli chcesz zapisać dokument jako kopię statyczną. Na przykład podczas wysyłania jako załącznik do wiadomości e-mail. Konwersja pól takich jak `DATE` lub `TIME` na tekst statyczny umożliwi wyświetlanie w dokumencie tej samej daty, co w momencie wysłania. Ponadto w niektórych sytuacjach może być konieczne usunięcie warunkowych pól `IF` z dokumentu i zastąpienie ich najnowszym wynikiem tekstowym. Na przykład konwersja wyniku pola `IF` na tekst statyczny, dzięki czemu nie będzie on już dynamicznie zmieniał swojej wartości po aktualizacji pól w dokumencie.

Poniższy diagram pokazuje, w jaki sposób pole `IF` jest przechowywane w dokumencie:

* tekst otoczony jest specjalnymi węzłami pól – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) i [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* węzeł [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) oddziela tekst w polu na kod pola i wynik pola
* kod pola określa ogólne zachowanie pola, natomiast wynik pola zachowuje najnowszy wynik, gdy pole jest aktualizowane za pomocą formatu Microsoft Word lub Aspose.Words
* wynik pola to wynik zapisany w polu i wyświetlony w dokumencie podczas przeglądania

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Strukturę można również zobaczyć poniżej w formie hierarchicznej za pomocą [projekt demonstracyjny *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)X*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Pola, których nie można zastąpić tekstem

Zastąpienie pola tekstem statycznym nie działa poprawnie w przypadku niektórych pól nagłówka lub stopki.

Na przykład próba konwersji pola `PAGE` w nagłówku lub stopce na tekst statyczny spowoduje wyświetlenie tej samej wartości na wszystkich stronach. Dzieje się tak dlatego, że nagłówki i stopki powtarzają się na wielu stronach, a gdy pozostają polami, są traktowane w taki sposób, aby wyświetlały prawidłowy wynik dla każdej strony.

Jednak w nagłówku pole `PAGE` dobrze przekłada się na statyczny ciąg tekstu. Ten ciąg tekstu zostanie oceniony tak, jakby był ostatnią stroną w sekcji, co spowoduje, że dowolne pole `PAGE` w nagłówku wyświetli ostatnią stronę na wszystkich stronach.

Poniższy przykład kodu pokazuje, jak zastąpić pole najnowszym wynikiem:

PRZYKŁAD

## Konwertuj określone typy pól w określonych częściach dokumentu

Ponieważ metoda **ConvertFieldsToStaticText** przyjmuje dwa parametry – właściwości [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) i wyliczenie [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), możliwe jest przekazanie do tej metody dowolnego węzła złożonego. Pozwala to na konwersję pól na tekst statyczny tylko w określonych częściach dokumentu.

Na przykład możesz przekazać obiekt [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i przekonwertować pola określonego typu z całego dokumentu na tekst statyczny lub możesz przekazać obiekt [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) sekcji i przekonwertować tylko pola znalezione w tej treści.

{{% alert color="primary" %}}

Podczas przekazywania węzła na poziomie bloku, takiego jak [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), należy pamiętać, że w niektórych przypadkach pola mogą obejmować wiele akapitów. Jeśli tak się stanie, zaleca się przekazanie elementu nadrzędnego kompozytu, aby tego uniknąć.

{{% /alert %}}

Wyliczenie [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) przekazane do metody **ConvertFieldsToStaticText** określa, jakiego typu pola należy skonwertować na tekst statyczny. Każdy inny typ pola znaleziony w dokumencie pozostanie niezmieniony.

Poniższy przykład kodu pokazuje, jak wybrać pola określonego typu – *targetFieldType* w konkretnym węźle – *compositeNode*, a następnie przekonwertować je na tekst statyczny:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `IF` w dokumencie na tekst statyczny:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `PAGE` w treści dokumentu na tekst statyczny:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `IF` w ostatnim akapicie na tekst statyczny:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}