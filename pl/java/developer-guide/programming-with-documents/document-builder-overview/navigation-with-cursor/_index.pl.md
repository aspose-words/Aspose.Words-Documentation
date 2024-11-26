---
title: Nawigacja kursorem w Java
second_title: Aspose.Words zamiast Java
articleTitle: Nawigacja kursorem
linktitle: Nawigacja kursorem
description: "Nawiguj między różnymi węzłami w dokumencie, np. paragrafem, zakładką lub konkretnym znakiem za pomocą Java."
type: docs
weight: 5
url: /pl/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentem, nawet jeśli jest krótki lub długi, trzeba będzie przejść przez dokument. Nawigacja z wirtualnym kursorem reprezentuje zdolność do nawigacji między różnymi węzłami w dokumencie.

W krótkim dokumencie, poruszanie się w dokumencie jest proste, ponieważ można przenieść punkt wprowadzania nawet za pomocą klawiszy strzałek klawiatury lub klikając myszką, aby zlokalizować punkt wprowadzania, gdzie chcesz. Ale kiedy masz duży dokument, który ma wiele stron, te podstawowe techniki będą niewystarczające.

Ten artykuł wyjaśnia jak poruszać się w dokumencie i poruszać się z wirtualnym kursorem do różnych jego części.

## Wykrywanie bieżącej pozycji kursora

Przed rozpoczęciem procesu nawigacji przez dokument, trzeba będzie uzyskać węzeł, który jest aktualnie wybrany. Możesz uzyskać dokładną pozycję kursora w wybranym węźle za pomocą [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) nieruchomości. Ponadto, zamiast uzyskania bieżącego węzła, można uzyskać wybrany obecnie akapit lub aktualnie wybraną sekcję za pomocą [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) oraz [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) nieruchomości.

Wszelkie operacje wstawiania wykonywane przy użyciu [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) zostaną wprowadzone przed [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Gdy bieżący akapit jest pusty lub kursor jest umieszczony tuż przed końcem akapitu, **CurrentNode** zwraca null.

## Metody nawigacji w dokumencie

Podczas edycji tekstu ważne jest, aby wiedzieć, jak poruszać się po dokumencie i gdzie dokładnie przenieść się w nim. Aspose.Words pozwala poruszać się w dokumencie i poruszać się do różnych sekcji i części - jest to podobne do funkcjonalności panela nawigacyjnego w Microsoft Word przejść do strony lub nagłówka w dokumencie Word bez przewijania.

Głównym sposobem jest możliwość przesunięcia pozycji kursora do określonego węzła w dokumencie, można to osiągnąć za pomocą [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) Metoda.

Poniższy przykład kodu pokazuje jak przenieść **DocumentBuilder** do różnych węzłów w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Ale poza podstawowymi **MoveTo** Metoda, są bardziej konkretne.

### Przejdź do początku lub końca dokumentu

Można przejść do początku lub końca dokumentu za pomocą [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) oraz [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) metody.

Poniższy przykład kodu pokazuje jak przenieść pozycję kursora na początek lub koniec dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Nawigacja z zakładkami

Możesz zaznaczyć miejsce, które chcesz znaleźć i przejść do niego ponownie łatwo. Można umieścić w dokumencie tyle zakładek, ile chcesz, a następnie przejść przez nie poprzez identyfikację zakładek o unikalnych nazwach. Można przejść do zakładki za pomocą [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) Metoda.

Poniższe przykłady kodowe pokazują jak przenieść pozycję kursora do zakładki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Nawigacja do komórek tabeli

Można przenieść się do komórki tabeli za pomocą [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) Metoda. Metoda ta pozwala na nawigację kursora do dowolnej komórki w określonej tabeli. Dodatkowo, możesz określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w komórce wewnątrz **MoveToCell** Metoda.

Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do określonej komórki tabeli:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Przejdź na pole

Można przenieść się do określonego pola w dokumencie za pomocą [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) Metoda. Dodatkowo, można przejść do konkretnego pola połączenia za pomocą [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Metoda.

Poniższy przykład kodu pokazuje jak przenieść kursor konstruktora dokumentu do określonego pola:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Przejdź do nagłówka lub footera

Można przejść do początku nagłówka lub stopki za pomocą [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) Metoda

Poniższy przykład kodu pokazuje jak przenieść kursor builder dokumentu do nagłówka lub stopki dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Przejdź do sekcji lub ustępu

Można przejść do określonej sekcji lub paragrafu za pomocą [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) lub [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) metody. Dodatkowo, możesz określić indeks, aby przenieść kursor do dowolnej pozycji lub określonego znaku w akapicie w **MoveToParagraph** Metoda.

Poniższy przykład kodu pokazuje, jak przejść do konkretnej sekcji i konkretnego akapitu w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
