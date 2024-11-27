---
title: Praca z przypisem przypis końcowy w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z przypisem i przypisem końcowym
linktitle: Praca z przypisem i przypisem końcowym
description: "Jak manipulować przypisami i przypisami końcowymi za pomocą C++."
type: docs
weight: 160
url: /pl/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words zapewnia również niektóre klasy, metody i właściwości do pracy z przypisami i przypisami końcowymi.

## Wstaw przypis końcowy i ustaw opcje numeracji

Jeśli chcesz wstawić przypis lub przypis końcowy do dokumentu Word, użyj metody [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Ta metoda wstawia przypis lub przypis końcowy do dokumentu.

Klasy [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) i [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) reprezentują opcje numeracji przypisów i przypisów końcowych.

Poniższy przykład kodu pokazuje, jak wstawić przypis końcowy do dokumentu i ustawić jego opcje numeracji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Ustaw liczbę kolumn układu przypisów

Możesz ustawić liczbę kolumn układu przypisów przy użyciu właściwości [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Jeśli ta właściwość ma wartość 0, obszar przypisów jest sformatowany z liczbą kolumn na podstawie liczby kolumn na wyświetlanej stronie.

Poniższy przykład kodu pokazuje, jak ustawić liczbę kolumn dla układu przypisu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Ustaw pozycję przypisu i EndNote

Pozycja przypisu może znajdować się na dole każdej strony lub pod tekstem na każdej stronie. Pozycja przypisu końcowego może znajdować się na końcu sekcji lub na końcu dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić pozycję przypisu i przypisu końcowego:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
