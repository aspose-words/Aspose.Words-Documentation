---
title: Wstaw i dołącz dokumenty w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Wstaw i dołącz dokumenty
linktitle: Wstaw i dołącz dokumenty
description: "Łącz dokumenty w jeden: wstaw lub dołącz dokument do nowego lub istniejącego za pomocą funkcji Znajdź i zamień, pola scalania, zakładki lub po prostu na końcu dokumentu w C#."
type: docs
weight: 80
url: /pl/net/insert-and-append-documents/
---

Czasami wymagane jest połączenie kilku dokumentów w jeden. Możesz to zrobić ręcznie lub możesz użyć funkcji wstawiania lub dołączania Aspose.Words.

Operacja wstawiania umożliwia wstawienie treści wcześniej utworzonych dokumentów do nowego lub istniejącego.

Z kolei funkcja dołączania pozwala na dodanie dokumentu dopiero na końcu innego dokumentu.

W tym artykule wyjaśniono, jak wstawić lub dołączyć dokument do innego na różne sposoby i opisano typowe właściwości, które można zastosować podczas wstawiania lub dołączania dokumentów.

## Wstaw dokument {#insert-a-document}

Jak wspomniano powyżej, w Aspose.Words dokument jest reprezentowany jako drzewo węzłów, a operacja wstawienia jednego dokumentu do drugiego polega na skopiowaniu węzłów z pierwszego drzewa dokumentu do drugiego.

Dokumenty można wstawiać w różnych lokalizacjach na różne sposoby. Można na przykład wstawić dokument poprzez operację zamiany, pole scalania podczas operacji scalania lub poprzez zakładkę.

Możesz także użyć metody [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) lub [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), która jest podobna do wstawiania dokumentu w formacie Microsoft Word, aby wstawić cały dokument w bieżącej pozycji kursora bez wcześniejszego importowania.

Poniższy przykład kodu pokazuje, jak wstawić dokument przy użyciu metody **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Poniższy przykład kodu pokazuje, jak wstawić dokument przy użyciu metody **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

W poniższych podrozdziałach opisano możliwości wstawiania jednego dokumentu do drugiego.

### Wstaw dokument podczas operacji Znajdź i zamień {#insert-a-document-during-find-and-replace-operation}

Dokumenty można wstawiać podczas wykonywania operacji wyszukiwania i zamiany. Na przykład dokument może zawierać akapity z tekstem [WPROWADZENIE] i [WNIOSEK]. Jednak w dokumencie końcowym należy zastąpić te akapity treścią uzyskaną z innego dokumentu zewnętrznego. Aby to osiągnąć, musisz utworzyć procedurę obsługi zdarzenia zamiany.

