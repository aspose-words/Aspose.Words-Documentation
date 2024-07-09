---
title: Stosowanie `DocumentBuilder` modyfikacja dokumentu
second_title: Aspose.Words zamiast Java
articleTitle: Stosowanie `DocumentBuilder` modyfikacja dokumentu
linktitle: Stosowanie `DocumentBuilder` modyfikacja dokumentu
type: docs
description: "Użyj builder dokumentów do zmiany dokumentu łatwo w Java."
weight: 20
url: /pl/java/using-documentbuilder-to-modify-a-document/
---

## Określanie formatowania

### Formatowanie czcionki

Obecne formatowanie czcionki jest reprezentowane przez `Font` obiekt zwrócony przez `DocumentBuilder.Font` nieruchomości. W `Font` klasa zawiera szeroką gamę właściwości czcionki możliwe w Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Poniższy przykład kodu pokazuje jak ustawić formatowanie czcionki.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatowanie komórek

Formatowanie komórek jest używane podczas budowy stołu. Jest on reprezentowany przez `CellFormat` obiekt zwrócony przez `DocumentBuilder.CellFormat` nieruchomości. CellFormat zamyka różne właściwości komórek stołowych, takie jak szerokość lub pionowe ustawienie.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Poniższy przykład kodu pokazuje jak stworzyć tabelę zawierającą pojedynczą sformatowaną komórkę.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatowanie wiersza

Formatowanie bieżącego wiersza jest określone przez a `RowFormat` obiekt, który jest zwracany przez `DocumentBuilder.RowFormat` nieruchomości. Obiekt zawiera informacje o formatowaniu wszystkich wierszy tabeli.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Byćlow code Przykład pokazuje jak stworzyć tabelę zawierającą pojedynczą komórkę i zastosować formatowanie wierszy.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatowanie listy

Aspose.Words umożliwia łatwe tworzenie list poprzez zastosowanie formatowania listy. DocumentBuilder zapewnia `DocumentBuilder.ListFormat` właściwość, która zwraca `ListFormat` obiekt. Obiekt ten posiada kilka metod, aby rozpocząć i zakończyć listę i zwiększyć / zmniejszyć tiret.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Istnieją dwa ogólne rodzaje list w Microsoft Word: bulleted and numerred.

