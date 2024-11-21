---
title: Wstawić i dołączyć dokumenty w Java
second_title: Aspose.Words zamiast Java
articleTitle: Wstaw i załącz dokumenty
linktitle: Wstaw i załącz dokumenty
description: "Łączenie dokumentów w jeden: wstawić lub dołączyć dokument do nowego lub istniejącego dokumentu za pomocą wyszukiwania i zastępowania, pola scalania, zakładki lub po prostu na końcu dokumentu w Java."
type: docs
weight: 80
url: /pl/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Czasami wymagane jest połączenie kilku dokumentów w jedno. Możesz to zrobić ręcznie lub możesz użyć Aspose.Words wstawić lub dołączyć funkcję.

Operacja insert pozwala na dodanie zawartości wcześniej utworzonych dokumentów do nowej lub istniejącej.

Z kolei funkcja append pozwala na dodanie dokumentu tylko na końcu innego dokumentu.

Ten artykuł wyjaśnia, w jaki sposób wstawić lub dołączyć dokument do innego dokumentu na różne sposoby i opisuje wspólne właściwości, które można stosować podczas wprowadzania lub dodawania dokumentów.

## Wstaw dokument

Jak wspomniano powyżej, w Aspose.Words dokument jest przedstawiany jako drzewo węzłów, a działanie wstawiania jednego dokumentu do drugiego polega na kopiowaniu węzłów od pierwszego drzewa dokumentów do drugiego.

Dokumenty można umieszczać w różnych miejscach na różne sposoby. Na przykład, można wstawić dokument poprzez operację wymiany, pole scalania podczas operacji łączenia lub poprzez zakładkę.

