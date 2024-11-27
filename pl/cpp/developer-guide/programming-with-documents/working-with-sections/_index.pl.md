---
title: Praca z sekcjami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z sekcjami
linktitle: Praca z sekcjami
description: "Zrozumienie pojęć sekcji dokumentu i praktyk manipulacji przy użyciu C++. Wstaw sekcję do dokumentu C++. Usuń sekcję C++. Kopiuj sekcje między dokumentami."
type: docs
weight: 120
url: /pl/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Czasami potrzebujesz dokumentu, który nie ma tego samego formatowania na wszystkich stronach. Na przykład może być konieczna modyfikacja formatów numerów stron, inny rozmiar i orientacja strony lub pierwsza strona dokumentu jako strona tytułowa bez numeracji. Możesz to osiągnąć za pomocą sekcji.

Sekcje to węzły poziomu, które kontrolują nagłówki i stopki, orientację, kolumny, marginesy, formatowanie numerów stron i inne.

Aspose.Words umożliwia zarządzanie sekcjami, dzielenie dokumentu na sekcje i wprowadzanie zmian formatowania, które dotyczą tylko określonej sekcji. Aspose.Words przechowuje informacje o formatowaniu sekcji, takie jak nagłówki i stopki, ustawienia strony i ustawienia kolumn w podziale sekcji.

W tym artykule wyjaśniono, jak pracować z sekcjami i podziałami sekcji.

## Jaka jest sekcja i podział sekcji

