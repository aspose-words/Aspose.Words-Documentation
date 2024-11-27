---
title: Praca z kolumnami i wierszami w C++
second_title: Aspose.Words dla C++
articleTitle: Pracuj z kolumnami i wierszami
linktitle: Pracuj z kolumnami i wierszami
description: "Praca z częściami tabeli-wiersze, kolumny i komórki przy użyciu C++. Określ Wiersz Nagłówka C++."
type: docs
weight: 30
url: /pl/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Aby uzyskać większą kontrolę nad działaniem tabel, dowiedz się, jak manipulować kolumnami i wierszami.

## Znajdź indeks elementu tabeli

Kolumnami, wierszami i komórkami zarządza się, uzyskując dostęp do wybranego węzła dokumentu za pomocą jego indeksu. Znalezienie indeksu dowolnego węzła polega na zebraniu wszystkich węzłów potomnych typu elementu z węzła nadrzędnego, a następnie użyciu metody [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) w celu znalezienia indeksu żądanego węzła w kolekcji.

### Znajdź indeks tabeli w dokumencie

Czasami może być konieczne wprowadzenie zmian w określonej tabeli w dokumencie. Aby to zrobić, możesz odwołać się do tabeli według jej indeksu.

Poniższy przykład kodu pokazuje, jak pobrać indeks tabeli w dokumencie:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Znajdź indeks wiersza w tabeli {#find-the-index-of-a-row-in-a-table}

Podobnie może być konieczne wprowadzenie zmian w określonym wierszu w wybranej tabeli. Aby to zrobić, możesz również odwołać się do wiersza według jego indeksu.

Poniższy przykład kodu pokazuje, jak pobrać indeks wiersza w tabeli:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Znajdź indeks komórki w wierszu {#find-the-index-of-a-cell-in-a-row}

Na koniec może być konieczne wprowadzenie zmian w określonej komórce i możesz to zrobić również według indeksu komórki.

Poniższy przykład kodu pokazuje, jak pobrać indeks komórki z rzędu:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Pracuj z kolumnami

W modelu obiektowym dokumentu Aspose.Words (DOM) węzeł [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) składa się z węzłów [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/), a następnie węzłów [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). Tak więc w modelu obiektowym `Document` Aspose.Words, jak w dokumentach Word, nie ma pojęcia kolumny.

Z założenia wiersze tabeli w Microsoft Word i Aspose.Words są całkowicie niezależne, a podstawowe właściwości i operacje są zawarte tylko w wierszach i komórkach tabeli. Daje to tabelom możliwość posiadania interesujących atrybutów:

- Każdy wiersz tabeli może mieć zupełnie inną liczbę komórek
- W pionie komórki każdego rzędu mogą mieć różne szerokości
- Możliwe jest łączenie tabel o różnych formatach wierszy i liczbie komórek

Wszelkie operacje wykonywane na kolumnach są w rzeczywistości "skrótami", które wykonują operację poprzez zbiorową zmianę komórek wierszy w taki sposób, że wygląda na to, że są stosowane do kolumn. Oznacza to, że możesz wykonywać operacje na kolumnach, po prostu iterując po tym samym indeksie komórek wiersza tabeli.

Poniższy przykład kodu upraszcza takie operacje, udowadniając klasę fasady, która zbiera komórki tworzące "kolumnę" tabeli:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Poniższy przykład kodu pokazuje, jak wstawić pustą kolumnę do tabeli:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Poniższy przykład kodu pokazuje, jak usunąć kolumnę z tabeli w dokumencie:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Określ wiersze jako wiersze nagłówka

Możesz powtórzyć pierwszy wiersz w tabeli jako wiersz nagłówka tylko na pierwszej stronie lub na każdej stronie, jeśli tabela jest podzielona na kilka. W Aspose.Words możesz powtórzyć wiersz nagłówka na każdej stronie za pomocą właściwości [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

Możesz także zaznaczyć wiele wierszy nagłówka, jeśli takie wiersze znajdują się jeden po drugim na początku tabeli. Aby to zrobić, musisz zastosować właściwości **HeadingFormat** do tych wierszy.

{{% alert color="primary" %}}

Zwróć uwagę, że wiersze nagłówka nie działają w tabelach zagnieżdżonych. Oznacza to, że jeśli masz stół w innym stole, to ustawienie nie przyniesie żadnego efektu. Jest to ograniczenie Microsoft Word, które na to nie pozwala, a nie Aspose.Words.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę zawierającą wiersze nagłówka powtarzające się na kolejnych stronach:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Zapobiegaj łamaniu tabel i wierszy na stronach

Są chwile, w których zawartość tabeli nie powinna być dzielona na strony. Na przykład, jeśli tytuł znajduje się nad tabelą, tytuł i tabela powinny być zawsze przechowywane razem na tej samej stronie, aby zachować odpowiedni wygląd.

Istnieją dwie oddzielne techniki, które są przydatne do osiągnięcia tej funkcjonalności:

- `Allow row break across pages`, który jest stosowany do wierszy tabeli
- `Keep with next`, który jest stosowany do akapitów w komórkach tabeli

Domyślnie powyższe właściwości są wyłączone.

### Nie przerywaj wiersza na stronach {#keep-a-row-from-breaking-across-pages}

Polega to na ograniczeniu zawartości wewnątrz komórek wiersza przed podziałem na stronę. W Microsoft Word można to znaleźć w sekcji Właściwości tabeli jako opcję "Zezwalaj wierszowi na dzielenie stron". W Aspose.Words to znajduje się pod [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) obiekt a [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) jako właściwość [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Poniższy przykład kodu pokazuje, jak wyłączyć dzielenie wierszy na stronach dla każdego wiersza w tabeli:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Nie przerywaj tabeli na stronach {#keep-a-table-from-breaking-across-pages}

Aby zatrzymać podział tabeli na strony, musimy określić, że chcemy, aby zawartość zawarta w tabeli pozostała razem.

Aby to zrobić, Aspose.Words używa metody, która pozwala użytkownikom wybrać tabelę i włączyć parametr [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) do wartości true dla każdego akapitu w komórkach tabeli. Wyjątkiem jest ostatni akapit w tabeli, który powinien być ustawiony na false.

Poniższy przykład kodu pokazuje, jak ustawić tabelę, aby pozostać razem na tej samej stronie:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