- Aby rozpocząć listę, zadzwoń [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Aby rozpocząć listę numerowaną, zadzwoń [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Kula lub numer i formatowanie są dodawane do bieżącego akapitu i wszystkie kolejne paragrafy utworzone przy użyciu **DocumentBuilder** do [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) jest wywoływany, aby zatrzymać skompilowane formatowanie listy.

W dokumentach Worda listy mogą składać się z maksymalnie dziewięciu poziomów. Lista formatowania dla każdego poziomu określa, jaki pocisk lub numer jest używany, lewe tiret, przestrzeń między pociskiem i tekstem itp.

- Aby zwiększyć poziom listy obecnego ustępu o jeden poziom, wywołanie [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Aby zmniejszyć poziom listy obecnego ustępu o jeden poziom, wywołanie [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu.

{{% alert color="primary" %}}

Można również użyć [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) właściwość do uzyskania lub ustalenia poziomu listy dla akapitu. Poziomy listy są ponumerowane od 0 do 8.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak zbudować listę wielopoziomową.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Ustawienia stron i formatowanie sekcji

Ustawienia stron i właściwości sekcji są zamknięte w `PageSetup` obiekt, który jest zwracany przez `DocumentBuilder.PageSetup` nieruchomości. Obiekt zawiera wszystkie atrybuty konfiguracji strony sekcji (lewy margines, dolny margines, rozmiar papieru i tak dalej) jako właściwości.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Poniższy przykład kodu pokazuje jak ustawić takie właściwości jak rozmiar strony i orientacja dla bieżącej sekcji.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Zastosowanie stylu

Niektóre formatowanie obiektów takich jak Czcionka lub ParagraphFormat style wsparcia. Pojedynczy built- in lub user- defined style jest reprezentowany przez `Style` obiekt, który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl bazowy, czcionka i formatowanie paragrafu stylu i tak dalej.

Ponadto **Style** obiekt zapewnia [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) właściwość, która zwraca identyfikator typu niezależnego od lokalizacji reprezentowany przez **Style.StyleIdentifier** wartość wyliczenia. Chodzi o to, że nazwy built- w stylach w Microsoft Word są zlokalizowane dla różnych języków. Używając identyfikatora stylu, można znaleźć odpowiedni styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają Microsoft Word built- in styles such as Normal, Nagłówek 1, Nagłówek 2 itp. Wszystkie style zdefiniowane przez użytkownika są przypisane do **StyleIdentifier. Wartość użytkownika**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Poniższy przykład kodu pokazuje jak stosować styl paragrafu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Granice i cienie

Granice są reprezentowane przez BorderCollection. Jest to zbiór obiektów granicznych, które są dostępne według indeksu lub typu granicy. Typ granicy jest reprezentowany przez `BorderType` wyliczenie. Niektóre wartości wyliczenia mają zastosowanie do kilku lub tylko jednego elementu dokumentu. Na przykład: `BorderType.Bottom` ma zastosowanie do celi paragrafu lub tabeli, podczas gdy `BorderType.DiagonalDown` określa przekątną granicy tylko w komórce tabeli.

Zarówno kolekcja granic jak i każda oddzielna granica mają podobne atrybuty jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny cień. Są one reprezentowane przez właściwości tej samej nazwy. Można osiągnąć różne typy granic łącząc wartości właściwości. Ponadto obie **BorderCollection** oraz **Border** obiekty pozwalają zresetować te wartości do wartości domyślnych przez wywołanie [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Metoda. Zauważ, że kiedy właściwości graniczne są resetowane do wartości domyślnych, granica jest niewidoczna.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
W [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klasa zawiera atrybuty cieniowania elementów dokumentu. Można ustawić pożądaną teksturę cieniowania i kolory, które są stosowane do tła i pierwszoplanowej części.

Tektura cieniowania jest ustawiona z [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) wartość wyliczenia, która pozwala na zastosowanie różnych wzorów do **Shading** obiekt. Na przykład, aby ustawić kolor tła dla elementu dokumentu, należy użyć [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) wartość i ustawić kolor cieniowania pierwszoplanowego odpowiednio.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
Poniższy przykład pokazuje, jak stosować granice i zacienić do akapitu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words zapewnia dwie właściwości `ParagraphFormat.SnapToGrid` oraz `Font.SnapToGrid` aby uzyskać i ustawić paragraf nieruchomości snap do siatki

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Przesunięcie kursora

### Wykrywanie bieżącej pozycji kursora

Możesz uzyskać, gdzie kursor budowniczego jest obecnie umieszczony w dowolnym momencie. W [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) właściwość zwraca węzeł, który jest aktualnie wybrany w tym budowniczym. Węzeł jest bezpośrednim dzieckiem paragrafu. Wszelkie operacje wstawiania wykonywane przy użyciu `DocumentBuilder` wstawić przed `DocumentBuilder.CurrentNode`. Gdy bieżący akapit jest pusty lub kursor jest umieszczony tuż przed końcem akapitu, `DocumentBuilder.CurrentNode` zwraca null.

Ponadto, można użyć [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) właściwość, która otrzymuje paragraf, który jest aktualnie wybrany w tym **DocumentBuilder**. Byćlow code przykład pokazuje jak uzyskać dostęp do bieżącego węzła w budowniczym dokumentów.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Przenoszenie do dowolnego węzła (ustępy i ich dzieci)

Jeśli masz węzeł obiektu dokumentu, który jest akapitem lub bezpośrednim dzieckiem danego akapitu, możesz skierować kursor budowniczego do tego węzła. Użyj [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metody wykonywania tego.
Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do określonego węzła.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Przejście do dokumentu Start / End

Jeśli chcesz przejść do początku dokumentu, zadzwoń [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Jeśli chcesz przejść do końca dokumentu, zadzwoń [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Przejście do sekcji

Jeśli pracujesz z dokumentem zawierającym wiele sekcji, możesz przejść do żądanej sekcji używając [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Metoda ta przenosi kursor na początek określonej sekcji i akceptuje indeks wymaganej sekcji. Gdy indeks sekcji jest większy lub równy 0, określa indeks od początku dokumentu, przy czym 0 jest pierwszą sekcją. Gdy indeks sekcji jest mniejszy niż 0, określa indeks z końca dokumentu, z którego -1 jest ostatnią sekcją. Byćlow code Przykład pokazuje jak przenieść pozycję kursora do określonej sekcji. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Przechodzenie na Nagłówek / Footer

Kiedy trzeba umieścić niektóre dane w nagłówku lub stopka, należy przenieść się tam najpierw za pomocą [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Metoda akceptuje wartość liczbową HeaderFooterType, która określa typ nagłówka lub stopki do miejsca, gdzie kursor powinien być przesunięty.

Jeśli chcesz utworzyć nagłówki i stopy, które są różne dla pierwszej strony, musisz ustawić [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) nieruchomości **true**. Jeśli chcesz tworzyć nagłówki i stopy, które są różne dla stron parzystych i nieparzystych, musisz ustawić [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) do **true**.

Jeśli chcesz wrócić do głównej historii, użyj[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) aby przenieść się z nagłówka lub stopki. Poniżej przykład tworzy nagłówki i stopy w dokumencie za pomocą DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Przejście do akapitu

Stosowanie[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) przesunięcie kursora do żądanego punktu w bieżącej sekcji. Należy podać dwa parametry tej metody: paragraphIndex (indeks akapitu, aby przejść do) i wskaźnik charakterystyki (indeks znaku wewnątrz akapitu).

Nawigacja jest wykonywana wewnątrz bieżącej historii bieżącej sekcji. Oznacza to, że jeśli przesuniesz kursor do głównego nagłówka pierwszej sekcji, wtedy paragraf Index określa indeks akapitu wewnątrz tego nagłówka tej sekcji.

Gdy indeks paragrafowy jest większy lub równy 0, określa indeks od początku sekcji, przy czym 0 jest akapitem pierwszym. Gdy indeks paragrafów jest mniejszy niż 0, określa indeks z końca sekcji z -1 jako ostatni akapit. Wskaźnik znaków może być obecnie określony jako 0, aby przejść do początku akapitu lub -1, aby przejść do końca akapitu. Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do określonego punktu. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Przenoszenie do komórki tabeli

Stosowanie [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) jeśli musisz przenieść kursor do komórki tabeli w bieżącej sekcji. Metoda ta akceptuje cztery parametry:

- tabeIndex - indeks tabeli do przeniesienia.
- rowIndex - indeks wiersza w tabeli.
- ColumnIndex - indeks kolumny w tabeli.
- characterIndex - indeks znaku wewnątrz komórki.

Nawigacja jest wykonywana wewnątrz bieżącej historii bieżącej sekcji.

Dla parametrów indeksu, gdy indeks jest większy lub równy 0, określa indeks od początku, przy czym 0 jest pierwszym elementem. Kiedy indeks jest mniejszy niż 0, określa indeks od końca, przy czym -1 jest ostatnim elementem.

Należy również zauważyć, że wskaźnik charakterystyki może obecnie określać tylko 0, aby przejść do początku komórki lub -1, aby przejść do końca komórki. Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do określonej komórki tabeli. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Przejście do zakładki

Zakładki są często używane do zaznaczania poszczególnych miejsc w dokumencie, w których należy umieścić nowe elementy. Aby przejść do zakładki, użyj [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Metoda ta ma dwa przeciążenia. Najprostszy akceptuje tylko nazwę zakładki, gdzie kursor ma być przesunięty. Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do zakładki.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

To przeciążenie przesuwa kursor do pozycji tuż po rozpoczęciu zakładki o określonej nazwie. Kolejne przeciążenie [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) przesuwa kursor do zakładki z większą precyzją. Akceptuje dwa dodatkowe parametry boolean:

- isStart określa, czy przenieść kursor do początku czy do końca zakładki.
- isAfter określa, czy przesunięcie kursora następuje po rozpoczęciu lub zakończeniu pozycji zakładki, czy też przesunięcie kursora przed rozpoczęciem lub zakończeniem pozycji zakładki.

Poniższy przykład kodu pokazuje jak przenieść pozycję kursora do zaraz po zakończeniu zakładki.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Wstawianie nowego tekstu w ten sposób nie zastępuje istniejącego tekstu zakładki. Należy zauważyć, że niektóre zakładki w dokumencie są przypisane do tworzenia pól. Przechodząc do takiej zakładki i wstawiając tekst wstawia tekst do kodu pola formularza. Chociaż nie unieważni to pola formularza, dodany tekst nie będzie widoczny, ponieważ staje się częścią kodu pola.

### Przejście do `Merge` Pole

Czasami może być konieczne wykonanie "instrukcji" mail merge stosowanie `DocumentBuilder` lub wypełnić pole połączenia w specjalny sposób wewnątrz mail merge Kierownik zdarzeń. To wtedy [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Może się przydać. Metoda akceptuje nazwę pola połączenia. Przesuwa kursor do pozycji tuż za określonym polem połączenia i usuwa pole połączenia. Poniższy przykład kodu pokazuje jak przenieść kursor do pozycji tuż za określonym polem połączenia.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Jak przekonwertować pomiędzy jednostkami pomiarowymi

Większość właściwości obiektu dostarczonych w Aspose.Words API które reprezentuje niektóre pomiary (szerokość / wysokość, marginesy i różne odległości) akceptują wartości w punktach (1 cal równa się 72 punkty). Czasami to nie jest wygodne, więc jest `ConvertUtil` klasa zapewniająca funkcje pomocnicze do konwersji między różnymi jednostkami pomiarowymi. Umożliwia konwersję cali do punktów, punktów do cali, pikseli do punktów i punktów do pikseli. Gdy piksele są konwertowane na punkty i odwrotnie, mogą być wykonywane w rozdzielczości 96 dpi (kropki na cal) lub w określonej rozdzielczości dpi.

**ConvertUtil** jest bardzo przydatne przy ustawianiu różnych właściwości strony, ponieważ na przykład cale są bardziej typowe jednostki pomiarowe niż punkty. Poniższy przykład pokazuje jak skonfigurować właściwości strony w calach.

Poniższy przykład kodu pokazuje jak określić właściwości strony w calach.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
