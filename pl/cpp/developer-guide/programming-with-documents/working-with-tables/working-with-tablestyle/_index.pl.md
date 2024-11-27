---
title: Zmień styl tabeli w dokumentach Word
second_title: Aspose.Words dla C++
articleTitle: Zastosuj Styl Tabeli
linktitle: Zastosuj Styl Tabeli
description: "Zaawansowane formatowanie tabeli C++. Utwórz styl tabeli za pomocą C++. Zastosuj styl tabeli C++."
type: docs
weight: 80
url: /pl/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Styl tabeli definiuje zestaw formatowania, który można łatwo zastosować do tabeli. Formatowanie, takie jak obramowanie, cieniowanie, wyrównanie i czcionka, można ustawić w stylu tabeli i zastosować do wielu tabel, aby uzyskać spójny wygląd.

Aspose.Words obsługuje stosowanie stylu tabeli do tabeli, a także odczytywanie właściwości dowolnego stylu tabeli. Style tabel są zachowywane podczas ładowania i zapisywania w następujący sposób:

- Style tabel w formatach DOCX i WordML są zachowywane podczas ładowania i zapisywania w tych formatach
- Style tabel są zachowywane podczas ładowania i zapisywania w formacie DOC (ale nie w żadnym innym formacie)
- Podczas eksportowania do innych formatów, renderowania lub drukowania style tabel są rozszerzane do bezpośredniego formatowania w tabeli, dzięki czemu całe formatowanie jest zachowywane

## Utwórz styl tabeli

Użytkownik może utworzyć nowy styl i dodać go do kolekcji stylów. Metoda [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) służy do tworzenia nowego stylu tabeli.

Poniższy przykład kodu pokazuje, jak utworzyć nowy styl tabeli zdefiniowany przez użytkownika:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Skopiuj istniejący styl tabeli

W razie potrzeby możesz skopiować styl tabeli, który już istnieje w określonym dokumencie, do kolekcji stylów przy użyciu metody `AddCopy`.

Ważne jest, aby wiedzieć, że przy tym kopiowaniu kopiowane są również połączone style.

Poniższy przykład kodu pokazuje, jak zaimportować styl z jednego dokumentu do innego dokumentu:

EXAMPLE

## Zastosuj istniejący styl tabeli

Aspose.Words zapewnia [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) odziedziczony z klasy [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** ułatwia użytkownikowi stosowanie różnych opcji stylu, takich jak cieniowanie, dopełnienie, wcięcie, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) i [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) itp.

Ponadto Aspose.Words zapewnia klasę [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) i kilka właściwości klasy `Table`, aby określić styl tabeli, z którym będziemy pracować: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), i [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words zapewnia również klasę [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/), która reprezentuje specjalne formatowanie zastosowane do pewnego obszaru tabeli z przypisanym stylem tabeli, oraz [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/), który reprezentuje kolekcję **ConditionalStyle** obiektów. Ta kolekcja zawiera stały zestaw elementów reprezentujących jeden element dla każdej wartości typu wyliczenia [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Wyliczenie **ConditionalStyleType** definiuje wszystkie możliwe obszary tabeli, do których formatowanie warunkowe może być zdefiniowane w stylu tabeli.

W takim przypadku formatowanie warunkowe można zdefiniować dla wszystkich możliwych obszarów tabeli zdefiniowanych w typie wyliczenia ConditionalStyleType.

Poniższy przykład kodu pokazuje, jak zdefiniować formatowanie warunkowe dla wiersza nagłówka tabeli:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Możesz także wybrać części tabeli, do których chcesz zastosować style, takie jak Pierwsza kolumna, ostatnia kolumna, wiersze pasmowe. Są one wymienione w wyliczeniu [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) i są stosowane przez właściwość [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Wyliczenie **TableStyleOptions** umożliwia bitową kombinację tych funkcji.

Poniższy przykład kodu pokazuje, jak utworzyć nową tabelę z zastosowanym stylem tabeli:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Poniższe zdjęcia przedstawiają reprezentację **Table Styles** W Microsoft Word i odpowiadające im właściwości w Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Weź formatowanie ze stylu tabeli i zastosuj je jako formatowanie bezpośrednie

Aspose.Words zapewnia również metodę [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) do formatowania znalezionego w stylu tabeli i rozszerza go na wiersze i komórki tabeli jako formatowanie bezpośrednie. Spróbuj połączyć formatowanie ze stylem tabeli i stylem komórki.

{{% alert color="primary" %}}

Ta metoda nie zastąpi żadnego innego formatowania już zastosowanego do tabeli za pomocą formatu wiersza lub komórki.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak rozwinąć formatowanie ze stylów na wiersze i komórki tabeli jako formatowanie bezpośrednie:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
