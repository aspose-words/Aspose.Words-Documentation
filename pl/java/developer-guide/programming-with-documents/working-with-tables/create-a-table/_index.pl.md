---
title: Jak utworzyć tabelę w Java
second_title: Aspose.Words zamiast Java
articleTitle: Utwórz tabelę
linktitle: Utwórz tabelę
description: "Różne sposoby tworzenia tabel w dokumencie za pomocą Java."
type: docs
weight: 20
url: /pl/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words pozwala użytkownikom na tworzenie tabel w dokumencie od podstaw i zapewnia kilka różnych metod w tym celu. Ten artykuł przedstawia szczegóły dotyczące dodawania sformatowanych tabel do dokumentu przy użyciu każdej metody, jak również porównanie każdej metody na końcu artykułu.

## Domyślne style tabeli

Nowo utworzona tabela otrzymuje wartości domyślne podobne do tych stosowanych w Microsoft Word:

| Właściwość tabeli | Domyślnie Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Kolor granic |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Stolik może być ustawiony w linii, jeśli jest szczelnie umieszczony lub unoszący się, jeśli może być umieszczony gdziekolwiek na stronie. Domyślnie, Aspose.Words zawsze tworzy tabele inline.

{{% /alert %}}

## Tworzenie tabeli z DocumentBuilder

W Aspose.Words, użytkownicy mogą utworzyć tabelę w dokumencie za pomocą [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Podstawowy algorytm tworzenia tabeli jest następujący:

1. Rozpocznij tabelę od [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Dodaj komórkę do tabeli używając [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - automatycznie uruchamia nowy wiersz
3. Opcjonalnie należy użyć [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) właściwość do określenia formatowania komórek
4. Wstaw zawartość komórki używając odpowiedniej **DocumentBuilder** metody takie jak [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), i inne
5. Powtarzać kroki 2- 4 aż do zakończenia wiersza
6. Call [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) aby zakończyć bieżący wiersz
7. Opcjonalnie należy użyć [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) właściwość do określenia formatowania wierszy
8. Powtarzać kroki 2- 7 aż do zakończenia tabeli
9. Call [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) aby zakończyć budowanie stołu

{{% alert color="primary" %}}

Ważne szczegóły:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) może być również wywoływany wewnątrz komórki, w którym to przypadku rozpoczyna tworzenie zagnieżdżonej tabeli wewnątrz komórki.
- Po telefonie [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), tworzona jest nowa komórka i każda zawartość dodawana przy użyciu innych metod [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasa zostanie dodana do bieżącej komórki. Aby utworzyć nową komórkę w tym samym wierszu, zadzwoń **InsertCell** Znowu.
- Jeśli **InsertCell** jest wywoływany natychmiast po [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) i koniec wiersza, tabela będzie kontynuowana w nowym wierszu.
- [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) metoda zakończenia tabeli powinna być wywołana tylko raz po wywołaniu **EndRow**. Wywołanie **EndTable** przesuwa kursor z bieżącej komórki do pozycji bezpośrednio po tabeli.

{{% /alert %}}

Proces tworzenia tabeli można wyraźnie zobaczyć na poniższym rysunku:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Poniższy przykład kodu pokazuje jak utworzyć prostą tabelę używając **DocumentBuilder** z domyślnym formatowaniem:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Poniższy przykład kodu pokazuje jak utworzyć sformatowaną tabelę używając DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Poniższy przykład kodu pokazuje jak wstawić zagnieżdżoną tabelę używając DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Utwórz tabelę poprzez DOM (Document Object Model)

Można umieścić tabele bezpośrednio w DOM dodając nowy [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) węzeł w określonym położeniu.

Należy pamiętać, że zaraz po utworzeniu węzła tabeli, sama tabela będzie całkowicie pusta, czyli nie zawiera jeszcze wierszy i komórek. Aby umieścić wiersze i komórki w tabeli, dodać odpowiedni [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) oraz [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) węzły dziecięce do DOM.

{{% alert color="primary" %}}

Ta metoda tworzenia tabeli używa tych samych domyślnych tabel jak przy użyciu **DocumentBuilder**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować nową tabelę od podstaw poprzez dodanie odpowiednich węzłów dziecięcych do drzewa dokumentów:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Utwórz tabelę z HTML

Aspose.Words obsługuje wprowadzanie treści do dokumentu ze źródła HTML za pomocą [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) Metoda. Wejście może być pełną stroną HTML lub tylko częściowym fragmentem.

Używając tego **InsertHtml** metoda, użytkownicy mogą umieścić tabele w dokumencie za pomocą tagów tabeli jak `<table>`, `<tr>`, `<td>`.

Poniższy przykład kodu pokazuje jak włożyć tabelę do dokumentu z łańcucha zawierającego znaczniki HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Wstaw kopię istniejącej tabeli

Często trzeba stworzyć tabelę opartą na istniejącej tabeli w dokumencie. Najprostszym sposobem powielenia tabeli przy zachowaniu wszystkich formatowania jest sklonowanie węzła tabeli za pomocą [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) Metoda.

Tę samą technikę można zastosować do dodania kopii istniejącego wiersza lub komórki do tabeli.

Poniższy przykład kodu pokazuje jak skopiować tabelę przy użyciu konstruktorów węzłów:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje jak sklonować ostatni wiersz tabeli i dołączyć go do tabeli:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Jeśli patrzysz na tworzenie tabel w dokumencie, który dynamicznie rośnie z każdym rekordem ze źródła danych, to powyższa metoda nie jest zalecana. Zamiast tego, pożądane wyjście jest łatwiej osiągnąć za pomocą Mail merge z regionami. Można dowiedzieć się więcej o tej technice w [Mail Merge z regionami](/words/java/types-of-mail-merge-operations/) sekcja.

## Porównaj sposoby tworzenia tabeli

Aspose.Words zawiera kilka metod tworzenia nowych tabel w dokumencie. Każda metoda ma swoje zalety i wady, więc wybór, którego używać często zależy od konkretnej sytuacji.

Przyjrzyjmy się bliżej tym sposobom tworzenia tabel i porównujmy ich zalety i wady:

|  Metoda | Korzyści |  Uszkodzenia |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | Standardowa metoda wprowadzania tabel i innych treści dokumentów | Czasami trudno jest stworzyć wiele odmian tabel w tym samym czasie z tej samej instancji konstruktora |
| Via DOM |  Pasuje lepiej z otaczającym kodem, który tworzy i wprowadza węzły bezpośrednio do DOM bez użycia **DocumentBuilder** | Tabela jest tworzona "pusty": przed wykonaniem większości operacji, należy zadzwonić [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) do tworzenia brakujących węzłów dziecięcych |
| Z HTML | Można utworzyć nową tabelę ze źródła HTML przy użyciu tagów takich jak `<table>`, `<tr>`, `<td>` | Nie wszystkie możliwe Microsoft Word formaty tabel mogą być stosowane do HTML |
| Klonowanie istniejącej tabeli | Możesz utworzyć kopię istniejącej tabeli zachowując wszystkie wiersze i formatowanie komórek | Przed przygotowaniem tabeli do użycia należy usunąć odpowiednie węzły dziecięce |
