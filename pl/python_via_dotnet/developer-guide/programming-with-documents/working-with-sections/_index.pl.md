---
title: Praca z sekcjami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z sekcjami
linktitle: Praca z sekcjami
description: "Twórz i zarządzaj sekcjami i podziałami sekcji w dokumencie za pomocą Python. Wstaw sekcję do dokumentu Python. Usuń sekcję Python. Kopiuj sekcje pomiędzy dokumentami."
type: docs
weight: 120
url: /pl/python-net/working-with-sections/
---

Czasami potrzebny jest dokument, który nie ma tego samego formatowania na wszystkich stronach. Na przykład może zaistnieć potrzeba zmodyfikowania formatu numeracji stron, zmiany rozmiaru i orientacji strony lub ustawienia pierwszej strony dokumentu jako strony tytułowej bez żadnej numeracji. Można to osiągnąć za pomocą sekcji.

Sekcje to węzły poziomu, które kontrolują nagłówki i stopki, orientację, kolumny, marginesy, formatowanie numerów stron i inne.

Aspose.Words umożliwia zarządzanie sekcjami, dzielenie dokumentu na sekcje i wprowadzanie zmian w formatowaniu, które dotyczą tylko określonej sekcji. Aspose.Words przechowuje informacje o formatowaniu sekcji, takie jak nagłówki i stopki, ustawienia strony i ustawienia kolumn w podziale sekcji.

W tym artykule wyjaśniono, jak pracować z sekcjami i podziałami sekcji.

## Co to jest sekcja i podział sekcji

