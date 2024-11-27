---
title: Używanie DocumentBuilder do łatwej modyfikacji dokumentu
second_title: Aspose.Words dla C++
articleTitle: Używanie DocumentBuilder do łatwej modyfikacji dokumentu
linktitle: Używanie DocumentBuilder do łatwej modyfikacji dokumentu
type: docs
description: "Użyj kreatora dokumentów, aby łatwo zmodyfikować dokument w C++."
weight: 190
url: /pl/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Określanie Formatowania

### Formatowanie Czcionek

Bieżące formatowanie czcionki jest reprezentowane przez obiekt `Font` zwracany przez właściwość `DocumentBuilder.Font`. Klasa `Font` zawiera szeroką gamę właściwości czcionki możliwych w Microsoft Word. Poniższy przykład pokazuje, jak ustawić formatowanie czcionki.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formatowanie Akapitu

Bieżące formatowanie akapitu jest reprezentowane przez obiekt `ParagraphFormat`, który jest zwracany przez właściwość `DocumentBuilder.ParagraphFormat`. Ten obiekt zawiera różne właściwości formatowania akapitów dostępne w Microsoft Word. Możesz łatwo zresetować formatowanie akapitu do domyślnego do normalnego stylu, wyrównane do lewej, bez wcięć, bez odstępów, bez obramowań i bez cieniowania, wywołując `ParagraphFormat.ClearFormatting`. Poniższy przykład pokazuje, jak ustawić formatowanie akapitu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Praca z typografią azjatycką

#### Automatycznie Dostosuj spację między tekstem azjatyckim i łacińskim, cyframi

Jeśli projektujesz szablon z tekstem Wschodnioazjatyckim i łacińskim i chcesz poprawić wygląd szablonu formularza, kontrolując spacje między obydwoma typami tekstu, możesz skonfigurować szablon formularza tak, aby automatycznie dostosowywał spacje między tymi dwoma typami tekstu. Aby to osiągnąć, możesz użyć właściwości AddSpaceBetweenFarEastAndAlpha i AddSpaceBetweenFarEastAndDigit klasy ParagraphFormat.

