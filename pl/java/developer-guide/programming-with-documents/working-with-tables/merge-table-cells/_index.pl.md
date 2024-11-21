---
title: Połącz komórki tabeli Java
second_title: Aspose.Words zamiast Java
articleTitle: Połączenia komórek tabeli
linktitle: Połączenia komórek tabeli
description: "Jak połączyć komórki tabeli w Java. Sprawdź, czy komórki w tabeli są połączone za pomocą Java."
type: docs
weight: 40
url: /pl/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Czasami pewne wiersze w tabeli wymagają nagłówka lub dużych bloków tekstu, które zajmują pełną szerokość tabeli. Dla prawidłowego projektowania tabeli, użytkownik może połączyć kilka komórek tabeli w jeden. Aspose.Words obsługuje połączone komórki podczas pracy ze wszystkimi formatami wejściowymi, w tym importując zawartość HTML.

## Jak połączyć komórki tabeli

W Aspose.Words, Komórki połączone są reprezentowane przez następujące właściwości [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) klasa:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) która opisuje, czy komórka jest częścią poziomego połączenia komórek
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) która opisuje, czy komórka jest częścią pionowego połączenia komórek

Wartości tych właściwości decydują o łączeniu zachowania komórek:

- Pierwsza komórka w sekwencji połączonych komórek będzie miała [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Każda później połączona komórka będzie miała [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Komórka, która nie jest połączona [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Czasami podczas wczytywania istniejących komórek dokumentów w tabeli, pojawiają się one połączone. Jednak może to być jedna długa komórka - czasami Microsoft Word w ten sposób eksportuje połączone komórki. To może być mylące podczas próby pracy z poszczególnymi komórkami, ale nie wydaje się, aby był jakiś szczególny wzór, kiedy to się dzieje.

{{% /alert %}}

## Sprawdzanie, czy połączona jest komórka

Aby sprawdzić, czy komórka jest częścią sekwencji połączonych komórek, po prostu sprawdzić **HorizontalMerge** oraz **VerticalMerge** nieruchomości.

Poniższy przykład kodu pokazuje jak wydrukować typ połączenia poziomego i pionowego:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Łączenie komórek tabeli podczas korzystania z DocumentBuilder

Aby połączyć komórki w tabeli utworzonej z [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), musisz ustawić odpowiedni typ połączenia dla każdej komórki, w której oczekuje się połączenia - najpierw **CellMerge.First** i wtedy **CellMerge.Previous**.

Należy również pamiętać, aby wyczyścić ustawienie połączenia dla tych komórek, w których nie jest wymagane połączenie - można to zrobić poprzez ustawienie pierwszej komórki nie-połączenia do **CellMerge.None**. Jeśli nie zostanie to zrobione, wszystkie komórki w tabeli zostaną połączone.

Poniższy przykład kodu pokazuje, jak stworzyć tabelę z dwoma wierszami, gdzie komórki w pierwszym wierszu są łączone poziomo:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Poniższy przykład kodu pokazuje jak stworzyć tabelę dwukolumnową, gdzie komórki w pierwszej kolumnie są połączone pionowo:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Łączenie komórek tabeli w innych przypadkach

W innych sytuacjach **DocumentBuilder** nie jest stosowany, jak w istniejącej tabeli, łączenie komórek w poprzedni sposób może nie być tak łatwe. Zamiast tego, możemy zawinąć podstawowe operacje związane z zastosowaniem właściwości łączenia do komórek w sposób, który znacznie ułatwia zadanie. Metoda ta jest podobna do metody automatyzacji połączeń, która jest wywoływana do łączenia szeregu komórek w tabeli.

Poniższy kod połączy komórki tabeli w określonym zakresie, zaczynając od danej komórki i kończąc na końcowej komórce. W tym przypadku zakres może obejmować wiele wierszy lub kolumn:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Poniższy przykład kodu pokazuje jak połączyć szereg komórek pomiędzy dwoma określonymi komórkami:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Komórki pionowe i poziome połączone w tabeli HTML

Jak już mówiliśmy w poprzednich artykułach, tabela w Microsoft Word jest zbiorem niezależnych wierszy. Każdy wiersz posiada zbiór komórek niezależnych od komórek innych wierszy. Tak więc, w Microsoft Word tabeli nie ma takiego obiektu jak "kolumna", a "pierwsza kolumna" jest czymś w rodzaju "zbiór 1 komórek każdego wiersza w tabeli". Pozwala to użytkownikom na posiadanie tabeli, w której na przykład pierwszy rząd składa się z dwóch komórek - 2cm i 1cm, a drugi rząd składa się z dwóch różnych komórek - 1cm i 2cm szerokości. I Aspose.Words wspiera tę koncepcję tabel.

Tabela w HTML ma zasadniczo inną strukturę: każdy wiersz ma taką samą liczbę komórek i (ważne jest dla zadania) każda komórka ma szerokość odpowiedniej kolumny, taką samą dla wszystkich komórek w jednej kolumnie. Więc jeśli **HorizontalMerge** oraz **VerticalMerge** zwraca nieprawidłową wartość, użyj następującego przykładu kodu:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Przelicz do poziomu Komórki połączone

Czasami nie jest możliwe wykrycie, które komórki są połączone, ponieważ niektóre nowsze wersje Microsoft Word nie używać flag połączenia, gdy komórki są łączone poziomo. Ale w sytuacjach, gdy komórki są łączone poziomo przez ich szerokość za pomocą flag łączących, Aspose.Words zapewnia `ConvertToHorizontallyMergedCells` metoda konwersji komórek. Metoda ta po prostu zmienia tabelę i dodaje nowe komórki w razie potrzeby.

Poniższy przykład kodu pokazuje powyższą metodę w działaniu:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
