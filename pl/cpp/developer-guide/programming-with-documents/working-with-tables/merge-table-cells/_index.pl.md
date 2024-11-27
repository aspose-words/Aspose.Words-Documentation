---
title: Scal komórki tabeli w C++
second_title: Aspose.Words dla C++
articleTitle: Scal Komórki Tabeli
linktitle: Scal Komórki Tabeli
description: "Jak scalić komórki tabeli w C++. Sprawdź, czy komórki w tabeli są scalane za pomocą C++."
type: docs
weight: 40
url: /pl/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Czasami niektóre wiersze w tabeli wymagają nagłówka lub dużych bloków tekstu, które zajmują pełną szerokość tabeli. W celu prawidłowego zaprojektowania tabeli użytkownik może połączyć kilka komórek tabeli w jedną. Aspose.Words obsługuje scalone komórki podczas pracy ze wszystkimi formatami wejściowymi, w tym importowanie zawartości HTML.

## Jak scalić komórki tabeli

W Aspose.Words scalone komórki są reprezentowane przez następujące właściwości klasy [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) który opisuje, czy komórka jest częścią poziomego połączenia komórek
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) który opisuje, czy komórka jest częścią pionowego połączenia komórek

Wartości tych właściwości określają zachowanie scalania komórek:

- Pierwsza komórka w sekwencji scalonych komórek będzie miała [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Wszystkie następnie scalone komórki będą miały [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Komórka, która nie zostanie scalona, będzie miała [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Czasami podczas ładowania istniejących komórek dokumentu w tabeli pojawiają się one scalone. Jednak w rzeczywistości może to być jedna długa komórka – czasami Microsoft Word eksportuje scalone komórki w ten sposób. Może to być mylące podczas próby pracy z pojedynczymi komórkami, ale wydaje się, że nie ma żadnego konkretnego wzorca, kiedy to się dzieje.

{{% /alert %}}

## Sprawdź, czy komórka jest scalona

Aby sprawdzić, czy komórka jest częścią sekwencji scalonych komórek, po prostu sprawdzamy właściwości **HorizontalMerge** i **VerticalMerge**.

Poniższy przykład kodu pokazuje, jak Wydrukować Typ scalania komórek poziomych i pionowych:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Scalone komórki w tabeli {#merge-cells-in-a-table}

Aby scalić komórki w tabeli utworzonej za pomocą [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), musisz ustawić odpowiedni typ scalania dla każdej komórki, w której oczekuje się scalania – najpierw **CellMerge.First**, a następnie **CellMerge.Previous**.

Należy również pamiętać o wyczyszczeniu ustawienia scalania dla tych komórek, w których nie jest wymagane scalanie – można to zrobić, ustawiając pierwszą komórkę bez scalania na **CellMerge.None**. Jeśli nie zostanie to zrobione, wszystkie komórki w tabeli zostaną scalone.

Poniższy przykład kodu pokazuje, jak utworzyć tabelę z dwoma wierszami, w których komórki w pierwszym wierszu są scalane poziomo:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Poniższy przykład kodu pokazuje, jak utworzyć tabelę dwukolumnową, w której komórki w pierwszej kolumnie są scalane pionowo:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Scal komórki tabeli w innych przypadkach

W innych sytuacjach, w których **DocumentBuilder** nie jest używany, na przykład w istniejącej tabeli, scalanie komórek w poprzedni sposób może nie być tak łatwe. Zamiast tego możemy zawinąć podstawowe operacje związane z zastosowaniem właściwości scalania do komórek w metodę, która znacznie ułatwia zadanie. Ta metoda jest podobna do metody automatyzacji scalania, która jest wywoływana w celu scalenia zakresu komórek w tabeli.

Poniższy kod połączy komórki tabeli w określonym zakresie, zaczynając od danej komórki i kończąc na komórce końcowej. W takim przypadku zakres może obejmować wiele wierszy lub kolumn:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Poniższy przykład kodu pokazuje, jak scalić zakres komórek między dwiema określonymi komórkami:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

W zależności od używanej wersji frameworka możesz udoskonalić tę metodę, przekształcając ją w metodę rozszerzenia. W takim przypadku możesz wywołać tę metodę bezpośrednio w komórce, aby scalić zakres komórek, na przykład `cell1.Merge(cell2)`.

## Pionowe I Poziome scalone komórki w tabeli {#vertical-and-Horizontal-merged-cells-in-the-table}

Jak powiedzieliśmy w poprzednich artykułach, tabela w Microsoft Word jest zbiorem niezależnych wierszy. Każdy wiersz ma zestaw komórek, które są niezależne od komórek innych wierszy. Tak więc w tabeli Microsoft Word nie ma takiego obiektu jak "Kolumna", a "pierwsza kolumna" to coś w rodzaju "zestawu pierwszych komórek każdego wiersza w tabeli". Pozwala to użytkownikom mieć tabelę, w której na przykład pierwszy rząd składa się z dwóch komórek – 2 cm i 1 cm, a drugi rząd składa się z dwóch różnych komórek – 1 cm i 2 cm szerokości. I Aspose.Words obsługuje tę koncepcję tabel.

Tabela w HTML ma zasadniczo inną strukturę: każdy wiersz ma taką samą liczbę komórek i (jest to ważne dla zadania) każda komórka ma szerokość odpowiedniej kolumny, taką samą dla wszystkich komórek w jednej kolumnie. Jeśli więc **HorizontalMerge** i **VerticalMerge** zwrócą niepoprawną wartość, użyj następującego przykładu kodu:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Konwertuj na komórki scalone poziomo {#convert-to-horizontally-merged-cells}

Czasami nie jest możliwe wykrycie, które komórki są scalane, ponieważ niektóre nowsze wersje Microsoft Word nie używają już FLAG scalania, gdy komórki są scalane poziomo. Ale w sytuacjach, w których komórki są scalane w komórkę poziomo według ich szerokości za pomocą flag scalania, Aspose.Words zapewnia `ConvertToHorizontallyMergedCells` metoda konwersji komórek. Ta metoda po prostu przekształca tabelę i dodaje nowe komórki w razie potrzeby.

Poniższy przykład kodu pokazuje powyższą metodę w działaniu:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
