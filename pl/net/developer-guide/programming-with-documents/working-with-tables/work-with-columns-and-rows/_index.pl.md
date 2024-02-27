---
title: Pracuj z kolumnami i wierszami w C#
second_title: Aspose.Words dla .NET
articleTitle: Pracuj z kolumnami i wierszami
linktitle: Pracuj z kolumnami i wierszami
description: "Praca z częściami tabeli – wierszami, kolumnami i komórkami przy użyciu C#. Określ wiersz nagłówka C#."
type: docs
weight: 30
url: /pl/net/working-with-columns-and-rows/
---

Aby uzyskać większą kontrolę nad działaniem tabel, dowiedz się, jak manipulować kolumnami i wierszami.

## Znajdź indeks elementu tabeli {#find-the-index-of-table-elements}

Zarządzanie kolumnami, wierszami i komórkami odbywa się poprzez dostęp do wybranego węzła dokumentu według jego indeksu. Znalezienie indeksu dowolnego węzła polega na zebraniu wszystkich węzłów podrzędnych typu elementu z węzła nadrzędnego, a następnie zastosowaniu metody [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) w celu znalezienia indeksu żądanego węzła w kolekcji.

### Znajdź indeks tabeli w dokumencie {#find-the-index-of-table-in-a-document}

Czasami może być konieczne wprowadzenie zmian w określonej tabeli w dokumencie. Aby to zrobić, możesz odwołać się do tabeli po jej indeksie.

Poniższy przykład kodu pokazuje, jak pobrać indeks tabeli w dokumencie:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Znajdź indeks wiersza w tabeli {#find-the-index-of-a-row-in-a-table}

Podobnie może być konieczne wprowadzenie zmian w konkretnym wierszu w wybranej tabeli. Aby to zrobić, możesz także odwołać się do wiersza po jego indeksie.

Poniższy przykład kodu pokazuje, jak pobrać indeks wiersza w tabeli:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Znajdź indeks komórki w wierszu {#find-the-index-of-a-cell-in-a-row}

Na koniec może zaistnieć potrzeba wprowadzenia zmian w określonej komórce i można to zrobić również na podstawie indeksu komórki.

Poniższy przykład kodu pokazuje, jak pobrać indeks komórki w wierszu:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Pracuj z kolumnami {#work-with-columns}

W Aspose.Words Document Object Model (DOM) węzeł [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) składa się z węzłów [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), a następnie węzłów [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/). Zatem w modelu obiektowym `Document` Aspose.Words, podobnie jak w dokumentach programu Word, nie ma pojęcia kolumny.

Z założenia wiersze tabeli w Microsoft Word i Aspose.Words są całkowicie niezależne, a podstawowe właściwości i operacje zawarte są tylko w wierszach i komórkach tabeli. Dzięki temu tabele mogą mieć kilka interesujących atrybutów:

- Każdy wiersz tabeli może mieć zupełnie inną liczbę komórek
- W pionie komórki każdego wiersza mogą mieć różną szerokość
- Możliwe jest łączenie tabel o różnych formatach wierszy i liczbie komórek

Wszelkie operacje wykonywane na kolumnach są w rzeczywistości "skrótami", które wykonują operację poprzez zbiorczą zmianę komórek wierszy w taki sposób, że wygląda to tak, jakby były stosowane do kolumn. Oznacza to, że możesz wykonywać operacje na kolumnach, po prostu iterując po tym samym indeksie komórki wiersza tabeli.

Poniższy przykład kodu upraszcza takie operacje, udowadniając klasę fasadową, która zbiera komórki tworzące "kolumnę" tabeli:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Poniższy przykład kodu pokazuje, jak wstawić pustą kolumnę do tabeli:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Poniższy przykład kodu pokazuje, jak usunąć kolumnę z tabeli w dokumencie:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Określ wiersze jako wiersze nagłówka

Możesz powtórzyć pierwszy wiersz tabeli jako wiersz nagłówka tylko na pierwszej stronie lub na każdej stronie, jeśli tabela jest podzielona na kilka. W Aspose.Words możesz powtórzyć wiersz nagłówka na każdej stronie, korzystając z właściwości [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Można także zaznaczyć wiele wierszy nagłówka, jeśli takie wiersze znajdują się jeden po drugim na początku tabeli. Aby to zrobić, musisz zastosować właściwości **HeadingFormat** do tych wierszy.

{{% alert color="primary" %}}

Należy pamiętać, że wiersze nagłówka nie działają w tabelach zagnieżdżonych. Oznacza to, że jeśli masz tabelę wewnątrz innej tabeli, to ustawienie nie będzie miało żadnego efektu. Jest to ograniczenie Microsoft Word, które na to nie pozwala, a nie Aspose.Words.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować tabelę zawierającą wiersze nagłówka powtarzające się na kolejnych stronach:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Zapobiegaj rozdzielaniu tabel i wierszy między stronami {#keep-tables-and-rows-from-breaking-across-pages}

Są sytuacje, w których zawartość tabeli nie powinna być dzielona na strony. Na przykład, jeśli tytuł znajduje się nad tabelą, tytuł i tabela powinny być zawsze przechowywane razem na tej samej stronie, aby zachować właściwy wygląd.

Aby osiągnąć tę funkcjonalność, przydatne są dwie oddzielne techniki:

- `Allow row break across pages`, który jest stosowany do wierszy tabeli
- `Keep with next`, który jest stosowany do akapitów w komórkach tabeli

Domyślnie powyższe właściwości są wyłączone.

### Trzymaj awanturę przed przerywaniem stron {#keep-a-row-from-breaking-across-pages}

Wiąże się to z ograniczeniem podziału treści znajdujących się w komórkach wiersza na stronie. W Microsoft Word można to znaleźć w obszarze Właściwości tabeli jako opcję "Pozwól wierszowi na dzielenie stron". W Aspose.Words można to znaleźć w obiekcie [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) jako właściwość [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

Poniższy przykład kodu pokazuje, jak wyłączyć dzielenie wierszy na stronach dla każdego wiersza w tabeli:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Chroń tabelę przed pękaniem między stronami {#keep-a-table-from-breaking-across-pages}

Aby zapobiec podziałowi tabeli na strony, musimy określić, że chcemy, aby treść zawarta w tabeli pozostała razem.

Aby to zrobić, Aspose.Words wykorzystuje metodę, która pozwala użytkownikom wybrać tabelę i włączyć parametr [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) do formatu true dla każdego akapitu w komórkach tabeli. Wyjątkiem jest ostatni akapit w tabeli, który powinien być ustawiony na false.

Poniższy przykład kodu pokazuje, jak ustawić tabelę tak, aby znajdowała się razem na tej samej stronie:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}