Poniższy przykład kodu pokazuje, jak utworzyć procedurę obsługi zdarzenia zastępującego, aby użyć jej później w procesie wstawiania:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Poniższy przykład kodu pokazuje, jak wstawić treść jednego dokumentu do drugiego podczas operacji Znajdź i zamień:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Włóż dokument podczas operacji Mail Merge {#insert-a-document-during-mail-merge-operation}

Możesz wstawić dokument do pola scalania podczas operacji mail merge. Na przykład szablon mail merge może zawierać pole scalania, takie jak [Podsumowanie]. Ale w dokumencie końcowym musisz wstawić treść uzyskaną z innego dokumentu zewnętrznego do tego pola scalania. Aby to osiągnąć, musisz utworzyć procedurę obsługi zdarzenia scalania.

Poniższy przykład kodu pokazuje, jak utworzyć procedurę obsługi zdarzenia scalania, aby użyć jej później w procesie wstawiania:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Poniższy przykład kodu pokazuje, jak wstawić dokument do pola scalania przy użyciu utworzonej procedury obsługi:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Wstaw dokument w zakładce {#insert-a-document-at-bookmark}

Możesz zaimportować plik tekstowy do dokumentu i wstawić go zaraz za zakładką zdefiniowaną w dokumencie. Aby to zrobić, utwórz zakładkę akapitu, w którym chcesz wstawić dokument.

Poniższy przykład kodowania pokazuje, jak wstawić zawartość jednego dokumentu do zakładki w innym dokumencie:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Pamiętaj, że zakładka nie powinna zawierać wielu akapitów ani tekstu, który ma się pojawić w ostatecznym dokumencie wynikowym.

{{% /alert %}}

## Dołącz dokument {#append-a-document}

Może się zdarzyć, że zajdzie potrzeba dołączenia dodatkowych stron z dokumentu na końcu istniejącego dokumentu. Aby to zrobić, wystarczy wywołać metodę [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/), aby dodać dokument na końcu innego.

{{% alert color="primary" %}}

Należy pamiętać, że [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) jest metodą na poziomie węzła w dokumencie. Można na przykład utworzyć akapit, ustawić właściwości formatowania, a następnie dołączyć go jako element podrzędny do treści, korzystając z metody **AppendChild**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć dokument na końcu innego dokumentu:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Ręcznie importuj i wstaw węzły {#import-and-insert-nodes-manually}

Aspose.Words umożliwia automatyczne wstawianie i dołączanie dokumentów bez konieczności wcześniejszego importowania. Jeśli jednak chcesz wstawić lub dołączyć określony węzeł dokumentu, na przykład sekcję lub akapit, musisz najpierw ręcznie zaimportować ten węzeł.

Kiedy chcesz wstawić lub dołączyć jedną sekcję lub akapit do drugiej, zasadniczo musisz zaimportować węzły pierwszego drzewa węzłów dokumentu do drugiego przy użyciu metody [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). Po zaimportowaniu węzłów należy użyć metody [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/), aby wstawić nowy węzeł za/przed węzłem referencyjnym. Pozwala to dostosować proces wstawiania poprzez import węzłów z dokumentu i wstawianie ich w określonych pozycjach.

Możesz także użyć metody [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/), aby dodać nowy określony węzeł na końcu listy węzłów podrzędnych, na przykład jeśli chcesz dołączyć treść na poziomie akapitu, a nie sekcji.

Poniższy przykład kodu pokazuje, jak ręcznie importować węzły i wstawiać je po określonym węźle przy użyciu metody **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Import tworzy nowy węzeł będący kopią węzła pierwotnego i nadający się do wstawienia do dokumentu docelowego.

{{% /alert %}}

Treść jest importowana do dokumentu docelowego sekcja po sekcji, co oznacza, że ustawienia, takie jak ustawienia strony oraz nagłówki i stopki, zostaną zachowane podczas importu. Warto również pamiętać, że podczas wstawiania lub dołączania dokumentu można zdefiniować ustawienia formatowania, aby określić sposób łączenia dwóch dokumentów.

## Wspólne właściwości wstawiania i dołączania dokumentów {#common-properties-for-insert-and-append-documents}

Obie metody [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) i [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) akceptują [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) i [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) jako parametry wejściowe. **ImportFormatMode** pozwala kontrolować sposób łączenia formatowania dokumentu podczas importowania treści z jednego dokumentu do drugiego, wybierając różne tryby formatu, takie jak [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) i [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). Model **ImportFormatOptions** umożliwia wybór różnych opcji importu, takich jak [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) i [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words umożliwia dostosowanie wizualizacji dokumentu wynikowego po dodaniu dwóch dokumentów podczas operacji wstawiania lub dołączania przy użyciu właściwości [Section](https://reference.aspose.com/words/net/aspose.words/section/) i [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). Właściwość **PageSetup** zawiera wszystkie atrybuty sekcji, takie jak [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) i inne. Najczęstszym przypadkiem użycia jest ustawienie właściwości **SectionStart** w celu określenia, czy dodana treść pojawi się na tej samej stronie, czy zostanie podzielona na nową.

{{% alert color="primary" %}}

Należy pamiętać, że właściwości **Section** i **PageSetup** nie kontrolują sposobu wstawiania/dołączania dwóch dokumentów. Pozwalają jedynie na zmianę wyglądu dokumentu wynikowego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć jeden dokument do drugiego, jednocześnie zapobiegając podziałowi treści na dwie strony:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
