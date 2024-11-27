---
title: Praca ze stylami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca ze stylami
linktitle: Praca ze stylami
description: "Ulepszone funkcje formatowania Microsoft Word, praca ze stylami i motywami przy użyciu C++."
type: docs
weight: 110
url: /pl/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Klasa [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) służy do zarządzania wbudowanymi i stosowania ustawień zdefiniowanych przez użytkownika do stylów.

## Jak wyodrębnić zawartość na podstawie stylów

Na prostym poziomie pobieranie zawartości na podstawie stylów z dokumentu Word może być przydatne do identyfikacji, listy i liczenia akapitów i przebiegów tekstu sformatowanego w określonym stylu. Na przykład może być konieczne zidentyfikowanie określonych rodzajów treści w dokumencie, takich jak przykłady, tytuły, odniesienia, słowa kluczowe, nazwy figur i studia przypadków.

Aby zrobić to o kilka kroków dalej, można to również wykorzystać do wykorzystania struktury dokumentu, zdefiniowanej przez używane style, do ponownego przeznaczenia dokumentu na inne dane wyjściowe, takie jak HTML. W rzeczywistości w ten sposób budowana jest dokumentacja Aspose, testując Aspose.Words. Narzędzie zbudowane przy użyciu Aspose.Words pobiera dokumenty źródłowe Word i dzieli je na tematy na określonych poziomach nagłówków. Plik XML jest tworzony przy użyciu Aspose.Words, który służy do zbudowania drzewa nawigacji widocznego po lewej stronie. A następnie Aspose.Words konwertuje każdy temat na HTML.

Rozwiązanie do pobierania tekstu sformatowanego z określonymi stylami w dokumencie Word jest zazwyczaj ekonomiczne i proste przy użyciu Aspose.Words.

### Rozwiązanie

Aby zilustrować, jak łatwo Aspose.Words obsługuje pobieranie treści na podstawie stylów, spójrzmy na przykład. W tym przykładzie pobierzemy tekst sformatowany za pomocą określonego stylu akapitu i stylu znaku z przykładowego dokumentu Word. Na wysokim poziomie będzie to obejmować:
- Otwieranie dokumentu Word przy użyciu klasy `Document`.
- Pobieranie kolekcji wszystkich akapitów i wszystkich przebiegów w dokumencie.
- Wybieranie tylko wymaganych akapitów i przebiegów. W szczególności pobierzemy tekst sformatowany za pomocą stylu akapitu "Heading 1 "i stylu znaku" intensywny nacisk " z tego przykładowego dokumentu Word.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


W tym przykładowym dokumencie tekst sformatowany za pomocą stylu akapitu "Heading 1 " to "Wstaw kartę", "Szybkie style" i "motyw", a tekst sformatowany za pomocą stylu znaków "intensywny nacisk" to kilka wystąpień niebieskiego, kursywą, pogrubiony tekst, taki jak "galerie" i "ogólny wygląd".

### Kodeks

Implementacja zapytania opartego na stylu jest dość prosta w modelu obiektowym dokumentu Aspose.Words, ponieważ po prostu używa narzędzi, które już są na miejscu. Dla tego rozwiązania zaimplementowano dwie metody klas:# **ParagraphsByStyleName** - ta metoda pobiera tablicę tych akapitów w dokumencie, które mają określoną nazwę stylu.# **RunsByStyleName** - ta metoda pobiera tablicę tych uruchomień w dokumencie, które mają określoną nazwę stylu. Obie te metody są bardzo podobne, jedynymi różnicami są typy węzłów i reprezentacja informacji o stylu w akapicie i węzłach uruchamiania. Oto implementacja ParagraphsByStyleName. Poniżej przykład Znajdź wszystkie akapity sformatowane w określonym stylu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Ta implementacja używa również metody `Document.GetChildNodes` klasy `Document`, która zwraca zbiór wszystkich węzłów o określonym typie, który w tym przypadku we wszystkich akapitach.

Zauważ, że drugi parametr metody **Document.GetChildNodes** jest ustawiony na true. Zmusza to metodę **Document.GetChildNodes** do rekurencyjnego wybierania spośród wszystkich węzłów podrzędnych, zamiast wybierania tylko bezpośrednich elementów podrzędnych.

