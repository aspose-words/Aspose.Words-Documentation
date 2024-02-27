---
title: Scal komórki tabeli
second_title: Aspose.Words dla Python via .NET
articleTitle: Scal komórki tabeli
linktitle: Scal komórki tabeli
description: "Jak scalić komórki tabeli w Python. Sprawdź, czy komórki w tabeli są scalone przy użyciu Python."
type: docs
weight: 40
url: /pl/python-net/working-with-merged-cells/
---

Czasami niektóre wiersze tabeli wymagają nagłówka lub dużych bloków tekstu zajmujących całą szerokość tabeli. Dla prawidłowego zaprojektowania tabeli użytkownik może połączyć kilka komórek tabeli w jedną. Aspose.Words obsługuje scalone komórki podczas pracy ze wszystkimi formatami wejściowymi, w tym podczas importowania treści HTML.

## Jak scalić komórki tabeli

W Aspose.Words połączone komórki są reprezentowane przez następujące właściwości klasy [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/), który opisuje, czy komórka jest częścią poziomego scalania komórek
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/), który opisuje, czy komórka jest częścią pionowego scalania komórek

Wartości tych właściwości określają zachowanie komórek podczas scalania:

- Pierwsza komórka w sekwencji połączonych komórek będzie miała [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Wszystkie później połączone komórki będą miały [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Komórka, która nie jest scalona, będzie miała [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Czasami podczas ładowania istniejących komórek dokumentów do tabeli będą one wyświetlane jako scalone. Jednak w rzeczywistości może to być jedna długa komórka – czasami Microsoft Word eksportuje w ten sposób scalone komórki. Może to być mylące przy próbie pracy z pojedynczymi komórkami, ale wydaje się, że nie ma żadnego szczególnego wzorca określającego, kiedy to się dzieje.

{{% /alert %}}

## Sprawdź, czy komórka jest scalona

Aby sprawdzić, czy komórka jest częścią sekwencji połączonych komórek, po prostu sprawdzamy właściwości **HorizontalMerge** i **VerticalMerge**.

Poniższy przykład kodu pokazuje, jak wydrukować typ scalania komórek w poziomie i pionie:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Scal komórki tabeli podczas korzystania z narzędzia DocumentBuilder

Aby scalić komórki w tabeli utworzonej za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), należy ustawić odpowiedni typ scalania dla każdej komórki, w której ma nastąpić scalanie – najpierw **CellMerge.First**, a następnie **CellMerge.Previous**.

Należy także pamiętać o wyczyszczeniu ustawienia scalania dla tych komórek, które nie wymagają scalania – można to zrobić, ustawiając pierwszą komórkę niescaloną na **CellMerge.None**. Jeśli nie zostanie to zrobione, wszystkie komórki w tabeli zostaną scalone.

Poniższy przykład kodu pokazuje, jak utworzyć tabelę z dwoma wierszami, w której komórki pierwszego wiersza są scalone w poziomie:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Poniższy przykład kodu pokazuje, jak utworzyć dwukolumnową tabelę, w której komórki w pierwszej kolumnie są scalone w pionie:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Scal komórki tabeli w innych przypadkach

W innych sytuacjach, w których nie jest używany **DocumentBuilder**, na przykład w istniejącej tabeli, łączenie komórek w poprzedni sposób może nie być takie proste. Zamiast tego możemy opakować podstawowe operacje związane z zastosowaniem właściwości scalania do komórek w metodę, która znacznie ułatwia to zadanie. Ta metoda jest podobna do metody automatyzacji scalania, która jest wywoływana w celu scalania zakresu komórek w tabeli.

Poniższy kod połączy komórki tabeli w określonym zakresie, zaczynając od podanej komórki i kończąc na komórce końcowej. W takim przypadku zakres może obejmować wiele wierszy lub kolumn:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Poniższy przykład kodu pokazuje, jak scalić zakres komórek między dwiema określonymi komórkami:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

W zależności od używanej wersji Framework, możesz chcieć udoskonalić tę metodę, przekształcając ją w metodę rozszerzenia. W takim przypadku możesz wywołać tę metodę bezpośrednio w komórce, aby scalić zakres komórek, na przykład `cell1.Merge(cell2)`.

## Konwertuj na komórki połączone poziomo

Czasami nie jest możliwe wykrycie, które komórki zostały scalone, ponieważ niektóre nowsze wersje Microsoft Word nie używają już flag scalania podczas łączenia komórek w poziomie. Jednak w sytuacjach, gdy komórki są łączone w komórkę poziomo według ich szerokości przy użyciu flag scalania, Aspose.Words udostępnia metodę `ConvertToHorizontallyMergedCells` do konwersji komórek. Ta metoda po prostu przekształca tabelę i w razie potrzeby dodaje nowe komórki.

Poniższy przykład kodu ilustruje działanie powyższej metody:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
