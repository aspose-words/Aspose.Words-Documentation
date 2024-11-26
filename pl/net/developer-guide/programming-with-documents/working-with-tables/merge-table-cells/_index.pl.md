---
title: Scal komórki tabeli w C#
second_title: Aspose.Words dla .NET
articleTitle: Scal komórki tabeli
linktitle: Scal komórki tabeli
description: "Jak scalić komórki tabeli w C#. Sprawdź, czy komórki w tabeli są scalone przy użyciu C#."
type: docs
weight: 40
url: /pl/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Czasami niektóre wiersze tabeli wymagają nagłówka lub dużych bloków tekstu zajmujących całą szerokość tabeli. Dla prawidłowego zaprojektowania tabeli użytkownik może połączyć kilka komórek tabeli w jedną. Aspose.Words obsługuje scalone komórki podczas pracy ze wszystkimi formatami wejściowymi, w tym podczas importowania treści HTML.

## Jak scalić komórki tabeli

W Aspose.Words połączone komórki są reprezentowane przez następujące właściwości klasy [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/), który opisuje, czy komórka jest częścią poziomego scalania komórek
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/), który opisuje, czy komórka jest częścią pionowego scalania komórek

Wartości tych właściwości określają zachowanie komórek podczas scalania:

- Pierwsza komórka w sekwencji połączonych komórek będzie miała [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Wszystkie później połączone komórki będą miały [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Komórka, która nie jest scalona, będzie miała [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Czasami podczas ładowania istniejących komórek dokumentów do tabeli będą one wyświetlane jako scalone. Jednak w rzeczywistości może to być jedna długa komórka – czasami Microsoft Word eksportuje w ten sposób scalone komórki. Może to być mylące przy próbie pracy z pojedynczymi komórkami, ale wydaje się, że nie ma żadnego szczególnego wzorca określającego, kiedy to się dzieje.

{{% /alert %}}

## Sprawdź, czy komórka jest scalona

Aby sprawdzić, czy komórka jest częścią sekwencji połączonych komórek, po prostu sprawdzamy właściwości **HorizontalMerge** i **VerticalMerge**.

Poniższy przykład kodu pokazuje, jak wydrukować typ scalania komórek w poziomie i pionie:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Scal komórki tabeli podczas korzystania z narzędzia DocumentBuilder

Aby scalić komórki w tabeli utworzonej za pomocą [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), należy ustawić odpowiedni typ scalania dla każdej komórki, w której ma nastąpić scalanie – najpierw **CellMerge.First**, a następnie **CellMerge.Previous**.

Należy także pamiętać o wyczyszczeniu ustawienia scalania dla tych komórek, w których nie jest wymagane scalanie – można to zrobić, ustawiając pierwszą komórkę niescaloną na **CellMerge.None**. Jeśli nie zostanie to zrobione, wszystkie komórki w tabeli zostaną scalone.

Poniższy przykład kodu pokazuje, jak utworzyć tabelę z dwoma wierszami, w której komórki pierwszego wiersza są scalone w poziomie:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Poniższy przykład kodu pokazuje, jak utworzyć dwukolumnową tabelę, w której komórki w pierwszej kolumnie są scalone w pionie:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Scal komórki tabeli w innych przypadkach

W innych sytuacjach, w których nie jest używany **DocumentBuilder**, na przykład w istniejącej tabeli, łączenie komórek w poprzedni sposób może nie być takie proste. Zamiast tego możemy opakować podstawowe operacje związane z zastosowaniem właściwości scalania do komórek w metodę, która znacznie ułatwia to zadanie. Ta metoda jest podobna do metody automatyzacji scalania, która jest wywoływana w celu scalania zakresu komórek w tabeli.

Poniższy kod połączy komórki tabeli w określonym zakresie, zaczynając od podanej komórki i kończąc na komórce końcowej. W takim przypadku zakres może obejmować wiele wierszy lub kolumn:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Poniższy przykład kodu pokazuje, jak scalić zakres komórek między dwiema określonymi komórkami:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

W zależności od używanej wersji .NET Framework możesz udoskonalić tę metodę, przekształcając ją w metodę rozszerzenia. W takim przypadku możesz wywołać tę metodę bezpośrednio w komórce, aby scalić zakres komórek, na przykład `cell1.Merge(cell2)`.

## Pionowe i poziome scalone komórki w tabeli HTML

Jak powiedzieliśmy w poprzednich artykułach, tabela w Microsoft Word to zbiór niezależnych wierszy. Każdy wiersz zawiera zestaw komórek niezależnych od komórek w innych wierszach. Zatem w tabeli Microsoft Word nie ma takiego obiektu jak "kolumna", a "1. kolumna" to coś w rodzaju "zbioru pierwszych komórek każdego wiersza tabeli". Dzięki temu użytkownicy mogą mieć tabelę, w której np. 1. rząd składa się z dwóch komórek – 2cm i 1cm, a 2. rząd składa się z dwóch różnych komórek – 1cm i 2cm szerokości. Aspose.Words obsługuje tę koncepcję tabel.

Tabela w HTML ma zasadniczo inną strukturę: każdy wiersz ma tę samą liczbę komórek i (jest to ważne dla zadania) każda komórka ma szerokość odpowiadającej jej kolumny, taką samą dla wszystkich komórek w jednej kolumnie. Jeśli więc **HorizontalMerge** i **VerticalMerge** zwrócą niepoprawną wartość, użyj następującego przykładowego kodu:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Konwertuj na komórki połączone poziomo

Czasami nie jest możliwe wykrycie, które komórki zostały scalone, ponieważ niektóre nowsze wersje Microsoft Word nie używają już flag scalania, gdy komórki są łączone w poziomie. Jednak w sytuacjach, gdy komórki są łączone w komórkę poziomo według ich szerokości przy użyciu flag scalania, Aspose.Words udostępnia metodę `ConvertToHorizontallyMergedCells` do konwersji komórek. Ta metoda po prostu przekształca tabelę i w razie potrzeby dodaje nowe komórki.

Poniższy przykład kodu ilustruje działanie powyższej metody:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