Sekcje dokumentu są reprezentowane przez klasy [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) i [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Obiekty sekcji są bezpośrednimi dziećmi węzła [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) i można do nich uzyskać dostęp za pośrednictwem właściwości [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Możesz zarządzać tymi węzłami za pomocą niektórych metod, takich jak [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), i inni.

Podział sekcji to opcja, która dzieli strony dokumentu na sekcje z konfigurowalnymi układami.

## Rodzaje podziału sekcji

Aspose.Words umożliwia dzielenie i formatowanie dokumentów przy użyciu różnych podziałów sekcji wyliczenia [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Możesz także użyć wyliczenia [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/), aby wybrać typ podziału, który ma zastosowanie tylko dla pierwszej sekcji, takiej jak NewColumn, NewPage, EvenPage, i OddPage.

## Zarządzaj sekcją

Ponieważ sekcja jest normalnym węzłem złożonym, Cała manipulacja węzłem API może być używana do manipulowania sekcjami: dodawania, usuwania i innych operacji na sekcjach. Możesz przeczytać więcej o węzłach w artykule [Aspose.Words Obiektowy Model Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/).

Z drugiej strony możesz również użyć `DocumentBuilder` API do pracy z sekcjami. W tym artykule skupimy się na tym konkretnym sposobie pracy z sekcjami.

## Wstaw lub Usuń podział sekcji

Aspose.Words umożliwia wstawienie podziału sekcji do tekstu przy użyciu metody [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Poniższy przykład kodu pokazuje, jak wstawić podział sekcji do dokumentu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Użyj metody [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/), aby usunąć podział sekcji. Jeśli nie musisz usuwać określonego podziału sekcji, a zamiast tego Usuwać zawartość tej sekcji,możesz użyć metody [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Poniższy przykład kodu pokazuje, jak usunąć podziały sekcji:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Zauważ, że podział sekcji zawiera informacje o sekcji, która jest przed nią, a nie o sekcji, która jest po niej. Jeśli więc usuniesz podział sekcji, tekst przed usuniętym podziałem otrzyma właściwości podziału sekcji po nim. Może to spowodować, że cały dokument stanie się krajobrazem lub nagłówki i stopki zmienią się lub całkowicie znikną.

{{% /alert %}}

## Przenieś sekcję

Jeśli chcesz przenieść sekcję z jednej pozycji do drugiej w dokumencie, musisz uzyskać indeks tej sekcji. Aspose.Words pozwala uzyskać pozycję sekcji z [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Możesz użyć właściwości [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), aby uzyskać wszystkie sekcje w dokumencie. Ale jeśli chcesz uzyskać tylko pierwszą sekcję, możesz użyć właściwości [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pierwszej sekcji i iterować przez elementy potomne węzła złożonego:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Określ układ sekcji

Czasami chcesz, aby twój dokument wyglądał lepiej, tworząc kreatywne układy dla różnych sekcji dokumentu. Jeśli chcesz określić typ bieżącej siatki sekcji, możesz wybrać tryb układu sekcji za pomocą wyliczenia [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Default
- Siatka
- LineGrid
- SnapToChars

Poniższy przykład kodu pokazuje, jak ograniczyć liczbę wierszy, które może mieć każda strona:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Edytuj sekcję

Po dodaniu nowej sekcji do dokumentu nie będzie treści ani akapitu, które można edytować. Aspose.Words pozwala zagwarantować, że sekcja zawiera treść z co najmniej jednym akapitem przy użyciu metody [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – automatycznie doda węzeł treści (lub HeaderFooter) do dokumentu, a następnie doda do niego akapit.

Poniższy przykład kodu pokazuje, jak przygotować nowy węzeł sekcji za pomocą **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Dołącz lub dodaj zawartość

Jeśli chcesz narysować jakiś kształt lub dodać tekst lub obraz na początku/końcu sekcji, możesz użyć metod [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) i [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) klasy [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Poniższy przykład kodu pokazuje, jak dołączyć zawartość istniejącej sekcji:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Sklonuj sekcję

Aspose.Words umożliwia powielenie sekcji poprzez utworzenie jej pełnej kopii przy użyciu metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Poniższy przykład kodu pokazuje, jak sklonować pierwszą sekcję w dokumencie:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Kopiuj sekcje między dokumentami

W niektórych przypadkach możesz mieć duże dokumenty z wieloma sekcjami i chcesz skopiować zawartość sekcji z jednego dokumentu do drugiego.

Aspose.Words umożliwia kopiowanie sekcji między dokumentami przy użyciu metody [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Poniższy przykład kodu pokazuje, jak kopiować sekcje między dokumentami:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Praca z nagłówkiem sekcji i stopką

Podstawowe zasady wyświetlania nagłówka lub stopki dla każdej sekcji są dość proste:

1. Jeśli sekcja nie ma własnych nagłówków/stopek określonego typu, jest pobierana z poprzedniej sekcji.
2. Typ nagłówka / stopki wyświetlanej na stronie jest kontrolowany przez ustawienia sekcji" Inna pierwsza strona "i" różne strony nieparzyste i Parzyste " – jeśli są wyłączone, tytuły własne sekcji są ignorowane.

Poniższy przykład kodu pokazuje, jak utworzyć 2 sekcje z różnymi nagłówkami:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Jeśli chcesz usunąć tekst nagłówków i stopek bez usuwania [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) obiektów w dokumencie,możesz użyć metody [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Ponadto możesz użyć metody [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/), aby usunąć wszystkie kształty z nagłówków i stopek w dokumencie.

Poniższy przykład kodu pokazuje, jak wyczyścić zawartość wszystkich nagłówków i stopek w sekcji:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Poniższy przykład kodu, jak usunąć wszystkie kształty ze wszystkich stopek nagłówków w sekcji:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Dostosuj Właściwości strony w sekcji

Przed wydrukowaniem strony lub dokumentu możesz dostosować i zmodyfikować rozmiar i układ pojedynczej strony lub całego dokumentu. Dzięki konfiguracji strony możesz zmienić ustawienia stron dokumentu, takie jak marginesy, Orientacja i rozmiar, aby drukować różne strony pierwsze lub strony nieparzyste.

Aspose.Words umożliwia dostosowanie właściwości strony i sekcji za pomocą klasy [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Poniższy przykład kodu pokazuje, jak ustawić takie właściwości, jak rozmiar strony i orientacja dla bieżącej sekcji:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Poniższy przykład kodu pokazuje, jak zmodyfikować właściwości strony we wszystkich sekcjach:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Zobacz także

- [Logiczne poziomy węzłów w dokumencie](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Wstawianie i dołączanie dokumentów](/words/cpp/insert-and-append-documents/)
