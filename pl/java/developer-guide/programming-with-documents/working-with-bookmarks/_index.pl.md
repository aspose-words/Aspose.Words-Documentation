---
title: Praca z zakładkami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z zakładkami
linktitle: Praca z zakładkami
description: "Zrozumienie koncepcji zakładek i jak zakładki mogą być używane w programie za pomocą Java."
type: docs
weight: 180
url: /pl/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Zakładki identyfikują się w Microsoft Word dokumentuj miejsca lub fragmenty, które wymieniasz i identyfikujesz dla przyszłych odniesień. Na przykład, możesz użyć zakładki do identyfikacji tekstu, który chcesz zmienić później. Zamiast przewijania dokumentu w celu zlokalizowania tekstu, możesz do niego przejść używając okna dialogowego zakładki.

Z Aspose.Words, Możesz użyć zakładek w raportach lub dokumentach, aby umieścić pewne dane w zakładce lub zastosować specjalne formatowanie do jej zawartości. Można również używać zakładek do pobierania tekstu z określonej lokalizacji w dokumencie.

Działania, które mogą być wykonywane przy użyciu zakładek Aspose.Words są takie same jak te, które można wykonać za pomocą Microsoft Word. Możesz wstawić nową zakładkę, usunąć, przejść do zakładki, uzyskać lub ustawić nazwę zakładki, uzyskać lub ustawić tekst dołączony do niej.

## Wstaw zakładkę

Stosowanie [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) oraz [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) utworzyć zakładkę, zaznaczając odpowiednio jej początek i koniec. Nie zapomnij przekazać tej samej nazwy zakładki obu metodom. Zakładki w dokumencie mogą się nakładać i rozpraszać w dowolnym zakresie. Źle utworzone zakładki lub zakładki z podwójnymi nazwami będą ignorowane po zapisaniu dokumentu.

{{% alert color="primary" %}}

Wszystkie białe miejsca w zakładkach zostały zastąpione przez podkreślenia. Ograniczenie to pochodziło z formatów MS Word, ponieważ zakładki w formatach MS Word, takich jak DOCX czy DOC, nie mogą mieć białych przestrzeni. Jednak PDF pozwala na takie zakładki. Więc teraz, jeśli potrzebujesz użyć zakładek w PDF, XPS lub kontury SWF, można ich używać w białych przestrzeniach.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak utworzyć nową zakładkę:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Uzyskaj zakładki

Czasami konieczne jest uzyskanie kolekcji zakładek do powtarzania poprzez zakładki lub do innych celów. Użyj **Node.getRange** właściwość narażona przez dowolny węzeł dokumentu, który zwraca a **Range** obiekt reprezentujący część dokumentu zawartą w tym węźle. Użyj tego obiektu, aby pobrać **BookmarkCollection** a następnie użyć indeksera kolekcji, aby uzyskać konkretną zakładkę.

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik z poniższych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Poniższy przykład kodu pokazuje jak uzyskać zakładki z kolekcji zakładek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Poniższy przykład kodu pokazuje jak uzyskać lub ustawić nazwę zakładki i tekst:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Poniższy przykład kodu pokazuje jak założyć zakładkę do tabeli:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Jeśli zmienisz nazwę zakładki na nazwę, która już istnieje w dokumencie, nie zostanie wygenerowany żaden błąd i tylko pierwsza zakładka zostanie zachowana podczas zapisywania dokumentu.

Należy zauważyć, że niektóre zakładki w dokumencie są przypisane do tworzenia pól. Przechodząc do takiej zakładki i wstawiając tekst wstawia tekst do kodu pola formularza. Chociaż nie unieważni to pola formularza, dodany tekst nie będzie widoczny, ponieważ staje się częścią kodu pola.

Poniższy przykład kodu pokazuje jak uzyskać dostęp do kolumn tabeli z zakładkami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Przenieś do zakładki

Jeśli musisz umieścić bogatą zawartość (nie tylko zwykły tekst) w zakładce, należy użyć [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) przesunięcie kursora do zakładki, a następnie użycie **DocumentBuilder** metody i właściwości do wstawiania zawartości.

## Pokaż zawartość ukrytej zakładki

Cała zakładka (* w tym zawartość zakładki *) może być umieszczona w prawdziwej części `IF` użycie pola Aspose.Words. To może być w taki sposób, że `IF` pole zawiera zagnieżdżone pole łączenia w wyrażeniu (* Left of Operator *) i w zależności od wartości pola łączenia, `IF` pole pokazuje lub ukrywa zawartość zakładki w Word Document.

Poniższy przykład kodu pokazuje jak pokazać / ukryć zakładki.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