{{% /alert %}}

Warto również zauważyć, że kolekcja akapitów nie tworzy natychmiastowego narzutu, ponieważ akapity są ładowane do tej kolekcji tylko wtedy, gdy uzyskujesz dostęp do elementów w nich zawartych. Następnie wszystko, co musisz zrobić, to przejść przez kolekcję, używając standardu dla każdego operatora i dodać akapity o określonym stylu do tablicy paragraphsWithStyle. Nazwę stylu `Paragraph` można znaleźć w stylu. Właściwość nazwy obiektu `Paragraph.ParagraphFormat`. Implementacja RunsByStyleName jest prawie taka sama, chociaż oczywiście używamy `NodeType.Run` do pobierania węzłów run. Właściwość `Font.Style` obiektu `Run` służy do uzyskiwania dostępu do informacji o stylu w węzłach **Run**. Przykład below code Znajdź wszystkie przebiegi sformatowane w określonym stylu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Po zaimplementowaniu obu zapytań wystarczy przekazać obiekt dokumentu i określić nazwy stylów treści, którą chcesz pobrać: poniżej przykład uruchom zapytania i wyświetl wyniki. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Efekt Końcowy

Gdy wszystko zostanie zrobione, uruchomienie próbki wyświetli następujące dane wyjściowe:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Jak widać, jest to bardzo prosty przykład, pokazujący liczbę i tekst zebranych akapitów i działa w przykładowym dokumencie Word.

## Jak wstawić i pracować z polem spis treści

Często będziesz pracować z Dokumentami zawierającymi spis treści (TOC). Za pomocą Aspose.Words możesz wstawić własny spis treści lub całkowicie przebudować istniejący spis treści w dokumencie za pomocą zaledwie kilku wierszy kodu. W tym artykule opisano, jak pracować z polem spis treści i pokazano:

- Jak wstawić nowy `TOC`
- Zaktualizuj nowy lub istniejący TOCs w dokumencie.
- Określ przełączniki, aby kontrolować formatowanie i ogólną strukturę F TOC.
- Jak zmodyfikować style i wygląd spisu treści.
- Jak usunąć całe pole `TOC` wraz ze wszystkimi wpisami z dokumentu.

### Wstaw Pola TC

Często określony wiersz tekstu jest oznaczony dla `TOC` i jest oznaczony polem `TC`. Prostym sposobem na zrobienie tego w MS Word jest podświetlenie tekstu i naciśnięcie *ALT+SHIFT+O*. Spowoduje to automatyczne utworzenie pola `TC` przy użyciu zaznaczonego tekstu. Tę samą technikę można osiągnąć za pomocą kodu. Poniższy kod znajdzie tekst pasujący do danych wejściowych i wstawi pole `TC` w tej samej pozycji co tekst. Kod oparty jest na tej samej technice zastosowanej w artykule. Poniższy przykład pokazuje, jak znaleźć i wstawić pole `TC` w tekście w dokumencie.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Zmodyfikuj spis treści

#### Zmień formatowanie stylów