Można również użyć [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) lub [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metoda, która jest podobna do wstawiania dokumentu w Microsoft Word, wstawić cały dokument na bieżącej pozycji kursora bez wcześniejszego przywozu.

Poniższy przykład kodu pokazuje jak wstawić dokument używając **InsertDocument** Metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Poniższy przykład kodu pokazuje jak wstawić dokument używając **InsertDocumentInline** Metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Poniższe podsekcje opisują opcje, podczas których można umieścić jeden dokument w innym.

### Wstaw dokument podczas wyszukiwania i zamiany operacji {#insert-a-document-during-find-and-replace-operation}

Podczas wykonywania operacji znajdź i zastąp. Na przykład dokument może zawierać ustępy z tekstem [WPROWADZENIE] i [WNIOSEK]. Jednak w dokumencie końcowym należy zastąpić te ustępy treścią otrzymaną z innego dokumentu zewnętrznego. Aby to osiągnąć, trzeba będzie utworzyć opiekuna dla zdarzenia zastępczego.

Poniższy przykład kodu pokazuje, jak utworzyć opiekuna dla zdarzenia zastępującego, aby używać go później w procesie wprowadzania:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Poniższy przykład kodu pokazuje, jak wstawić zawartość jednego dokumentu do drugiego podczas operacji wyszukiwania i zastępowania:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Wstaw dokument podczas Mail Merge Działanie {#insert-a-document-during-mail-merge-operation}

Można umieścić dokument w polu połączenia podczas mail merge działanie. Na przykład mail merge szablon może zawierać pole scalania, takie jak [podsumowanie]. Jednak w dokumencie końcowym należy umieścić zawartość otrzymaną z innego dokumentu zewnętrznego w tym polu. Aby to osiągnąć, trzeba będzie utworzyć opiekuna dla zdarzenia połączenia.

Poniższy przykład kodu pokazuje, jak utworzyć opiekuna dla łączącego się zdarzenia do wykorzystania go później w procesie wprowadzania:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Poniższy przykład kodu pokazuje, jak wstawić dokument do pola połączenia za pomocą utworzonego opiekuna:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Wstaw dokument na zakładce

Możesz zaimportować plik tekstowy do dokumentu i wstawić go zaraz po zakładce zdefiniowanej w dokumencie. Aby to zrobić, należy utworzyć ustęp z zakładkami, w którym chcesz umieścić dokument.

Poniższy przykład kodowania pokazuje jak umieścić zawartość jednego dokumentu na zakładce w innym dokumencie:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Zauważ, że zakładka nie powinna zawierać wielu akapitów lub tekstu, które chcesz, aby zostały wyświetlone w ostatecznym dokumencie.

{{% /alert %}}

## Dołącz dokument

Możesz mieć przypadek użycia, w którym musisz dołączyć dodatkowe strony od dokumentu do końca istniejącego dokumentu. Aby to zrobić, wystarczy zadzwonić do [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metoda dodawania dokumentu do końca innego dokumentu.

{{% alert color="primary" %}}

Zauważ, że [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) jest metodą poziomu węzła w dokumencie. Na przykład, można utworzyć paragraf, ustawić właściwości formatowania, a następnie dołączyć go jako dziecko do ciała za pomocą **AppendChild** Metoda.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć dokument do końca innego dokumentu:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importuj i wstaw węzły ręcznie {#import-and-insert-nodes-manually}

Aspose.Words pozwala na automatyczne wstawianie i uzupełnianie dokumentów bez żadnych wcześniejszych wymagań importowych. Jednakże, jeśli musisz wstawić lub dołączyć określony węzeł dokumentu, np. sekcję lub paragraf, najpierw musisz zaimportować ten węzeł ręcznie.

Gdy musisz wstawić lub dołączyć jedną sekcję lub paragraf do innej, musisz w zasadzie zaimportować węzły pierwszego drzewa węzłów dokumentu do drugiej z wykorzystaniem [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) Metoda. Po importowaniu węzłów, należy użyć [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) metoda wprowadzania nowego węzła po / przed węzłem odniesienia. Pozwala to dostosować proces wprowadzania poprzez importowanie węzłów z dokumentu i wstawianie go na określonych pozycjach.

Można również użyć [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) metoda dodawania nowego określonego węzła do końca listy węzłów dziecięcych, na przykład, jeśli chcesz dołączyć zawartość na poziomie paragrafu zamiast na poziomie sekcji.

Poniższy przykład kodu pokazuje, jak ręcznie importować węzły i umieszczać je po określonym węźle za pomocą **InsertAfter** Metoda:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Import tworzy nowy węzeł, który jest kopią oryginalnego węzła i nadaje się do umieszczenia w dokumencie docelowym.

{{% /alert %}}

Zawartość jest importowana do sekcji dokumentu docelowego według sekcji, co oznacza, że ustawienia, takie jak konfiguracja strony i nagłówki lub stopki, są zachowane podczas importu. Warto również zauważyć, że można zdefiniować ustawienia formatowania przy wstawianiu lub dołączaniu dokumentu w celu określenia sposobu łączenia dwóch dokumentów.

## Common Properties for insert and Append Documents {#common-properties-for-insert-and-append-documents}

Oba [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) oraz [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metody przyjęte [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) oraz [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) jako parametry wejściowe. W **ImportFormatMode** pozwala kontrolować sposób łączenia formatowania dokumentów przy importowaniu treści z jednego dokumentu do drugiego poprzez wybór różnych trybów formatowania, takich jak: [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), oraz [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). W **ImportFormatOptions** pozwala wybrać różne opcje importu, takie jak [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), oraz [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words pozwala dostosować wizualizację otrzymanego dokumentu, gdy dwa dokumenty są dodawane do wstawić lub dołączyć operacji za pomocą [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) oraz [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) nieruchomości. W **PageSetup** właściwość zawiera wszystkie atrybuty sekcji, takie jak [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), I innych. Najczęstszym przypadkiem zastosowania jest ustawienie **SectionStart** właściwość do określenia, czy dodana zawartość pojawi się na tej samej stronie lub podzielony na nową.

{{% alert color="primary" %}}

Należy pamiętać, że **Section** oraz **PageSetup** właściwości nie kontrolują sposobu, w jaki dwa dokumenty są wstawiane / załączane razem. Pozwalają tylko na zmianę wyglądu dokumentu wyniku.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak załączyć jeden dokument do drugiego, zachowując zawartość z podziałem na dwie strony:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
