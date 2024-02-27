---
title: Nawigacja za pomocą kursora w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Nawigacja za pomocą kursora
linktitle: Nawigacja za pomocą kursora
description: "Nawiguj między różnymi węzłami w dokumencie, takimi jak akapit, zakładka lub określony znak, używając Python."
type: docs
weight: 10
url: /pl/python-net/navigation-with-cursor/
---

Podczas pracy z dokumentem, nawet jeśli jest on krótki lub długi, będziesz musiał poruszać się po dokumencie. Nawigacja za pomocą wirtualnego kursora reprezentuje możliwość poruszania się pomiędzy różnymi węzłami w dokumencie.

W krótkim dokumencie poruszanie się po dokumencie jest proste, ponieważ punkt wstawiania można przesuwać nawet za pomocą klawiszy strzałek na klawiaturze lub klikając myszą, aby umieścić punkt wstawiania w dowolnym miejscu. Ale gdy masz duży dokument, który ma wiele stron, te podstawowe techniki okażą się niewystarczające.

W tym artykule wyjaśniono, jak poruszać się po dokumencie i nawigować wirtualnym kursorem do różnych jego części.

## Wykrywanie aktualnej pozycji kursora

Przed rozpoczęciem procesu nawigacji po dokumencie musisz uzyskać aktualnie wybrany węzeł. Dokładną pozycję kursora w wybranym węźle można uzyskać za pomocą właściwości [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Ponadto zamiast pobierać bieżący węzeł, można uzyskać aktualnie wybrany akapit lub aktualnie wybraną sekcję, korzystając z właściwości [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) i [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Wszelkie operacje wstawiania wykonane przy użyciu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) zostaną wstawione przed [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Gdy bieżący akapit jest pusty lub kursor znajduje się tuż przed końcem akapitu, funkcja [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) zwraca Brak.

## Nawigowanie po metodach w dokumencie

Podczas edycji tekstu ważne jest, aby wiedzieć, jak poruszać się po dokumencie i gdzie dokładnie się w nim poruszać. Aspose.Words umożliwia poruszanie się po dokumencie i przechodzenie do jego różnych sekcji i części – jest to podobne do funkcjonalności okienka nawigacji w Microsoft Word, umożliwiającego przejście do strony lub nagłówka w dokumencie Word bez przewijania.

Główną metodą jest możliwość przeniesienia pozycji kursora do określonego węzła w dokumencie. Można to osiągnąć za pomocą metody [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

Poniższy przykład kodu pokazuje, jak przenieść [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) do różnych węzłów w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Ale oprócz podstawowej metody [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) istnieją bardziej szczegółowe.

### Przejdź do początku lub końca dokumentu

Możesz przejść na początek lub na koniec dokumentu, korzystając z metod [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) i [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora na początek lub na koniec dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Nawiguj za pomocą zakładek

Możesz zaznaczyć miejsce, które chcesz znaleźć i łatwo do niego ponownie przenieść. Możesz wstawić do dokumentu dowolną liczbę zakładek, a następnie przeglądać je, identyfikując zakładki za pomocą unikalnych nazw. Do zakładki można przejść metodą [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora do zakładki:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Przejdź do komórek tabeli

Do komórki tabeli można przejść za pomocą metody [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Ta metoda umożliwia nawigację kursorem do dowolnej komórki w określonej tabeli. Ponadto można określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w komórce w ramach metody [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

Poniższy przykład kodu pokazuje, jak przenieść pozycję kursora do określonej komórki tabeli:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Przejdź do pola

Do konkretnego pola w dokumencie możesz przejść korzystając z metody [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Ponadto możesz przejść do konkretnego pola scalania, korzystając z metody [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

Poniższy przykład kodu pokazuje, jak przenieść kursor narzędzia do tworzenia dokumentów do określonego pola:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Przejdź do nagłówka lub stopki

Możesz przejść na początek nagłówka lub stopki, korzystając z metody [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

Poniższy przykład kodu pokazuje, jak przenieść kursor narzędzia do tworzenia dokumentów do nagłówka lub stopki dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Przejdź do sekcji lub akapitu

Możesz przejść do określonej sekcji lub akapitu, korzystając z metod [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) lub [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Ponadto możesz określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w akapicie w ramach metody [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

Poniższy przykład kodu pokazuje, jak przejść do określonej sekcji i konkretnego akapitu w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}