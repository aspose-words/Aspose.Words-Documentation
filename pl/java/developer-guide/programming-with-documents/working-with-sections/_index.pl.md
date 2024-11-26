---
title: Praca z sekcjami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Współpraca z sekcjami
linktitle: Współpraca z sekcjami
description: "Zrozumienie pojęć sekcji dokumentów i praktyk manipulacji przy użyciu Java. Wstaw sekcję do dokumentu Java. Usuń sekcję Java. Kopiuj sekcje pomiędzy dokumentami."
type: docs
weight: 120
url: /pl/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Czasami chcesz dokument, który nie ma tego samego formatowania na wszystkich stronach. Na przykład, może być konieczne zmodyfikowanie formatów numerów stron, mieć inny rozmiar strony i orientację, lub mieć pierwszą stronę dokumentu jako okładkę strony bez żadnej numeracji. Można to osiągnąć dzięki sekcjom.

Sekcje to węzły poziomu, które kontrolują nagłówki i stopy, orientację, kolumny, marginesy, formatowanie numeru strony i inne.

Aspose.Words pozwala na zarządzanie sekcjami, dzielenie dokumentu na sekcje i wprowadzanie formatowania zmian, które dotyczą tylko określonej sekcji. Aspose.Words przechowuje informacje o formatowaniu sekcji, takie jak nagłówki i stopy, konfiguracja strony i ustawienia kolumn w przerwie sekcji.

Ten artykuł wyjaśnia jak pracować z sekcjami i przerwami sekcji.

## Co sekcja i sekcja przerwa jest

Sekcje dokumentów są reprezentowane przez [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) oraz [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) zajęcia. Obiekty sekcji są natychmiastowe dzieci [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) węzeł i można uzyskać dostęp przez [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) nieruchomości. Można zarządzać tymi węzłami za pomocą niektórych metod, takich jak [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), I innych.

Przerwa w sekcji jest opcją, która dzieli strony dokumentów na sekcje z możliwością dostosowania układów.

## Rodzaje przerw sekcyjnych

Aspose.Words pozwala dzielić i formatować dokumenty przy użyciu różnych przerw sekcji [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) wyliczenie:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Można również użyć [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) wyliczenie wyboru typu przerwy, który dotyczy tylko pierwszej sekcji, takiej jak NewColumn, NewPage, EvenPage i OddPage.

## Zarządzanie sekcją

Ponieważ sekcja jest normalnym węzłem kompozytowym, cała obsługa węzła API mogą być wykorzystywane do manipulowania sekcjami: do dodawania, usuwania i innych operacji na sekcjach. Możesz przeczytać więcej o węzłach w artykule [Aspose.Words Document Object Model (DOM)](/words/pl/java/aspose-words-document-object-model/).

Z drugiej strony, można również użyć `DocumentBuilder` API do pracy z sekcjami. W tym artykule skupimy się na tym szczególnym sposobie pracy z sekcjami.

## Wstaw lub usuń przerwę sekcji

Aspose.Words pozwala na wprowadzenie sekcji przerwy w tekście za pomocą [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) Metoda.

