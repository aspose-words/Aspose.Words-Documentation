---
title: Praca z tekstem w tabeli
second_title: Aspose.Words dla Python
articleTitle: Praca z tekstem w tabeli
linktitle: Praca z tekstem w tabeli
description: "Zamień tekst w tabeli w Python. Wyodrębnij zwykły tekst z tabeli lub komórki za pomocą Python."
type: docs
weight: 60
url: /pl/python-net/work-with-text-in-a-table/
---

Jak wspomniano w poprzednich artykułach, tabela zwykle zawiera zwykły tekst, chociaż w komórkach tabeli można umieścić inną zawartość, taką jak obrazy lub nawet inne tabele.

Dodawanie tekstu lub innej treści do tabeli odbywa się przy pomocy odpowiednich metod klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) i zostało opisane w artykule **"Utwórz tabelę"**. W tym artykule porozmawiamy o tym, jak pracować z tekstem w już istniejącej tabeli.

## Zamień tekst w tabeli

Tabela, jak każdy inny węzeł w Aspose.Words, ma dostęp do obiektu [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). Korzystając z obiektu zakresu tabeli, możesz zastąpić tekst w tabeli.

Obecnie obsługiwana jest możliwość użycia znaków specjalnych podczas zastępowania, dzięki czemu możliwe jest zastąpienie istniejącego tekstu tekstem wieloakapitowym. Aby to zrobić, musisz użyć specjalnych metaznaków opisanych w odpowiedniej metodzie [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str).

{{% alert color="primary" %}}

Zazwyczaj zastępowanie tekstu powinno odbywać się na poziomie komórki (na komórkę) lub na poziomie akapitu.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastąpić wszystkie wystąpienia ciągu tekstowego w komórkach całej tabeli:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Wyodrębnij zwykły tekst z tabeli lub komórki

Za pomocą obiektu **Range** można także wywoływać metody w całym zakresie tabeli i wyodrębniać tabelę w postaci zwykłego tekstu. Aby to zrobić, użyj właściwości [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

Poniższy przykład kodu pokazuje, jak wydrukować zakres tekstu tabeli:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

Tę samą technikę stosuje się do wyodrębniania zawartości tylko z poszczególnych komórek tabeli.

Poniższy przykład kodu pokazuje, jak wydrukować zakres tekstu elementów wierszy i tabeli:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Praca z alternatywnym tekstem tabeli

Tabele Microsoft Word zawierają formaty `table title` i `table description`, które stanowią alternatywną tekstową reprezentację informacji zawartych w tabeli.

W formacie Aspose.Words możesz także dodać tytuł i opis tabeli, korzystając z właściwości [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) i [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/). Te właściwości mają znaczenie w przypadku dokumentów DOCX zgodnych z ISO/IEC 29500. Podczas zapisywania w formatach wcześniejszych niż ISO/IEC 29500 te właściwości są ignorowane.

Poniższy przykład kodu pokazuje, jak ustawić właściwości tytułu i opisu tabeli:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

