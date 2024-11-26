---
title: Nawigacja za pomocą kursora w C#
second_title: Aspose.Words dla .NET
articleTitle: Nawigacja za pomocą kursora
linktitle: Nawigacja za pomocą kursora
description: "Nawiguj między różnymi węzłami w dokumencie, takimi jak akapit, zakładka lub określony znak, używając C#."
type: docs
weight: 10
url: /pl/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentem, nawet jeśli jest on krótki lub długi, będziesz musiał poruszać się po dokumencie. Nawigacja za pomocą wirtualnego kursora reprezentuje możliwość poruszania się pomiędzy różnymi węzłami w dokumencie.

W krótkim dokumencie poruszanie się po dokumencie jest proste, ponieważ punkt wstawiania można przesuwać nawet za pomocą klawiszy strzałek na klawiaturze lub klikając myszą, aby umieścić punkt wstawiania w dowolnym miejscu. Ale gdy masz duży dokument, który ma wiele stron, te podstawowe techniki okażą się niewystarczające.

W tym artykule wyjaśniono, jak poruszać się po dokumencie i nawigować wirtualnym kursorem do różnych jego części.

## Wykrywanie aktualnej pozycji kursora

Przed rozpoczęciem procesu nawigacji po dokumencie musisz uzyskać aktualnie wybrany węzeł. Dokładną pozycję kursora w wybranym węźle można uzyskać za pomocą właściwości [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Ponadto zamiast pobierać bieżący węzeł, można uzyskać aktualnie wybrany akapit lub aktualnie wybraną sekcję, korzystając z właściwości [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) i [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

Wszelkie operacje wstawiania wykonane przy użyciu [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) zostaną wstawione przed [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Gdy bieżący akapit jest pusty lub kursor znajduje się tuż przed końcem akapitu, format **CurrentNode** zwraca wartość null.

## Nawigowanie po metodach w dokumencie

Podczas edycji tekstu ważne jest, aby wiedzieć, jak poruszać się po dokumencie i gdzie dokładnie się w nim poruszać. Aspose.Words umożliwia poruszanie się po dokumencie i przechodzenie do jego różnych sekcji i części – jest to podobne do funkcjonalności okienka nawigacji w Microsoft Word, umożliwiającego przejście do strony lub nagłówka w dokumencie Word bez przewijania.

Główną metodą jest możliwość przeniesienia pozycji kursora do określonego węzła w dokumencie. Można to osiągnąć za pomocą metody [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

Poniższy przykład kodu pokazuje, jak przenieść **DocumentBuilder** do różnych węzłów w dokumencie:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Ale oprócz podstawowej metody **MoveTo** istnieją bardziej szczegółowe.

### Przejdź do początku lub końca dokumentu

Możesz przejść na początek lub na koniec dokumentu, korzystając z metod [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) i [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/).

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora na początek lub na koniec dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Nawiguj za pomocą zakładek

Możesz zaznaczyć miejsce, które chcesz znaleźć i łatwo do niego ponownie przenieść. Możesz wstawić do dokumentu dowolną liczbę zakładek, a następnie przeglądać je, identyfikując zakładki za pomocą unikalnych nazw. Do zakładki można przejść metodą [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora do zakładki:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Przejdź do komórek tabeli

Do komórki tabeli można przejść za pomocą metody [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/). Ta metoda umożliwia nawigację kursorem do dowolnej komórki w określonej tabeli. Ponadto możesz określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w komórce w ramach metody **MoveToCell**.

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora do określonej komórki tabeli:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Przejdź do pola

Do konkretnego pola w dokumencie możesz przejść korzystając z metody [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Ponadto możesz przejść do konkretnego pola scalania, korzystając z metody [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

Poniższy przykład kodu pokazuje, jak przenieść kursor narzędzia do tworzenia dokumentów do określonego pola:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Przejdź do nagłówka lub stopki

Możesz przejść na początek nagłówka lub stopki, korzystając z metody [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)

Poniższy przykład kodu pokazuje, jak przenieść kursor narzędzia do tworzenia dokumentów do nagłówka lub stopki dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Przejdź do sekcji lub akapitu

Możesz przejść do określonej sekcji lub akapitu, korzystając z metod [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) lub [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/). Ponadto można określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w akapicie w ramach metody **MoveToParagraph**.

Poniższy przykład kodu pokazuje, jak przejść do określonej sekcji i konkretnego akapitu w dokumencie:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
