---
title: Zastąp Pola C++
second_title: Aspose.Words dla C++
articleTitle: Zastąp pola tekstem statycznym
linktitle: Zastąp pola tekstem statycznym
description: "Dowiedz się, jak zastąpić pola tekstem w C++. Zastąp pola danymi statycznymi za pomocą C++ API."
type: docs
weight: 37
url: /pl/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Zastępowanie pól jest często wymagane, gdy chcesz zapisać dokument jako kopię statyczną. Na przykład podczas wysyłania jako załącznik w wiadomości e-mail. Konwersja pól takich jak `DATE` LUB `TIME` na tekst statyczny pozwoli dokumentowi wyświetlić tę samą datę, co w momencie wysłania. Ponadto w niektórych sytuacjach może być konieczne usunięcie warunkowych pól `IF` z dokumentu i zastąpienie ich najnowszym wynikiem tekstowym. Na przykład konwertowanie wyniku pola `IF` na tekst statyczny, aby nie zmieniało już dynamicznie swojej wartości, gdy pola w dokumencie są aktualizowane.

Poniższy diagram pokazuje, jak pole `IF` jest przechowywane w dokumencie:

* tekst jest otoczony specjalnymi węzłami pól - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) i [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* węzeł [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) oddziela tekst w polu na kod pola i wynik pola
* kod pola określa ogólne zachowanie pola, podczas gdy wynik pola zachowuje najnowszy wynik, gdy to pole jest aktualizowane przy użyciu Microsoft Word LUB Aspose.Words
* wynik pola to to, co jest przechowywane w polu i wyświetlane w dokumencie podczas przeglądania

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Strukturę można również zobaczyć poniżej w formie hierarchicznej przy użyciu projektu demonstracyjnego *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Pola, których nie można zastąpić tekstem

Zastąpienie pola tekstem statycznym nie działa poprawnie w przypadku niektórych pól w nagłówku lub stopce.

Na przykład próba konwersji pola `PAGE` w nagłówku lub stopce na tekst statyczny spowoduje wyświetlenie tej samej wartości na wszystkich stronach. Dzieje się tak, ponieważ nagłówki i stopki są powtarzane na wielu stronach, a gdy pozostają jako pola, są obsługiwane szczególnie, aby wyświetlać prawidłowy wynik dla każdej strony.

Jednak w nagłówku pole `PAGE` dobrze tłumaczy się na statyczny przebieg tekstu. Ten przebieg tekstu zostanie oceniony tak, jakby był ostatnią stroną w sekcji, co spowoduje, że dowolne pole `PAGE` w nagłówku wyświetli ostatnią stronę na wszystkich stronach.

Poniższy przykład kodu pokazuje, jak zastąpić pole najnowszym wynikiem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Konwertuj określone typy pól w określonych częściach dokumentu

Ponieważ metoda **ConvertFieldsToStaticText** akceptuje dwa parametry-właściwości [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) i wyliczenie [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), możliwe jest przekazanie dowolnego węzła złożonego do tej metody. Umożliwia to konwersję pól na tekst statyczny tylko w określonych częściach dokumentu.

Na przykład możesz przekazać obiekt [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) i przekonwertować pola określonego typu z całego dokumentu na tekst statyczny lub możesz przekazać obiekt [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) sekcji i przekonwertować tylko pola Znalezione w tej treści.

{{% alert color="primary" %}}

Podczas przekazywania węzła na poziomie bloku, takiego jak [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), Należy pamiętać, że w niektórych przypadkach pola mogą obejmować wiele akapitów. Jeśli tak się stanie, zaleca się przekazanie rodzica kompozytu, aby tego uniknąć.

{{% /alert %}}

Wyliczenie [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) przekazane do metody **ConvertFieldsToStaticText** określa, jaki typ pól należy przekonwertować na tekst statyczny. Każdy inny typ pola znaleziony w dokumencie pozostanie niezmieniony.

Poniższy przykład kodu pokazuje, jak wybrać pola określonego typu – *targetFieldType* w określonym węźle – *compositeNode*, a następnie przekonwertować je na tekst statyczny:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `IF` w dokumencie na tekst statyczny:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `PAGE` w treści dokumentu na tekst statyczny:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Poniższy przykład kodu pokazuje, jak przekonwertować wszystkie pola `IF` w ostatnim akapicie na tekst statyczny:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
