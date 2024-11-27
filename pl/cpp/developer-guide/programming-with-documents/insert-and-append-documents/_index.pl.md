---
title: Wstawianie i dołączanie dokumentów w C++
second_title: Aspose.Words dla C++
articleTitle: Wstawianie i dołączanie dokumentów
linktitle: Wstawianie i dołączanie dokumentów
description: "Połącz dokumenty w jeden: Wstaw lub dołącz dokument do nowego lub istniejącego za pomocą znajdź i zamień, połącz pole, zakładkę lub po prostu na końcu dokumentu."
type: docs
weight: 80
url: /pl/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Czasami wymagane jest połączenie kilku dokumentów w jeden. Możesz to zrobić ręcznie lub możesz użyć funkcji wstawiania lub dołączania Aspose.Words.

Operacja Wstaw umożliwia wstawienie zawartości wcześniej utworzonych dokumentów do nowego lub istniejącego.

Z kolei funkcja dołączania umożliwia dodanie dokumentu tylko na końcu innego dokumentu.

W tym artykule wyjaśniono, jak wstawić lub dołączyć dokument do innego dokumentu na różne sposoby i opisano typowe właściwości, które można zastosować podczas wstawiania lub dołączania dokumentów.

## Wstaw dokument

Jak wspomniano powyżej, w Aspose.Words dokument jest reprezentowany jako drzewo węzłów, a operacja wstawiania jednego dokumentu do drugiego polega na kopiowaniu węzłów z pierwszego drzewa dokumentów do drugiego.

Możesz wstawiać dokumenty w różnych lokalizacjach na różne sposoby. Na przykład możesz wstawić dokument za pomocą operacji zamiany, pola scalania podczas operacji scalania lub zakładki.

Możesz także użyć metody [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), która jest podobna do wstawiania dokumentu w Microsoft Word, Aby wstawić cały dokument w bieżącej pozycji kursora bez wcześniejszego importowania.