Poniższy przykład kodu pokazuje, jak wstawić włamanie sekcji do dokumentu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Użyj [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metoda usuwania przerwy w sekcji. Jeśli nie trzeba usunąć określonej przerwy w sekcji i zamiast usunąć zawartość tej sekcji, można użyć [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) Metoda.

Poniższy przykład kodu pokazuje jak usunąć przerwy sekcje:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Zauważ, że przerwa w sekcji zawiera informacje o sekcji, która idzie przed nią, a nie o sekcji, która idzie za nią. Więc jeśli usuniesz przerwę sekcji, tekst przed usunięciem przerwy otrzyma właściwości przerwy sekcji po niej. Może to spowodować, że cały dokument stanie się krajobrazem, lub nagłówki i stopy zmienić lub całkowicie zniknąć.

{{% /alert %}}

## Przesuń sekcję

Jeśli chcesz przenieść sekcję z jednej pozycji do drugiej w dokumencie, musisz uzyskać indeks tej sekcji. Aspose.Words pozwala uzyskać pozycję sekcji z [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Można użyć [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) właściwość, aby uzyskać wszystkie sekcje w dokumencie. Ale jeśli chcesz dostać tylko pierwszą sekcję, można użyć [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) nieruchomości.

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pierwszej sekcji i iterate przez dzieci węzła kompozytowego:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Określić układ sekcji

Czasami chcesz, aby twój dokument wyglądał lepiej, tworząc kreatywne układy dla różnych sekcji dokumentu. Jeśli chcesz określić typ bieżącej siatki sekcji, możesz wybrać tryb układu sekcji za pomocą [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) wyliczenie:

- Domyślnie
- Sieć
- LineGrid
- SnapToChars

Poniższy przykład kodu pokazuje jak ograniczyć liczbę wierszy, które każda strona może posiadać:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Edytuj sekcję

Po dodaniu nowej sekcji do dokumentu, nie będzie ciała ani akapitu, który można edytować. Aspose.Words pozwala zagwarantować, że sekcja zawiera ciało z co najmniej jednym akapitem przy użyciu [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) metoda - automatycznie doda do dokumentu węzeł Body (lub HeaderFooter), a następnie doda do niego paragraf.

Poniższy przykład kodu pokazuje jak przygotować nowy węzeł sekcji używając **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Zawartość dodatku lub prependium

Jeśli chcesz narysować jakiś kształt lub dodać tekst lub obraz na początku / końcu sekcji, można użyć [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) oraz [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) metody [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Klasa.

Poniższy przykład kodu pokazuje, jak uzupełnić zawartość istniejącej sekcji:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Klon a sekcja

Aspose.Words pozwala na powielenie sekcji poprzez utworzenie pełnej kopii za pomocą [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) Metoda.

Poniższy przykład kodu pokazuje jak sklonować pierwszą sekcję dokumentu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Kopiuj sekcje pomiędzy dokumentami

W niektórych przypadkach możesz mieć duże dokumenty z wieloma sekcjami i chcesz skopiować zawartość sekcji z jednego dokumentu do drugiego.

Aspose.Words pozwala na kopiowanie sekcji pomiędzy dokumentami za pomocą [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) Metoda.

Poniższy przykład kodu pokazuje jak kopiować sekcje pomiędzy dokumentami:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Praca z działem Nagłówek i Footer

Podstawowe zasady wyświetlania nagłówka lub stopki dla każdej sekcji są dość proste:

1. Jeżeli sekcja nie posiada własnych nagłówków / stóp określonego typu, to jest ona pobierana z poprzedniej sekcji.
2. Typ nagłówka / stopki wyświetlany na stronie jest sterowany ustawieniami sekcji "Inna Pierwsza Strona" i "Różne Odd & Even Pages" - jeśli są wyłączone, to własne tytuły sekcji są ignorowane.

Poniższy przykład kodu pokazuje jak stworzyć 2 sekcje z różnymi nagłówkami:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Jeśli chcesz usunąć tekst nagłówków i stóp bez usuwania [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) obiektów w dokumencie, można użyć [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) Metoda. Ponadto, można użyć [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) metody usuwania wszystkich kształtów z nagłówków i stóp w dokumencie.

Poniższy przykład kodu pokazuje, jak usunąć zawartość wszystkich nagłówków i stóp w sekcji:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Poniższy przykład kodu, jak usunąć wszystkie kształty ze wszystkich nagłówków w sekcji:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Dostosuj właściwości strony w sekcji

Przed wydrukowaniem strony lub dokumentu można dostosować i zmodyfikować rozmiar i układ jednej strony lub całego dokumentu. Dzięki ustawieniu strony można zmienić ustawienia stron dokumentów, takich jak marginesy, orientacja i rozmiar do drukowania różnych pierwszych stron lub stron nieparzystych.

Aspose.Words pozwala dostosować właściwości strony i sekcji za pomocą [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Klasa.

Poniższy przykład kodu pokazuje, jak ustawić takie właściwości jak rozmiar strony i orientacja dla bieżącej sekcji:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Poniższy przykład kodu pokazuje jak zmodyfikować właściwości strony we wszystkich sekcjach:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Zobacz również

- [Logiczne programy we Włoszech w celu uzyskania pomocy](/words/pl/java/logical-levels-of-nodes-in-a-document/)
- [Wstaw i złóż ofertę](/words/pl/java/insert-and-append-documents/)
