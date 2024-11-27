---
title: Praca z tekstem w tabeli
second_title: Aspose.Words dla C++
articleTitle: Praca z tekstem w tabeli
linktitle: Praca z tekstem w tabeli
description: "Zamień tekst w tabeli w C++. Wyodrębnij zwykły tekst z tabeli lub komórki za pomocą C++."
type: docs
weight: 60
url: /pl/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Jak wspomniano w poprzednich artykułach, tabela zwykle zawiera zwykły tekst, chociaż inne treści, takie jak obrazy, a nawet inne tabele, można umieścić w komórkach tabeli.

Dodawanie tekstu lub innej treści do tabeli odbywa się przy użyciu odpowiednich metod klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) i jest opisane w artykule **"Create a Table"**. W tym artykule porozmawiamy o tym, jak pracować z tekstem w już istniejącej tabeli.

## Zamień tekst w tabeli

Tabela, jak każdy inny węzeł w Aspose.Words, ma dostęp do obiektu [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Za pomocą obiektu zakres tabeli można zastąpić tekst w tabeli.

Obecnie obsługiwana jest możliwość używania znaków specjalnych podczas zastępowania, dzięki czemu możliwe jest zastąpienie istniejącego tekstu tekstem wielopunktowym. Aby to zrobić, musisz użyć specjalnych metaznaków opisanych w odpowiedniej metodzie [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/).

{{% alert color="primary" %}}

Zazwyczaj zastępowanie tekstu powinno odbywać się na poziomie komórki (na komórkę) lub na poziomie akapitu.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastąpić wszystkie wystąpienia ciągu tekstu w komórkach całej tabeli:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Wyodrębnij zwykły tekst z tabeli lub komórki

Za pomocą obiektu **Range** można również wywoływać metody w całym zakresie tabel i wyodrębniać tabelę jako zwykły tekst. Aby to zrobić, użyj właściwości [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Poniższy przykład kodu pokazuje, jak wydrukować zakres tekstu tabeli:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Ta sama technika jest stosowana do ekstrakcji zawartości tylko z pojedynczych komórek tabeli.

Poniższy przykład kodu pokazuje, jak wydrukować zakres tekstowy elementów wiersza i tabeli:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Praca z alternatywnym tekstem tabeli

Microsoft Word tabele mają `table title` i `table description`, które zapewniają alternatywną tekstową reprezentację informacji zawartych w tabeli.

W Aspose.Words Możesz również dodać tytuł i opis tabeli za pomocą właściwości [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) i [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Te właściwości mają znaczenie dla DOCX dokumentów zgodnych z ISO / IEC 29500. Podczas zapisywania w formatach wcześniejszych niż ISO / IEC 29500 te właściwości są ignorowane.

Poniższy przykład kodu pokazuje, jak ustawić właściwości tytułu i opisu tabeli:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
