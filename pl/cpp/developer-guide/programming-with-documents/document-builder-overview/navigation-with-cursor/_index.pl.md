---
title: Nawigacja z kursorem w C++
second_title: Aspose.Words dla C++
articleTitle: Nawigacja z kursorem
linktitle: Nawigacja z kursorem
description: "Nawiguj między różnymi węzłami w dokumencie, takimi jak Akapit, zakładka lub określony znak, używając C++."
type: docs
weight: 10
url: /pl/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentem, nawet jeśli jest on krótki lub długi, musisz poruszać się po dokumencie. Nawigacja za pomocą wirtualnego kursora reprezentuje możliwość poruszania się między różnymi węzłami w dokumencie.

W krótkim dokumencie poruszanie się w dokumencie jest proste, ponieważ możesz przesunąć punkt wstawiania nawet za pomocą klawiszy strzałek na klawiaturze lub klikając myszką, aby zlokalizować punkt wstawiania w dowolnym miejscu. Ale gdy masz duży dokument, który ma wiele stron, te podstawowe techniki będą niewystarczające.

W tym artykule wyjaśniono, jak poruszać się w dokumencie i nawigować za pomocą wirtualnego kursora do różnych jego części.

## Wykrywanie Aktualnej Pozycji Kursora

Przed rozpoczęciem procesu poruszania się po dokumencie musisz uzyskać aktualnie wybrany węzeł. Dokładne położenie kursora w wybranym węźle można uzyskać za pomocą właściwości [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Ponadto zamiast pobierać bieżący węzeł, możesz uzyskać aktualnie wybrany akapit lub aktualnie wybraną sekcję, używając właściwości [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) i [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Wszelkie operacje wstawiania wykonywane przy użyciu [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) zostaną wstawione przed [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Gdy bieżący akapit jest pusty lub kursor znajduje się tuż przed końcem akapitu, **CurrentNode** zwraca nullptr.

## Metody nawigacji w dokumencie

Podczas edycji tekstu ważne jest, aby wiedzieć, jak poruszać się po dokumencie i gdzie dokładnie się w nim poruszać. Aspose.Words umożliwia poruszanie się w dokumencie i przechodzenie do jego różnych sekcji i części – jest to podobne do funkcji okienka nawigacji w Microsoft Word, aby przejść do strony lub nagłówka w dokumencie Word bez przewijania.

Główną metodą jest przesunięcie pozycji kursora do określonego węzła w dokumencie, można to osiągnąć za pomocą metody [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Poniższy przykład kodu pokazuje, jak przenieść **DocumentBuilder** do różnych węzłów w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Ale oprócz podstawowej metody **MoveTo** istnieją bardziej szczegółowe.

### Przejdź do początku lub końca dokumentu

Możesz przejść do początku lub końca dokumentu za pomocą metod [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) i [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Poniższy przykład kodu pokazuje, jak przesunąć pozycję kursora na początek lub koniec dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Nawiguj Za Pomocą Zakładek

Możesz zaznaczyć miejsce, które chcesz znaleźć i łatwo się do niego przenieść. Możesz wstawić do dokumentu dowolną liczbę zakładek, a następnie poruszać się po nich, identyfikując zakładki z unikalnymi nazwami. Możesz przejść do zakładki za pomocą metody [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Poniższe przykłady kodu pokazują, jak przenieść pozycję kursora do zakładki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Przejdź do komórek tabeli

Możesz przejść do komórki tabeli za pomocą metody [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Ta metoda umożliwi nawigację kursorem do dowolnej komórki w określonej tabeli. Ponadto można określić indeks, aby przesunąć kursor do dowolnej pozycji lub określonego znaku w komórce w metodzie **MoveToCell**.

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora do określonej komórki tabeli:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Przejdź do pola

Możesz przejść do określonego pola w dokumencie za pomocą metody [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Ponadto możesz przejść do określonego pola scalania za pomocą metody [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Poniższy przykład kodu pokazuje, jak przenieść kursor kreatora dokumentów do określonego pola:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Przejdź do nagłówka lub stopki

Możesz przejść na początek nagłówka lub stopki, używając metody [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Poniższy przykład kodu pokazuje, jak przenieść kursor kreatora dokumentów do nagłówka lub stopki dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Przejdź do sekcji lub akapitu

Możesz przejść do określonej sekcji lub akapitu, używając metod [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) LUB [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Ponadto można określić indeks, aby przesunąć kursor do dowolnej pozycji lub określonego znaku w akapicie w metodzie **MoveToParagraph**.

Poniższy przykład kodu pokazuje, jak przejść do określonej sekcji i określonego akapitu w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
