---
title: Zmień styl tabeli w dokumentach programu Word
second_title: Aspose.Words dla .NET
articleTitle: Zastosuj styl tabeli
linktitle: Zastosuj styl tabeli
description: "Zaawansowane formatowanie tabeli C#. Utwórz styl tabeli za pomocą C#. Zastosuj styl tabeli C#."
type: docs
weight: 80
url: /pl/net/working-with-tablestyle/
---

Styl tabeli definiuje zestaw formatowania, który można łatwo zastosować do tabeli. Formatowanie, takie jak obramowania, cieniowanie, wyrównanie i czcionka, można ustawić w stylu tabeli i zastosować do wielu tabel w celu uzyskania spójnego wyglądu.

Aspose.Words obsługuje stosowanie stylu tabeli do tabeli, a także odczytywanie właściwości dowolnego stylu tabeli. Style tabeli są zachowywane podczas ładowania i zapisywania w następujący sposób:

- Style tabel w formatach DOCX i WordML są zachowywane podczas ładowania i zapisywania w tych formatach
- Style tabeli są zachowywane podczas ładowania i zapisywania w formacie DOC (ale nie w żadnym innym formacie)
- Podczas eksportowania do innych formatów, renderowania lub drukowania style tabeli są rozszerzane do bezpośredniego formatowania w tabeli, dzięki czemu całe formatowanie zostaje zachowane

## Utwórz styl tabeli

Użytkownik może stworzyć nowy styl i dodać go do kolekcji stylów. Do utworzenia nowego stylu tabeli używana jest metoda [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/).

Poniższy przykład kodu pokazuje, jak utworzyć nowy styl tabeli zdefiniowany przez użytkownika:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Skopiuj istniejący styl tabeli

Jeśli to konieczne, możesz skopiować styl tabeli, który już istnieje w określonym dokumencie, do swojej kolekcji stylów, korzystając z metody `AddCopy`.

Ważne jest, aby wiedzieć, że podczas tego kopiowania kopiowane są również połączone style.

Poniższy przykład kodu pokazuje, jak zaimportować styl z jednego dokumentu do innego dokumentu:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Zastosuj istniejący styl tabeli

Aspose.Words zapewnia [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) odziedziczony z klasy [Style](https://reference.aspose.com/words/net/aspose.words/style/). **TableStyle** ułatwia użytkownikowi stosowanie różnych opcji stylu, takich jak cieniowanie, dopełnienie, wcięcia, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) i [Font](https://reference.aspose.com/words/net/aspose.words/style/font/) itp.

Ponadto Aspose.Words udostępnia klasę [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) i kilka właściwości klasy `Table`, aby określić, z jakim stylem tabeli będziemy pracować: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/) i [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words udostępnia również klasę [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) reprezentującą specjalne formatowanie zastosowane do pewnego obszaru tabeli z przypisanym stylem tabeli oraz klasę [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) reprezentującą zbiór obiektów **ConditionalStyle**. Ta kolekcja zawiera stały zestaw elementów reprezentujących jeden element dla każdej wartości typu wyliczeniowego [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/). Wyliczenie **ConditionalStyleType** definiuje wszystkie możliwe obszary tabeli, dla których można zdefiniować formatowanie warunkowe w stylu tabeli.

W takim przypadku formatowanie warunkowe można zdefiniować dla wszystkich możliwych obszarów tabeli zdefiniowanych w typie wyliczeniowym ConditionalStyleType.

Poniższy przykład kodu pokazuje, jak zdefiniować formatowanie warunkowe wiersza nagłówka tabeli:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Możesz także wybrać, do których części tabeli chcesz zastosować style, np. pierwsza kolumna, ostatnia kolumna lub wiersze z paskami. Są one wymienione w wyliczeniu [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) i są stosowane poprzez właściwość [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/). Wyliczenie **TableStyleOptions** umożliwia bitową kombinację tych funkcji.

Poniższy przykład kodu pokazuje, jak utworzyć nową tabelę z zastosowanym stylem tabeli:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Poniższe zdjęcia przedstawiają reprezentację **Table Styles** w formacie Microsoft Word i odpowiadające im właściwości w formacie Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Weź formatowanie ze stylu tabeli i zastosuj je jako formatowanie bezpośrednie

Aspose.Words udostępnia również metodę [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/), która umożliwia formatowanie znalezione w stylu tabeli i rozszerzanie go na wiersze i komórki tabeli w ramach formatowania bezpośredniego. Spróbuj połączyć formatowanie ze stylem tabeli i stylem komórki.

{{% alert color="primary" %}}

Ta metoda nie zastąpi żadnego innego formatowania zastosowanego już do tabeli w formacie wiersza lub komórki.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak rozszerzyć formatowanie ze stylów na wiersze i komórki tabeli w ramach formatowania bezpośredniego:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
