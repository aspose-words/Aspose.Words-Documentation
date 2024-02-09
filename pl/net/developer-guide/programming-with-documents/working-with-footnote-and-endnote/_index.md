---
title: Praca z przypisami dolnymi i końcowymi w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z przypisami dolnymi i końcowymi
linktitle: Praca z przypisami dolnymi i końcowymi
description: "Jak manipulować przypisami dolnymi i końcowymi za pomocą C#."
type: docs
weight: 160
url: /pl/net/working-with-footnote-and-endnote/
---

Aspose.Words udostępnia również pewne klasy, metody i właściwości do pracy z przypisami dolnymi i końcowymi.

## Wstaw przypis końcowy i ustaw opcje numerowania

Jeśli chcesz wstawić przypis dolny lub końcowy do dokumentu Word, skorzystaj z metody [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Ta metoda wstawia przypis dolny lub końcowy do dokumentu.

Klasy [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) i [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) reprezentują opcje numeracji przypisów dolnych i końcowych.

Poniższy przykład kodu pokazuje, jak wstawić przypis końcowy do dokumentu i ustawić jego opcje numeracji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Ustaw liczbę kolumn układu przypisów

Liczbę kolumn układu przypisów można ustawić za pomocą właściwości [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Jeśli ta właściwość ma wartość 0, obszar przypisów jest formatowany przy użyciu liczby kolumn na podstawie liczby kolumn na wyświetlanej stronie.

Poniższy przykład kodu pokazuje, jak ustawić liczbę kolumn układu przypisów:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Ustaw pozycję przypisu dolnego i przypisu końcowego

Pozycja przypisu może znajdować się na dole każdej strony lub pod tekstem na każdej stronie. Przypis końcowy może znajdować się na końcu sekcji lub na końcu dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić położenie przypisu dolnego i przypisu końcowego:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
