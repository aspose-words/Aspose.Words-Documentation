---
title: Wprowadzenie i tworzenie tabel
second_title: Aspose.Words dla Python via .NET
articleTitle: Wprowadzenie i tworzenie tabel
linktitle: Wprowadzenie i tworzenie tabel
description: "Twórz tabele w dokumencie i zarządzaj nimi za pomocą Python."
type: docs
weight: 10
url: /pl/python-net/create-a-table/
---

Aspose.Words umożliwia użytkownikom tworzenie tabel w dokumencie od podstaw i udostępnia kilka różnych metod, aby to zrobić. W tym artykule przedstawiono szczegółowe informacje na temat dodawania sformatowanych tabel do dokumentu przy użyciu poszczególnych metod, a także porównanie poszczególnych metod na końcu artykułu.

## Domyślne style tabeli

Nowo utworzona tabela otrzymuje wartości domyślne podobne do tych używanych w Microsoft Word:

| Właściwość tabeli | Domyślnie w Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Tabela może być wbudowana, jeśli jest ciasno umieszczona, lub swobodna, jeśli można ją umieścić w dowolnym miejscu strony. Domyślnie Aspose.Words zawsze tworzy tabele wbudowane.

{{% /alert %}}

## Utwórz tabelę za pomocą DocumentBuilder

W Aspose.Words użytkownicy mogą tworzyć tabele w dokumencie za pomocą [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Podstawowy algorytm tworzenia tabeli jest następujący:

1. Uruchom tabelę za pomocą [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Dodaj komórkę do tabeli za pomocą [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) – spowoduje to automatyczne rozpoczęcie nowego wiersza
3. Opcjonalnie użyj właściwości [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/), aby określić formatowanie komórki
4. Wstaw zawartość komórki, korzystając z odpowiednich metod **DocumentBuilder**, takich jak [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) i inne
5. Powtarzaj kroki 2-4, aż rząd będzie kompletny
6. Wywołaj [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/), aby zakończyć bieżący wiersz
7. Opcjonalnie użyj właściwości [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/), aby określić formatowanie wierszy
8. Powtarzaj kroki 2-7, aż tabela będzie kompletna
9. Zadzwoń do [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/), aby zakończyć tworzenie tabeli

{{% alert color="primary" %}}

Ważne szczegóły:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) można także wywołać wewnątrz komórki i w takim przypadku rozpoczyna on tworzenie zagnieżdżonej tabeli w komórce.
- Po wywołaniu [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) tworzona jest nowa komórka, a wszelka treść dodana innymi metodami klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) zostanie dodana do bieżącej komórki. Aby utworzyć nową komórkę w tym samym wierszu, wywołaj ponownie **InsertCell**.
- Jeśli **InsertCell** zostanie wywołany bezpośrednio po [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) i na końcu wiersza, tabela będzie kontynuowana w nowym wierszu.
- Metodę [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) kończącą tabelę należy wywołać tylko raz po wywołaniu **EndRow**. Wywołanie **EndTable** przesuwa kursor z bieżącej komórki do pozycji bezpośrednio za tabelą.

{{% /alert %}}

Proces tworzenia tabeli można wyraźnie zobaczyć na poniższym obrazku:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="proces-tworzenia-tabeli" style="zoom:50%;" />

Poniższy przykład kodu pokazuje, jak utworzyć prostą tabelę przy użyciu formatu **DocumentBuilder** z domyślnym formatowaniem:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Poniższy przykład kodu pokazuje, jak utworzyć sformatowaną tabelę za pomocą narzędzia DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Poniższy przykład kodu pokazuje, jak wstawić zagnieżdżoną tabelę za pomocą narzędzia DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Utwórz tabelę za pomocą DOM (Document Object Model)

Możesz wstawiać tabele bezpośrednio do DOM, dodając nowy węzeł [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) w określonej pozycji.

Należy pamiętać, że zaraz po utworzeniu węzła tabeli sama tabela będzie całkowicie pusta, czyli nie będzie jeszcze zawierać wierszy i komórek. Aby wstawić wiersze i komórki do tabeli, dodaj odpowiednie węzły podrzędne [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) do pliku DOM.

{{% alert color="primary" %}}

Ta metoda tworzenia tabeli wykorzystuje te same ustawienia domyślne tabeli, co w przypadku korzystania z **DocumentBuilder**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zbudować od podstaw nową tabelę, dodając odpowiednie węzły podrzędne do drzewa dokumentu:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create tabela z HTML

Aspose.Words obsługuje wstawianie treści do dokumentu ze źródła HTML przy użyciu metody [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/). Dane wejściowe mogą być kompletną stroną HTML lub tylko częściowym fragmentem.

Korzystając z metody **InsertHtml**, użytkownicy mogą wstawiać tabele do dokumentu za pomocą znaczników tabel, takich jak `<table>`, `<tr>`, `<td>`.

Poniższy przykład kodu pokazuje, jak wstawić tabelę do dokumentu z ciągu zawierającego znaczniki HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Wstaw kopię istniejącej tabeli

Często zdarza się, że trzeba utworzyć tabelę w oparciu o tabelę już istniejącą w dokumencie. Najłatwiejszym sposobem powielenia tabeli przy zachowaniu całego formatowania jest sklonowanie węzła tabeli przy użyciu metody [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/).

Tej samej techniki można użyć do dodania kopii istniejącego wiersza lub komórki do tabeli.

Poniższy przykład kodu pokazuje, jak powielić tabelę za pomocą konstruktorów węzłów:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak sklonować ostatni wiersz tabeli i dołączyć go do tabeli:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Jeśli planujesz utworzyć w dokumencie tabele, które rosną dynamicznie wraz z każdym rekordem ze źródła danych, powyższa metoda nie jest zalecana. Zamiast tego żądany wynik można łatwiej osiągnąć, używając Mail merge z regionami.

## Porównaj sposoby tworzenia tabeli

Aspose.Words udostępnia kilka metod tworzenia nowych tabel w dokumencie. Każda metoda ma swoje zalety i wady, dlatego wybór często zależy od konkretnej sytuacji.

Przyjrzyjmy się bliżej tym sposobom tworzenia tabel i porównajmy ich zalety i wady:

|  metoda | Zalety |  Niedogodności |
|  :-  |  :-  |  :-  |
| Za pośrednictwem narzędzia DocumentBuilder | Standardowa metoda wstawiania tabel i innej zawartości dokumentu | Czasami trudno jest utworzyć wiele odmian tabel jednocześnie za pomocą tej samej instancji konstruktora |
| Za pośrednictwem DOM |  Lepiej pasuje do otaczającego kodu, który tworzy i wstawia węzły bezpośrednio do DOM bez użycia **DocumentBuilder** | Tabela jest tworzona jako "pusta": przed wykonaniem większości operacji należy wywołać [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/), aby utworzyć brakujące węzły podrzędne |
| Z HTMLa | Można utworzyć nową tabelę ze źródła HTML przy użyciu tagów takich jak `<table>`, `<tr>`, `<td>` | Nie wszystkie możliwe formaty tabel Microsoft Word można zastosować do HTML |
| Klonowanie istniejącej tabeli | Można utworzyć kopię istniejącej tabeli, zachowując całe formatowanie wierszy i komórek | Zanim tabela będzie gotowa do użycia, należy usunąć odpowiednie węzły podrzędne |