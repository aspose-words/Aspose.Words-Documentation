---
title: Praca ze stylami tabeli w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zastosuj styl tabeli
linktitle: Zastosuj styl tabeli
description: "Zaawansowane formatowanie tabeli Java. Utwórz styl tabeli za pomocą Java. Wprowadzenie do zaawansowanego formatowania tabeli, Style tabeli przy użyciu Java."
type: docs
weight: 80
url: /pl/java/working-with-tablestyle/
---

Styl tabeli definiuje zestaw formatowania, który można łatwo zastosować do tabeli. Formatowanie takie jak granice, cieniowanie, wyrównanie i czcionka mogą być ustawione w stylu tabeli i stosowane do wielu tabel dla spójnego wyglądu.

Aspose.Words obsługuje stosowanie stylu tabeli do tabeli, a także właściwości czytania każdego stylu tabeli. Style tabeli są zachowywane podczas załadunku i oszczędzania w następujący sposób:

- Style tabeli w formatach DOCX i WordML są zachowane przy załadunku i zapisywaniu do tych formatów
- Style tabeli są zachowane podczas wczytywania i zapisywania w formacie DOC (ale nie do innego formatu)
- Podczas eksportu do innych formatów, renderowania lub drukowania, style tabeli są rozszerzone do bezpośredniego formatowania w tabeli, więc wszystkie formatowanie jest zachowane

## Utwórz styl tabeli

Użytkownik może stworzyć nowy styl i dodać go do kolekcji stylu. W [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) metoda jest używana do tworzenia nowego stylu tabeli.

Poniższy przykład kodu pokazuje jak stworzyć nowy styl tabeli zdefiniowany przez użytkownika:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Kopiuj istniejący styl tabeli

W razie potrzeby można skopiować styl tabeli, który już istnieje w określonym dokumencie do kolekcji stylu za pomocą `AddCopy` Metoda.

Ważne jest, aby wiedzieć, że z tego kopiowania, powiązane style są również kopiowane.

Poniższy przykład kodu pokazuje jak zaimportować styl z jednego dokumentu do innego dokumentu:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Zastosuj istniejący styl tabeli

Aspose.Words zapewnia [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) po [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Klasa. **TableStyle** ułatwia użytkownikowi stosowanie różnych opcji stylu, takich jak cieniowanie, ścieranie, wgłębienie, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) oraz [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), itd.

Ponadto, Aspose.Words zapewnia [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) klasy i kilka właściwości `Table` klasa w celu określenia stylu tabeli będziemy pracować z: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), oraz [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words również zapewnia [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) klasy, która reprezentuje specjalne formatowanie stosowane na niektórych obszarach tabeli z przypisanym stylu tabeli, i [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) który reprezentuje kolekcję **ConditionalStyle** obiektów. Ta kolekcja zawiera stały zestaw elementów reprezentujących jedną pozycję dla każdej wartości [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) rodzaj wyliczenia. W **ConditionalStyleType** wyliczenie określa wszystkie możliwe obszary tabeli, do których można zdefiniować formatowanie warunkowe w stylu tabeli.

W takim przypadku można określić formatowanie warunkowe dla wszystkich możliwych powierzchni tabeli zdefiniowanych w ramach rodzaju wyliczenia ConditionalStyleType.

Poniższy przykład kodu pokazuje jak zdefiniować warunkowe formatowanie dla nagłówka tabeli:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Można również wybrać, które części tabeli do zastosowania stylów, takich jak pierwsza kolumna, ostatnia kolumna, rząd banded. Są one wymienione w [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) wyliczenie i są stosowane przez [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) nieruchomości. W **TableStyleOptions** wyliczenie pozwala na kombinację tych funkcji.

Poniższy przykład kodu pokazuje, jak stworzyć nową tabelę z zastosowaniem stylu tabeli:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Poniższe zdjęcia przedstawiają reprezentację **Table Styles** w Microsoft Word i ich właściwości w Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Zastosuj formatowanie ze stylu tabeli jako bezpośrednie formatowanie

Aspose.Words zapewnia również [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) metoda podejmowania formatowania znalezionego na stole stylu i rozszerza go na wiersze i komórki tabeli jako bezpośrednie formatowanie. Spróbuj połączyć formatowanie z stylu tabeli i stylu komórki.

{{% alert color="primary" %}}

Metoda ta nie zastąpi żadnego innego formatowania już stosowanego do tabeli poprzez wiersz lub format komórki.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak rozszerzyć formatowanie ze stylów na wiersze i komórki tabeli jako bezpośrednie formatowanie:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}