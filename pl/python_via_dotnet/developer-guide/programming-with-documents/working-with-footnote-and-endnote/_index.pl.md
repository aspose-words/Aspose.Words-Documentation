---
title: Praca z przypisami dolnymi i końcowymi
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z przypisami dolnymi i końcowymi
linktitle: Praca z przypisami dolnymi i końcowymi
description: "Wstaw przypisy dolne lub końcowe do dokumentu i określ jego opcje za pomocą Python."
type: docs
weight: 160
url: /pl/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words udostępnia również pewne klasy, metody i właściwości do pracy z przypisami dolnymi i końcowymi.

## Wstaw przypis końcowy i ustaw opcje numerowania

Jeśli chcesz wstawić przypis dolny lub końcowy w dokumencie Word, skorzystaj z metody [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Ta metoda wstawia przypis dolny lub końcowy do dokumentu.

Klasy [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) i [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) reprezentują opcje numeracji przypisów dolnych i końcowych.

Poniższy przykład kodu pokazuje, jak wstawić przypis końcowy do dokumentu i ustawić jego opcje numeracji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Ustaw liczbę kolumn układu przypisów

Liczbę kolumn układu przypisów można ustawić za pomocą właściwości [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Jeśli ta właściwość ma wartość 0, obszar przypisów jest formatowany przy użyciu liczby kolumn na podstawie liczby kolumn na wyświetlanej stronie.

Poniższy przykład kodu pokazuje, jak ustawić liczbę kolumn układu przypisów:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Ustaw pozycję przypisu dolnego i przypisu końcowego

Pozycja przypisu może znajdować się na dole każdej strony lub pod tekstem na każdej stronie. Przypis końcowy może znajdować się na końcu sekcji lub na końcu dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić położenie przypisu dolnego i przypisu końcowego:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
