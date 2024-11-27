---
title: Jak utworzyć tabelę w C++
second_title: Aspose.Words dla C++
articleTitle: Utwórz tabelę
linktitle: Utwórz tabelę
description: "Różne sposoby tworzenia tabel przy użyciu C++. Utwórz tabelę w C++ dla dokumentu. Dodaj tabelę w C++."
type: docs
weight: 20
url: /pl/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words umożliwia użytkownikom tworzenie tabel w dokumencie od podstaw i zapewnia kilka różnych metod. W tym artykule przedstawiono szczegółowe informacje na temat dodawania sformatowanych tabel do dokumentu przy użyciu każdej metody, a także porównanie każdej metody na końcu artykułu.

## Domyślne Style Tabel

Nowo utworzonej tabeli podano wartości domyślne podobne do tych używanych w Microsoft Word:

| Właściwość Tabeli | Default in Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 pt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Tabela może być wbudowana, jeśli jest ciasno umieszczona, lub pływająca, jeśli można ją umieścić w dowolnym miejscu na stronie. Domyślnie Aspose.Words zawsze tworzy tabele wbudowane.

{{% /alert %}}

## Utwórz tabelę za pomocą DocumentBuilder

W Aspose.Words Użytkownicy mogą utworzyć tabelę w dokumencie za pomocą [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Podstawowy algorytm tworzenia tabeli jest następujący:

1. Rozpocznij tabelę od [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Dodaj komórkę do tabeli za pomocą [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - automatycznie uruchamia nowy wiersz
3. Opcjonalnie użyj właściwości [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/), aby określić formatowanie komórki
4. Wstaw zawartość komórki za pomocą odpowiednich metod **DocumentBuilder**, takich jak [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) i inne
5. Powtarzaj kroki 2-4, aż wiersz się zakończy
6. Wywołaj [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/), aby zakończyć bieżący wiersz
7. Opcjonalnie użyj właściwości [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/), aby określić formatowanie wierszy
8. Powtarzaj kroki 2-7, aż tabela będzie kompletna
9. Zadzwoń do [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/), aby zakończyć budowanie tabeli

{{% alert color="primary" %}}

Ważne szczegóły:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) można również wywołać wewnątrz komórki, w którym to przypadku rozpoczyna tworzenie zagnieżdżonej tabeli w komórce.
- Po wywołaniu [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) tworzona jest nowa komórka, a każda zawartość dodana przy użyciu innych metod klasy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) zostanie dodana do bieżącej komórki. Aby utworzyć nową komórkę w tym samym wierszu, zadzwoń ponownie **InsertCell**.
- Jeśli **InsertCell** zostanie wywołany natychmiast po [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) i końcu wiersza, tabela będzie kontynuowana w nowym wierszu.
- Metoda [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) kończąca tabelę powinna być wywołana tylko raz po wywołaniu **EndRow**. Wywołanie **EndTable** przesuwa kursor z bieżącej komórki do pozycji bezpośrednio za tabelą.

{{% /alert %}}

Proces tworzenia tabeli można wyraźnie zobaczyć na poniższym obrazku:

![creating-table-process](creating-table-process.jpg)

Poniższy przykład kodu pokazuje, jak utworzyć prostą tabelę przy użyciu **DocumentBuilder** z domyślnym formatowaniem:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Poniższy przykład kodu pokazuje, jak utworzyć sformatowaną tabelę przy użyciu DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Poniższy przykład kodu pokazuje, jak wstawić zagnieżdżoną tabelę za pomocą DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Utwórz tabelę za pomocą DOM (Document Object Model)

Tabele można wstawiać bezpośrednio do DOM, dodając nowy węzeł [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) w określonej pozycji.

Należy pamiętać, że natychmiast po utworzeniu węzła tabeli sama tabela będzie całkowicie pusta, to znaczy nie zawiera jeszcze wierszy i komórek. Aby wstawić wiersze i komórki do tabeli, dodaj odpowiednie węzły potomne [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) do DOM.

{{% alert color="primary" %}}

Ta metoda tworzenia tabeli używa tych samych wartości domyślnych tabeli, co przy użyciu **DocumentBuilder**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować nową tabelę od podstaw, dodając odpowiednie węzły podrzędne do drzewa dokumentów:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Utwórz tabelę z HTML

Aspose.Words obsługuje wstawianie treści do dokumentu ze źródła HTML przy użyciu metody [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Dane wejściowe mogą być kompletną stroną HTML lub tylko częściowym fragmentem.

Korzystając z metody **InsertHtml**, użytkownicy mogą wstawiać tabele do dokumentu za pomocą tagów tabel, takich jak `<table>`, `<tr>`, `<td>`.

Poniższy przykład kodu pokazuje, jak wstawić tabelę do dokumentu z ciągu zawierającego znaczniki HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Wstawianie kopii istniejącej tabeli

Często zdarza się, że trzeba utworzyć tabelę na podstawie już istniejącej tabeli w dokumencie. Najłatwiejszym sposobem zduplikowania tabeli przy zachowaniu całego formatowania jest sklonowanie węzła tabeli przy użyciu metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Tej samej techniki można użyć do dodania kopii istniejącego wiersza lub komórki do tabeli.

Poniższy przykład kodu pokazuje, jak zduplikować tabelę za pomocą konstruktorów węzłów:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Poniższy przykład kodu pokazuje, jak sklonować ostatni wiersz tabeli i dołączyć go do tabeli:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Jeśli szukasz tworzenia tabel w dokumencie, które rosną dynamicznie z każdym rekordem ze źródła danych, powyższa metoda nie jest zalecana. Zamiast tego pożądaną wydajność można łatwiej osiągnąć za pomocą Mail merge z regionami. Możesz dowiedzieć się więcej o tej technice w [Mail Merge z regionami](/words/cpp/types-of-mail-merge-operations/) sekcji.

## Porównaj sposoby tworzenia tabeli

Aspose.Words udostępnia kilka metod tworzenia nowych tabel w dokumencie. Każda metoda ma swoje zalety i wady, więc wybór, którego użyć, często zależy od konkretnej sytuacji.

Przyjrzyjmy się bliżej tym sposobom tworzenia tabel i porównajmy ich zalety i wady:

| Metoda | Zalety | Wady |
| :- | :- | :- |
| `DocumentBuilder` | Standardowa metoda wstawiania tabel i innej zawartości dokumentu | Czasami trudno jest stworzyć wiele odmian tabel jednocześnie z tą samą instancją builder |
| Via DOM | Lepiej pasuje do otaczającego kodu, który tworzy i wstawia węzły bezpośrednio do DOM bez użycia **DocumentBuilder** | Tabela jest tworzona "pusta": przed wykonaniem większości operacji należy wywołać [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/), aby utworzyć brakujące węzły podrzędne |
| Od HTML | Może utworzyć nową tabelę ze źródła HTML przy użyciu tagów takich jak `<table>`, `<tr>`, `<td>` | Nie wszystkie możliwe formaty tabeli Microsoft Word można zastosować do HTML |
| Klonowanie istniejącej tabeli | Możesz utworzyć kopię istniejącej tabeli, zachowując wszystkie formatowanie wierszy i komórek | Odpowiednie węzły podrzędne muszą zostać usunięte, zanim tabela będzie gotowa do użycia |