Poniższy przykład kodu pokazuje, jak używać właściwości `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` i `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Zmień odstępy między akapitami azjatyckimi i wcięcia

Poniższy przykład kodu pokazuje, jak zmienić odstępy między akapitami azjatyckimi i wcięcia.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Ustaw Opcje Podziału Linii

Typografia azjatycka zakładka okna dialogowego Właściwości `Paragraph` w MS Word ma grupę podziałów linii. Opcje tej grupy można ustawić za pomocą FarEastLineBreakControl, WordWrap, HangingPunctuation właściwości klasy ParagraphFormat. Below code przykład pokazuje, jak korzystać z tych właściwości.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formatowanie Komórek

Formatowanie komórek jest używane podczas budowania tabeli. Jest reprezentowany przez obiekt `CellFormat` zwrócony przez właściwość `DocumentBuilder.CellFormat`. CellFormat zawiera różne właściwości komórek tabeli, takie jak szerokość lub wyrównanie w pionie. Poniższy przykład pokazuje, jak utworzyć tabelę zawierającą pojedynczą sformatowaną komórkę.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formatowanie Wierszy

Bieżące formatowanie wiersza jest określane przez obiekt `RowFormat`, który jest zwracany przez właściwość `DocumentBuilder.RowFormat`. Obiekt zawiera informacje o formatowaniu wszystkich wierszy tabeli. Poniższy przykład pokazuje, jak utworzyć tabelę zawierającą pojedynczą komórkę i zastosować formatowanie wiersza.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formatowanie Listy

Aspose.Words umożliwia łatwe tworzenie list poprzez zastosowanie formatowania listy. DocumentBuilder zapewnia Właściwość `DocumentBuilder.ListFormat`, która zwraca obiekt `ListFormat`. Ten obiekt ma kilka metod uruchamiania i kończenia listy oraz zwiększania/zmniejszania wcięcia. Istnieją dwa ogólne typy list w Microsoft Word: punktowane i numerowane.

- Aby rozpocząć listę punktowaną, zadzwoń do `ListFormat.ApplyBulletDefault`.
- Aby rozpocząć listę numerowaną, zadzwoń do `ListFormat.ApplyNumberDefault`.

Punktor lub numer i formatowanie są dodawane do bieżącego akapitu i wszystkich dalszych akapitów utworzonych przy użyciu **DocumentBuilder**, dopóki `ListFormat.RemoveNumbers` nie zostanie wywołany, aby zatrzymać formatowanie listy punktowanej. W dokumentach Word listy mogą składać się z maksymalnie dziewięciu poziomów. Formatowanie listy dla każdego poziomu określa, jaki punktor lub numer jest używany, Wcięcie w lewo, spacja między punktorem a tekstem itp.

- Aby zwiększyć poziom listy bieżącego akapitu o jeden poziom, zadzwoń `ListFormat.ListIndent`.
- Aby zmniejszyć poziom listy bieżącego akapitu o jeden poziom, zadzwoń `ListFormat.ListOutdent`.

Metody zmieniają poziom listy i stosują właściwości formatowania nowego poziomu.

{{% alert color="primary" %}}

Możesz także użyć właściwości `ListFormat.ListLevelNumber`, aby uzyskać lub ustawić poziom listy dla akapitu. Poziomy listy są ponumerowane od 0 do 8.

{{% /alert %}}

Poniższy przykład pokazuje, jak zbudować listę wielopoziomową.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Konfiguracja strony i formatowanie sekcji

Ustawienia strony i właściwości sekcji są hermetyzowane w obiekcie `PageSetup` zwracanym przez właściwość `DocumentBuilder.PageSetup`. Obiekt zawiera wszystkie atrybuty konfiguracji strony sekcji (lewy margines, dolny margines, rozmiar papieru itd.) jako właściwości. Poniższy przykład pokazuje, jak ustawić takie właściwości, jak rozmiar strony i orientacja dla bieżącej sekcji.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Stosowanie stylu

Niektóre obiekty formatujące, takie jak czcionka lub ParagraphFormat, obsługują style. Pojedynczy styl wbudowany lub zdefiniowany przez użytkownika jest reprezentowany przez obiekt `Style`, który zawiera odpowiednie właściwości stylu, takie jak nazwa, styl podstawowy, formatowanie czcionki i akapitu stylu i tak dalej.

Ponadto obiekt **Style** udostępnia właściwość `Style.StyleIdentifier`, która zwraca niezależny od ustawień regionalnych identyfikator stylu reprezentowany przez wartość wyliczenia **Style.StyleIdentifier**. Chodzi o to, że nazwy wbudowanych stylów w Microsoft Word są zlokalizowane dla różnych języków. Za pomocą identyfikatora stylu można znaleźć właściwy styl niezależnie od języka dokumentu. Wartości wyliczenia odpowiadają wbudowanym stylom Microsoft Word, takim jak Normal, Heading 1, Heading 2 itd. Wszystkie style zdefiniowane przez Użytkownika mają przypisane **StyleIdentifier.User value**. Poniższy przykład pokazuje, jak zastosować styl akapitu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Granice i cieniowanie

Granice są reprezentowane przez BorderCollection. Jest to zbiór obiektów obramowania, do których można uzyskać dostęp za pomocą indeksu lub typu obramowania. Typ obramowania jest reprezentowany przez wyliczenie `BorderType`. Niektóre wartości wyliczenia mają zastosowanie do kilku lub tylko jednego elementu dokumentu. Na przykład `BorderType.Bottom` ma zastosowanie do akapitu lub komórki tabeli, podczas gdy `BorderType.DiagonalDown` określa przekątną obramowania tylko w komórce tabeli.

Zarówno kolekcja obramowań, jak i każda oddzielna ramka mają podobne atrybuty, takie jak kolor, styl linii, szerokość linii, odległość od tekstu i opcjonalny Cień. Są one reprezentowane przez właściwości o tej samej nazwie. Możesz osiągnąć różne typy obramowań, łącząc wartości właściwości. Ponadto zarówno obiekty **BorderCollection**, jak i **Border** umożliwiają zresetowanie tych wartości do wartości domyślnych poprzez wywołanie metody `Border.ClearFormatting`. Należy pamiętać, że gdy właściwości obramowania są resetowane do wartości domyślnych, obramowanie jest niewidoczne. Klasa `Shading` zawiera atrybuty cieniowania elementów dokumentu. Możesz ustawić żądaną teksturę cieniowania i kolory, które są stosowane do tła i pierwszego planu elementu.

Tekstura cieniowania jest ustawiana za pomocą wartości wyliczenia `TextureIndex`, która umożliwia zastosowanie różnych wzorów do obiektu **Shading**. Na przykład, aby ustawić kolor tła dla elementu dokumentu, użyj wartości `TextureIndex.TextureSolid` i odpowiednio ustaw kolor CIENIOWANIA pierwszego planu. Poniższy przykład pokazuje, jak zastosować obramowanie i cieniowanie do akapitu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Przyciągaj do siatki

Aspose.Words udostępnia dwie właściwości `ParagraphFormat.SnapToGrid` i `Font.SnapToGrid`, Aby uzyskać i ustawić przyciąganie właściwości akapitu na siatkę.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Przesuwanie kursora

### Wykrywanie aktualnej pozycji kursora

W dowolnym momencie możesz dowiedzieć się, gdzie aktualnie znajduje się kursor konstruktora. Właściwość `DocumentBuilder.CurrentNode` zwraca węzeł, który jest aktualnie wybrany w tym konstruktorze. Węzeł jest bezpośrednim dzieckiem akapitu. Wszelkie operacje wstawiania wykonywane przy użyciu `DocumentBuilder` zostaną wstawione przed `DocumentBuilder.CurrentNode`. Gdy bieżący akapit jest pusty lub kursor znajduje się tuż przed końcem akapitu, `DocumentBuilder.CurrentNode` zwraca wartość null.

Możesz także użyć właściwości `DocumentBuilder.CurrentParagraph`, która pobiera akapit, który jest aktualnie wybrany w tym **DocumentBuilder**. Poniższy przykład pokazuje, jak uzyskać dostęp do bieżącego węzła w kreatorze dokumentów. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Przejście do dowolnego węzła (akapity i ich dzieci)

Jeśli masz węzeł obiektu dokumentu, który jest akapitem lub bezpośrednim dzieckiem akapitu, możesz skierować kursor konstruktora na ten węzeł. Użyj metody `DocumentBuilder.MoveTo`, aby to wykonać. Poniższy przykład pokazuje, jak przenieść pozycję kursora do określonego węzła. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Przejście do dokumentu Początek / Koniec

Jeśli chcesz przejść na początek dokumentu, zadzwoń do `DocumentBuilder.MoveToDocumentStart`. Jeśli chcesz przejść do końca dokumentu, zadzwoń do `DocumentBuilder.MoveToDocumentEnd`. Poniższy przykład pokazuje, jak przesunąć pozycję kursora na początek lub koniec dokumentu. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Przejście do sekcji

Jeśli pracujesz z dokumentem zawierającym wiele sekcji, możesz przejść do żądanej sekcji za pomocą `DocumentBuilder.MoveToSection`. Ta metoda przesuwa kursor na początek określonej sekcji i akceptuje indeks wymaganej sekcji. Gdy indeks sekcji jest większy lub równy 0, określa Indeks od początku dokumentu, przy czym 0 jest pierwszą sekcją. Gdy indeks sekcji jest mniejszy niż 0, określa Indeks z końca dokumentu, przy czym -1 jest ostatnią sekcją. Poniższy przykład pokazuje, jak przesunąć pozycję kursora do określonej sekcji. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Przejście do nagłówka / stopki

Kiedy musisz umieścić niektóre dane w nagłówku lub stopce, powinieneś najpierw przenieść się tam za pomocą `DocumentBuilder.MoveToHeaderFooter`. Metoda akceptuje wartość wyliczenia HeaderFooterType, która identyfikuje typ nagłówka lub stopki, do którego należy przesunąć kursor. Jeśli chcesz utworzyć nagłówki i stopki, które są różne dla pierwszej strony, musisz ustawić właściwość `PageSetup.DifferentFirstPageHeaderFooter` Na **true**. Jeśli chcesz utworzyć nagłówki i stopki, które są różne dla stron parzystych i nieparzystych, musisz ustawić `PageSetup.OddAndEvenPagesHeaderFooter` na **true**.

Jeśli chcesz wrócić do głównej historii, użyj **DocumentBuilder.MoveToSection**, aby wyjść z nagłówka lub stopki. Poniższy przykład tworzy nagłówki i stopki w dokumencie przy użyciu DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Przejście do akapitu

Użyj `DocumentBuilder.MoveToParagraph`, aby przesunąć kursor do żądanego akapitu w bieżącej sekcji. Do tej metody należy przekazać dwa parametry: paragraphIndex (indeks akapitu, do którego należy przejść) i characterIndex (indeks znaku wewnątrz akapitu).

Nawigacja odbywa się wewnątrz bieżącej historii bieżącej sekcji. Oznacza to, że jeśli przesuniesz kursor do głównego nagłówka pierwszej sekcji, paragraphIndex określa indeks akapitu wewnątrz tego nagłówka tej sekcji.

Gdy paragraphIndex jest większa lub równa 0, określa Indeks od początku sekcji, przy czym 0 jest pierwszym akapitem. Gdy paragraphIndex jest mniejsze niż 0, określa Indeks z końca sekcji, przy czym -1 jest ostatnim akapitem.

Indeks znaków można obecnie określić tylko jako 0, aby przejść do początku akapitu lub -1, aby przejść do końca akapitu. Poniższy przykład pokazuje, jak przesunąć pozycję kursora do określonego akapitu. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Przejście do komórki tabeli

Użyj `DocumentBuilder.MoveToCell`, jeśli chcesz przesunąć kursor do komórki tabeli w bieżącej sekcji. Ta metoda akceptuje cztery parametry:

- tableIndex - indeks tabeli do przejścia.
- rowIndex - indeks wiersza w tabeli.
- columnIndex - indeks kolumny w tabeli.
- characterIndex - indeks znaku wewnątrz komórki.

Nawigacja odbywa się wewnątrz bieżącej historii bieżącej sekcji. Dla parametrów indeksu, gdy indeks jest większy lub równy 0, określa Indeks od początku, w którym 0 jest pierwszym elementem. Gdy indeks jest mniejszy niż 0, określa Indeks od końca, przy czym -1 jest ostatnim elementem.

Należy również pamiętać, że characterIndex Obecnie można określić tylko 0, aby przejść do początku komórki lub -1, aby przejść do końca komórki. Poniższy przykład pokazuje, jak przenieść pozycję kursora do określonej komórki tabeli. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Przejście do zakładki

Zakładki są często używane do oznaczania określonych miejsc w dokumencie, w których mają być wstawiane nowe elementy. Aby przejść do zakładki, użyj `DocumentBuilder.MoveToBookmark`. Ta metoda ma dwa przeciążenia. Najprostszy akceptuje tylko nazwę Zakładki, do której ma zostać przesunięty kursor. Poniższy przykład pokazuje, jak przenieść pozycję kursora do zakładki. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

To przeciążenie przesuwa kursor do pozycji tuż po rozpoczęciu zakładki o określonej nazwie. Kolejne przeciążenie `DocumentBuilder.MoveToBookmark` przesuwa kursor do zakładki z większą precyzją. Akceptuje dwa dodatkowe parametry logiczne:

- isStart określa, czy przesunąć kursor na początek, czy na koniec zakładki.
- isAfter określa, czy należy przesunąć kursor po pozycji początkowej lub końcowej zakładki, czy też przesunąć kursor przed pozycją początkową lub końcową zakładki.

Poniższy przykład pokazuje, jak przesunąć pozycję kursora tuż po zakończeniu zakładki.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Porównanie obu metod nie uwzględnia wielkości liter.

Wstawianie nowego tekstu w ten sposób nie zastępuje istniejącego tekstu zakładki. Pamiętaj, że niektóre zakładki w dokumencie są przypisane do pól formularza. Przejście do takiej zakładki i wstawienie tam tekstu wstawia tekst do kodu pola formularza. Chociaż nie spowoduje to unieważnienia pola formularza, wstawiony tekst nie będzie widoczny, ponieważ stanie się częścią kodu pola.

## Jak przeliczać jednostki miary

Większość właściwości obiektu podanych w Aspose.Words API, które reprezentują pewien pomiar (szerokość/wysokość, marginesy i różne odległości) akceptuje wartości w punktach (1 cal to 72 punkty). Czasami nie jest to wygodne, więc istnieje klasa `ConvertUtil`, która zapewnia funkcje pomocnicze do konwersji między różnymi jednostkami miary. Umożliwia konwersję cali na punkty, punktów na cale, pikseli na punkty i punktów na piksele. Gdy piksele są konwertowane na punkty i odwrotnie, można to wykonać w rozdzielczości 96 dpi (punktów na cal) lub w określonej rozdzielczości dpi.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
