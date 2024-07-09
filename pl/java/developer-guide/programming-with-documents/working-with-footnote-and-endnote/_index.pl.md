---
title: Praca z przypisami i notatkami Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z przypisami i notatkami
linktitle: Praca z przypisami i notatkami
description: "Jak manipulować przypisami i końcówkami przy użyciu Java."
type: docs
weight: 160
url: /pl/java/working-with-footnote-and-endnote/
---

Aspose.Words zawiera również niektóre klasy, metody i właściwości do pracy z przypisami i notatkami końcowymi.

## Wstaw opcje numeryzacji endnote i ustaw

Jeśli chcesz umieścić przypis lub notę końcową w dokumencie Word, użyj [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) Metoda. Metoda ta wprowadza przypis lub notę końcową do dokumentu.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) oraz [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) klasy reprezentują opcje numeracji przypisu i notatki końcowe.

Poniższy przykład kodu pokazuje, jak umieścić notę końcową w dokumencie i ustawić jego opcje numeracji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Ustaw liczbę kolumn układu przypisu

Możesz ustawić liczbę kolumn układu przypisu używając [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) nieruchomości. Jeżeli ta właściwość ma wartość 0, obszar przypisów jest sformatowany liczbą kolumn na podstawie liczby kolumn na wyświetlonej stronie.

Poniższy przykład kodu pokazuje, jak ustawić liczbę kolumn dla układu przypisu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Ustaw pozycję przypisu i endNote

Pozycja przypisu może być na dole każdej strony lub pod tekstem na każdej stronie. Pozycja końcowa może znajdować się na końcu sekcji lub na końcu dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić pozycję przypisu i notatki końcowe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
