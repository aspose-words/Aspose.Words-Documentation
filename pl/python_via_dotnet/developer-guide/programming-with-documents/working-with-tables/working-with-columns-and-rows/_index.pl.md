---
title: Pracuj z kolumnami i wierszami
second_title: Aspose.Words dla Python via .NET
articleTitle: Pracuj z kolumnami i wierszami
linktitle: Pracuj z kolumnami i wierszami
description: "Praca z częściami tabeli – wierszami, kolumnami i komórkami przy użyciu Python. Określ wiersz nagłówka Python."
type: docs
weight: 30
url: /pl/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Aby uzyskać większą kontrolę nad działaniem tabel, dowiedz się, jak manipulować kolumnami i wierszami.

## Znajdowanie indeksu elementu tabeli

Zarządzanie kolumnami, wierszami i komórkami odbywa się poprzez dostęp do wybranego węzła dokumentu według jego indeksu. Znalezienie indeksu dowolnego węzła polega na zebraniu wszystkich węzłów podrzędnych typu elementu z węzła nadrzędnego, a następnie zastosowaniu metody [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) w celu znalezienia indeksu żądanego węzła w kolekcji.

### Znajdowanie indeksu tabeli w dokumencie

Czasami może być konieczne wprowadzenie zmian w określonej tabeli w dokumencie. Aby to zrobić, możesz odwołać się do tabeli po jej indeksie.

Poniższy przykład kodu pokazuje, jak pobrać indeks tabeli w dokumencie:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Znajdowanie indeksu wiersza w tabeli

Podobnie może być konieczne wprowadzenie zmian w konkretnym wierszu w wybranej tabeli. Aby to zrobić, możesz także odwołać się do wiersza po jego indeksie.

Poniższy przykład kodu pokazuje, jak pobrać indeks wiersza w tabeli:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Znajdowanie indeksu komórki w wierszu

Na koniec może zaistnieć potrzeba wprowadzenia zmian w określonej komórce i można to zrobić również na podstawie indeksu komórki.

Poniższy przykład kodu pokazuje, jak pobrać indeks komórki w wierszu:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Pracuj z kolumnami

W Aspose.Words Document Object Model (DOM) węzeł [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) składa się z węzłów [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), a następnie węzłów [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). Zatem w modelu obiektowym `Document` Aspose.Words, podobnie jak w dokumentach programu Word, nie ma pojęcia kolumny.

Z założenia wiersze tabeli w Microsoft Word i Aspose.Words są całkowicie niezależne, a podstawowe właściwości i operacje zawarte są tylko w wierszach i komórkach tabeli. Dzięki temu tabele mogą mieć kilka interesujących atrybutów:

- Każdy wiersz tabeli może mieć zupełnie inną liczbę komórek
- W pionie komórki każdego wiersza mogą mieć różną szerokość
- Możliwe jest łączenie tabel o różnych formatach wierszy i liczbie komórek

Wszelkie operacje wykonywane na kolumnach są w rzeczywistości "skrótami", które wykonują operację poprzez zbiorczą zmianę komórek wierszy w taki sposób, że wygląda to tak, jakby były stosowane do kolumn. Oznacza to, że możesz wykonywać operacje na kolumnach, po prostu iterując po tym samym indeksie komórki wiersza tabeli.

Poniższy przykład kodu upraszcza takie operacje, udowadniając klasę fasadową, która zbiera komórki tworzące "kolumnę" tabeli:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Poniższy przykład kodu pokazuje, jak wstawić pustą kolumnę do tabeli:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Poniższy przykład kodu pokazuje, jak usunąć kolumnę z tabeli w dokumencie:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Określ wiersze jako wiersze nagłówka

Możesz powtórzyć pierwszy wiersz tabeli jako wiersz nagłówka tylko na pierwszej stronie lub na każdej stronie, jeśli tabela jest podzielona na kilka. W Aspose.Words możesz powtórzyć wiersz nagłówka na każdej stronie, korzystając z właściwości [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

Można także zaznaczyć wiele wierszy nagłówka, jeśli takie wiersze znajdują się jeden po drugim na początku tabeli. Aby to zrobić, musisz zastosować właściwości **HeadingFormat** do tych wierszy.

{{% alert color="primary" %}}

Należy pamiętać, że wiersze nagłówka nie działają w tabelach zagnieżdżonych. Oznacza to, że jeśli masz tabelę wewnątrz innej tabeli, to ustawienie nie będzie miało żadnego efektu. Jest to ograniczenie Microsoft Word, które na to nie pozwala, a nie Aspose.Words.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę zawierającą wiersze nagłówka powtarzające się na kolejnych stronach:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Zapobiegaj rozbijaniu tabel i wierszy między stronami

Są sytuacje, w których zawartość tabeli nie powinna być dzielona na strony. Na przykład, jeśli tytuł znajduje się nad tabelą, tytuł i tabela powinny być zawsze przechowywane razem na tej samej stronie, aby zachować właściwy wygląd.

Aby osiągnąć tę funkcjonalność, przydatne są dwie oddzielne techniki:

- `Allow row break across pages`, który jest stosowany do wierszy tabeli
- `Keep with next`, który jest stosowany do akapitów w komórkach tabeli

Domyślnie powyższe właściwości są wyłączone.

### Zapobiegnij przerywaniu wiersza między stronami

Wiąże się to z ograniczeniem podziału treści znajdujących się w komórkach wiersza na stronie. W Microsoft Word można to znaleźć we Właściwościach tabeli jako opcję "Pozwól wierszowi na dzielenie stron". W Aspose.Words można to znaleźć w obiekcie [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) jako właściwość [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

Poniższy przykład kodu pokazuje, jak wyłączyć dzielenie wierszy na stronach dla każdego wiersza w tabeli:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Chroń tabelę przed pękaniem między stronami

Aby zapobiec podziałowi tabeli na strony, musimy określić, że chcemy, aby treść zawarta w tabeli pozostała razem.

Aby to zrobić, Aspose.Words wykorzystuje metodę, która pozwala użytkownikom wybrać tabelę i włączyć parametr [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) do formatu true dla każdego akapitu w komórkach tabeli. Wyjątkiem jest ostatni akapit w tabeli, który powinien być ustawiony na false.

Poniższy przykład kodu pokazuje, jak ustawić tabelę tak, aby znajdowała się razem na tej samej stronie:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