Poniższy przykład kodu pokazuje, jak wstawić dokument przy użyciu metody `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Poniższe podsekcje opisują opcje, podczas których można wstawić jeden dokument do drugiego.

### Wstawianie dokumentu podczas operacji znajdź i zamień {#insert-a-document-during-find-and-replace-operation}

Możesz wstawiać dokumenty podczas wykonywania operacji znajdź i zamień. Na przykład dokument może zawierać akapity z tekstami [INTRODUCTION] i [CONCLUSION]. Ale w dokumencie końcowym musisz zastąpić te akapity treścią uzyskaną z innego dokumentu zewnętrznego. Aby to osiągnąć, musisz utworzyć procedurę obsługi dla zdarzenia replace.

Poniższy przykład kodu pokazuje, jak utworzyć procedurę obsługi dla zdarzenia zastępującego, aby użyć go później w procesie wstawiania:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Poniższy przykład kodu pokazuje, jak wstawiać zawartość jednego dokumentu do drugiego podczas operacji znajdź i zamień:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Wstawianie dokumentu podczas operacji Mail Merge {#insert-a-document-during-mail-merge-operation}

Możesz wstawić dokument do pola scalania podczas operacji Mail Merge. Na przykład szablon Mail Merge może zawierać pole scalania, takie jak [podsumowanie]. Ale w dokumencie końcowym musisz wstawić zawartość uzyskaną z innego dokumentu zewnętrznego do tego pola scalania. Aby to osiągnąć, musisz utworzyć procedurę obsługi dla zdarzenia scalania.

Poniższy przykład kodu pokazuje, jak utworzyć procedurę obsługi dla zdarzenia scalania, aby użyć go później w procesie wstawiania:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Poniższy przykład kodu pokazuje, jak wstawić dokument do pola scalania za pomocą utworzonego programu obsługi:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Wstaw dokument w zakładce

Możesz zaimportować plik tekstowy do dokumentu i wstawić go zaraz po zakładce zdefiniowanej w dokumencie. Aby to zrobić, utwórz akapit z zakładkami, w którym chcesz wstawić dokument.

Poniższy przykład kodowania pokazuje, jak wstawić zawartość jednego dokumentu do zakładki w innym dokumencie:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Pamiętaj, że zakładka nie powinna zawierać wielu akapitów ani tekstu, które mają pojawić się w końcowym dokumencie wynikowym.

{{% /alert %}}

## Dołącz dokument

Możesz mieć przypadek użycia, w którym musisz dołączyć dodatkowe strony od dokumentu do końca istniejącego dokumentu. Aby to zrobić, wystarczy wywołać metodę [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/), aby dodać dokument na końcu innego.

{{% alert color="primary" %}}

Zauważ, że [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) jest metodą na poziomie węzła w dokumencie. Na przykład możesz utworzyć akapit, ustawić właściwości formatowania, a następnie dołączyć go jako dziecko do treści przy użyciu metody **AppendChild**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć dokument na końcu innego dokumentu:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Importuj i wstawiaj węzły ręcznie {#import-and-insert-nodes-manually}

Aspose.Words umożliwia automatyczne wstawianie i dołączanie dokumentów bez wcześniejszych wymagań importowania. Jeśli jednak chcesz wstawić lub dołączyć określony węzeł dokumentu, taki jak sekcja lub akapit, najpierw musisz zaimportować ten węzeł ręcznie.

Gdy musisz wstawić lub dołączyć jedną sekcję lub akapit do drugiej, zasadniczo musisz zaimportować węzły pierwszego drzewa węzłów dokumentu do drugiego przy użyciu metody [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Po zaimportowaniu węzłów należy użyć metody [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/), aby wstawić nowy węzeł po / przed węzłem odniesienia. Pozwala to dostosować proces wstawiania poprzez importowanie węzłów z dokumentu i wstawianie go w określonych pozycjach.

Możesz także użyć metody [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/), aby dodać nowy określony węzeł na końcu listy węzłów podrzędnych, na przykład, jeśli chcesz dołączyć zawartość na poziomie akapitu zamiast na poziomie sekcji.

Poniższy przykład kodu pokazuje, jak ręcznie importować węzły i wstawiać je po określonym węźle przy użyciu metody **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Import tworzy nowy węzeł, który jest kopią oryginalnego węzła i nadaje się do wstawienia do dokumentu docelowego.

{{% /alert %}}

Zawartość jest importowana do dokumentu docelowego sekcja po sekcji, co oznacza, że ustawienia, takie jak konfiguracja strony oraz nagłówki lub stopki, są zachowywane podczas importu. Warto również zauważyć, że podczas wstawiania lub dołączania dokumentu można zdefiniować ustawienia formatowania, aby określić sposób łączenia dwóch dokumentów.

## Wspólne właściwości wstawiania i dołączania dokumentów {#common-properties-for-insert-and-append-documents}

Zarówno [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), jak i [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) metody akceptują [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) i [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) jako parametry wejściowe. **ImportFormatMode** pozwala kontrolować sposób scalania formatowania dokumentu podczas importowania zawartości z jednego dokumentu do drugiego, wybierając różne tryby formatu, takie jak [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) i [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** pozwala wybrać różne opcje importu, takie jak [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), i [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words umożliwia dostosowanie wizualizacji wynikowego dokumentu, gdy dwa dokumenty są dodawane razem w operacji wstawiania lub dołączania przy użyciu właściwości [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) i [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Właściwość **PageSetup** zawiera wszystkie atrybuty sekcji, takie jak [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), i inni Najczęstszym przypadkiem użycia jest ustawienie właściwości **SectionStart**, aby określić, czy dodana zawartość pojawi się na tej samej stronie, czy zostanie podzielona na nową.

{{% alert color="primary" %}}

Należy zauważyć, że właściwości **Section** i **PageSetup** nie kontrolują sposobu wstawiania/dołączania dwóch dokumentów razem. Pozwalają tylko zmienić wygląd dokumentu wynikowego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć jeden dokument do drugiego, jednocześnie zapobiegając dzieleniu zawartości na dwie strony:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