Sekcje dokumentu są reprezentowane przez klasy [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) i [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Obiekty przekroju są bezpośrednimi elementami podrzędnymi węzła [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i można uzyskać do nich dostęp za pośrednictwem właściwości [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). Możesz zarządzać tymi węzłami, korzystając z niektórych metod, takich jak [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) i innych.

Podział sekcji to opcja, która dzieli strony dokumentu na sekcje z możliwością dostosowania układów.

## Rodzaje podziału sekcji

Aspose.Words umożliwia dzielenie i formatowanie dokumentów przy użyciu różnych podziałów sekcji wyliczenia [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- SekcjaPrzerwaCiągła
- SekcjaPrzerwaNowaKolumna
- SekcjaPrzerwaNowaStrona
- SekcjaBreakEvenPage
- SekcjaBreakOddPage

Możesz także użyć wyliczenia [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/), aby wybrać typ podziału, który ma zastosowanie tylko dla pierwszej sekcji, taki jak NewColumn, NewPage, EvenPage i OddPage.

## Zarządzaj sekcją

Ponieważ sekcja jest normalnym węzłem złożonym, manipulację całym węzłem API można wykorzystać do manipulowania sekcjami: dodawania, usuwania i innych operacji na sekcjach. Więcej o węzłach przeczytasz w artykule [Aspose.Words Document Object Model (DOM)](/words/pl/python-net/aspose-words-document-object-model/).

Z drugiej strony formatu `DocumentBuilder` API można także używać do pracy z sekcjami. W tym artykule skupimy się na tym konkretnym sposobie pracy z sekcjami.

## Wstaw lub usuń podział sekcji

Aspose.Words umożliwia wstawienie podziału sekcji do tekstu przy użyciu metody [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

Poniższy przykład kodu pokazuje, jak wstawić podział sekcji do dokumentu:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Użyj metody [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default), aby usunąć podział sekcji. Jeśli nie musisz usuwać określonego podziału sekcji, a zamiast tego usunąć zawartość tej sekcji, możesz użyć metody [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

Poniższy przykład kodu pokazuje, jak usunąć podziały sekcji:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Należy pamiętać, że podział sekcji zawiera informacje o sekcji poprzedzającej, a nie o sekcji następującej po nim. Jeśli więc usuniesz podział sekcji, tekst przed usuniętym podziałem otrzyma właściwości następującego po nim podziału sekcji. Może to spowodować, że cały dokument stanie się poziomy lub nagłówki i stopki zmienią się lub znikną całkowicie.

{{% /alert %}}

## Przenieś sekcję

Jeśli chcesz przenieść sekcję z jednej pozycji na drugą w dokumencie, musisz uzyskać indeks tej sekcji. Aspose.Words pozwala uzyskać pozycję sekcji z [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Możesz użyć właściwości [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), aby uzyskać wszystkie sekcje w dokumencie. Ale jeśli chcesz uzyskać tylko pierwszą sekcję, możesz użyć właściwości [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pierwszej sekcji i wykonać iterację po elementach podrzędnych węzła złożonego:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Określ układ sekcji

Czasami chcesz, aby Twój dokument wyglądał lepiej, tworząc kreatywne układy dla różnych sekcji dokumentu. Jeśli chcesz określić typ bieżącej siatki przekroju, możesz wybrać tryb układu przekroju za pomocą wyliczenia [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- Domyślny
- Siatka
-Siatka liniowa
- SnapToChars

Poniższy przykład kodu pokazuje, jak ograniczyć liczbę wierszy, które może zawierać każda strona:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Edytuj sekcję

Po dodaniu nowej sekcji do dokumentu nie będzie żadnej treści ani akapitu, które można edytować. Aspose.Words pozwala zagwarantować, że sekcja zawiera treść z co najmniej jednym akapitem przy użyciu metody [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) – automatycznie doda do dokumentu węzeł Treść (lub HeaderFooter), a następnie doda do niego Akapit.

Poniższy przykład kodu pokazuje, jak przygotować nowy węzeł sekcji przy użyciu **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Dołącz lub dołącz zawartość

Jeśli chcesz narysować jakiś kształt lub dodać tekst lub obraz na początku/końcu sekcji, możesz użyć metod [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) i [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) klasy [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

Poniższy przykład kodu pokazuje, jak dołączyć treść istniejącej sekcji:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Sklonuj sekcję

Aspose.Words umożliwia powielenie sekcji poprzez utworzenie jej pełnej kopii przy użyciu metody [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

Poniższy przykład kodu pokazuje, jak sklonować pierwszą sekcję w dokumencie:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Kopiuj sekcje między dokumentami

W niektórych przypadkach możesz mieć duże dokumenty z wieloma sekcjami i chcesz skopiować zawartość sekcji z jednego dokumentu do drugiego.

Aspose.Words umożliwia kopiowanie sekcji pomiędzy dokumentami przy użyciu metody [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

Poniższy przykład kodu pokazuje, jak kopiować sekcje między dokumentami:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Pracuj z nagłówkiem i stopką sekcji

Podstawowe zasady wyświetlania nagłówka lub stopki dla każdej sekcji są dość proste:

1. Jeżeli sekcja nie posiada własnych nagłówków/stopek określonego typu, to jest ona pobierana z poprzedniej sekcji.
2. O rodzaju nagłówka/stopki wyświetlanej na stronie decydują ustawienia sekcji "Inna pierwsza strona" oraz "Różne strony parzyste i nieparzyste" – jeżeli są one wyłączone, tytuły sekcji są ignorowane.

Poniższy przykład kodu pokazuje, jak utworzyć 2 sekcje z różnymi nagłówkami:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Jeśli chcesz usunąć tekst nagłówków i stopek bez usuwania obiektów [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) z dokumentu, możesz skorzystać z metody [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). Ponadto możesz użyć metody [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default), aby usunąć wszystkie kształty z nagłówków i stopek w dokumencie.

Poniższy przykład kodu pokazuje, jak wyczyścić zawartość wszystkich nagłówków i stopek w sekcji:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Poniższy przykład kodu usuwającego wszystkie kształty ze wszystkich nagłówków i stopek w sekcji:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Dostosuj właściwości strony w sekcji

Przed wydrukowaniem strony lub dokumentu możesz chcieć dostosować i zmodyfikować rozmiar i układ pojedynczej strony lub całego dokumentu. Dzięki ustawieniom strony możesz zmieniać ustawienia stron dokumentu, takie jak marginesy, orientacja i rozmiar, w celu drukowania różnych pierwszych stron lub stron nieparzystych.

Aspose.Words umożliwia dostosowywanie właściwości strony i sekcji przy użyciu klasy [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

Poniższy przykład kodu pokazuje, jak ustawić takie właściwości, jak rozmiar strony i orientacja dla bieżącej sekcji:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Poniższy przykład kodu pokazuje, jak modyfikować właściwości strony we wszystkich sekcjach:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Zobacz też

- [Poziomy logiczne węzłów w dokumencie](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Wstaw i dołącz dokumenty](/words/pl/python-net/insert-and-append-documents/)