Formatowanie wpisów w `TOC` nie wykorzystuje oryginalnych stylów oznaczonych wpisów, zamiast tego każdy poziom jest formatowany przy użyciu równoważnego stylu `TOC`. Na przykład pierwszy poziom w `TOC` jest sformatowany w stylu **TOC1**, drugi poziom sformatowany w stylu **TOC2** i tak dalej. Oznacza to, że aby zmienić wygląd `TOC`, te style muszą zostać zmodyfikowane. W Aspose.Words Style te są reprezentowane przez niezależne od ustawień regionalnych od `StyleIdentifier.TOC1` do `StyleIdentifier.TOC9` i można je pobrać z kolekcji `Document.Styles` za pomocą tych identyfikatorów. Po pobraniu odpowiedniego stylu dokumentu formatowanie tego stylu można zmodyfikować. Wszelkie zmiany w tych stylach zostaną automatycznie odzwierciedlone na TOCs w dokumencie. Przykład below code zmienia właściwość formatowania używaną w stylu pierwszego poziomu `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Warto również zauważyć, że każde bezpośrednie formatowanie akapitu (zdefiniowane w samym akapicie, a nie w stylu) oznaczone jako `TOC` zostanie skopiowane we wpisie w TOC. Na przykład, jeśli styl Heading 1 jest używany do oznaczania zawartości dla `TOC` i ten styl ma formatowanie pogrubione, podczas gdy akapit ma również formatowanie kursywą bezpośrednio do niego zastosowane. Wynikowy wpis `TOC` nie będzie pogrubiony, ponieważ jest to część formatowania stylu, ale będzie kursywą, ponieważ jest to bezpośrednio sformatowane w akapicie. Możesz także kontrolować formatowanie separatorów używanych między każdym wpisem a numerem strony. Domyślnie jest to linia przerywana, która jest rozłożona na numerację stron za pomocą znaku tabulatora i prawego ogranicznika tabulatora ustawionego blisko prawego marginesu.

Korzystając z klasy `Style` pobranej dla określonego poziomu `TOC`, który chcesz zmodyfikować, możesz również zmodyfikować sposób ich wyświetlania w dokumencie. Aby zmienić wygląd, najpierw należy wywołać `Style.ParagraphFormat`, Aby pobrać formatowanie akapitu dla stylu. Z tego można pobrać tabulatory, wywołując `ParagraphFormat.TabStops` i modyfikując odpowiedni tabulator. Korzystając z tej samej techniki, samą kartę można przenieść lub całkowicie usunąć. Przykład below code pokazuje, jak zmodyfikować położenie prawego tabulatora w paragrafach powiązanych z `TOC`. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Usuwanie spisu treści z dokumentu

Spis treści można usunąć z dokumentu, usuwając wszystkie węzły znajdujące się między węzłem `FieldStart` i FieldEnd pola `TOC`. Poniższy kod to pokazuje. Usunięcie pola `TOC` jest prostsze niż zwykłe pole, ponieważ nie śledzimy zagnieżdżonych pól. Zamiast tego sprawdzamy, czy węzeł `FieldEnd` jest typu `FieldType.FieldTOC`, co oznacza, że napotkaliśmy koniec bieżącego TOC. Ta technika może być użyta w tym przypadku bez martwienia się o zagnieżdżone pola, ponieważ możemy założyć, że każdy prawidłowo utworzony dokument nie będzie miał w pełni zagnieżdżonego pola `TOC` w innym polu `TOC`. Po pierwsze, węzły `FieldStart` każdego `TOC` są gromadzone i przechowywane. Określony `TOC` jest następnie wyliczany, aby wszystkie węzły w polu były odwiedzane i przechowywane. Węzły są następnie usuwane z dokumentu. Przykład below code pokazuje, jak usunąć określony `TOC` z dokumentu. Możesz pobrać plik szablonu tego przykładu stąd.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Wstaw Separator stylów, aby umieścić różne style akapitów

Separator stylów można dodać na końcu akapitu za pomocą skrótu klawiaturowego Ctrl + Alt + Enter do MS Word. Ta funkcja pozwala na dwa różne style akapitów używane w jednym logicznym drukowanym akapicie. Jeśli chcesz, aby jakiś tekst z początku określonego nagłówka pojawił się w spisie treści, ale nie chcesz, aby cały nagłówek znajdował się w spisie treści, możesz użyć tej funkcji. Przykład below code pokazuje, jak wstawić separator stylów, aby umieścić różne style akapitów.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Skopiuj wszystkie style z szablonu

Zdarzają się przypadki, gdy chcesz skopiować wszystkie style z jednego dokumentu do drugiego. Możesz użyć metody `Document.CopyStylesFromTemplate`, aby skopiować style z określonego szablonu do dokumentu. Gdy style są kopiowane z szablonu do dokumentu, Style o podobnych nazwach w dokumencie są przedefiniowane, aby pasowały do opisów stylów w szablonie. Unikalne style z szablonu są kopiowane do dokumentu. Unikalne style w dokumencie pozostają nienaruszone. Przykład below code pokazuje, jak kopiować style z jednego dokumentu do drugiego.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
