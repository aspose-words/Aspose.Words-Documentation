---
title: Praca ze stylami i motywami
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca ze stylami i motywami
linktitle: Praca ze stylami i motywami
description: "Uzyskaj dostęp do stylów i motywów w dokumencie oraz zarządzaj nimi za pomocą Python."
type: docs
weight: 110
url: /pl/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Klasa [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) służy do zarządzania wbudowanymi ustawieniami i stosowania ustawień zdefiniowanych przez użytkownika do stylów.

## Dostęp do stylów

Możesz uzyskać kolekcję stylów zdefiniowanych w dokumencie za pomocą właściwości [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Ta kolekcja zawiera w dokumencie zarówno style wbudowane, jak i zdefiniowane przez użytkownika. Konkretny styl można uzyskać na podstawie jego nazwy/aliasu, identyfikatora stylu lub indeksu. Poniższy przykład kodu demonstruje, jak uzyskać dostęp do kolekcji stylów zdefiniowanych w dokumencie.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Jak wyodrębnić zawartość na podstawie stylów

Na prostym poziomie pobieranie zawartości opartej na stylach z dokumentu programu Word może być przydatne do identyfikowania, wyszczególniania i liczenia akapitów i ciągów tekstu sformatowanego przy użyciu określonego stylu. Na przykład może zaistnieć potrzeba zidentyfikowania określonych rodzajów treści w dokumencie, takich jak przykłady, tytuły, odniesienia, słowa kluczowe, nazwiska postaci i studia przypadków.

Aby pójść o kilka kroków dalej, można to również wykorzystać do wykorzystania struktury dokumentu, zdefiniowanej przez używane w nim style, w celu ponownego wykorzystania dokumentu do innego wyniku, takiego jak HTML. W ten sposób budowana jest dokumentacja Aspose, wystawiając Aspose.Words na próbę. Narzędzie zbudowane przy użyciu Aspose.Words pobiera źródłowe dokumenty Worda i dzieli je na tematy na określonych poziomach nagłówków. Za pomocą Aspose.Words tworzony jest plik XML, który służy do budowania drzewa nawigacyjnego widocznego po lewej stronie. Następnie Aspose.Words konwertuje każdy temat na HTML.

Rozwiązanie polegające na pobieraniu tekstu sformatowanego przy użyciu określonych stylów w dokumencie programu Word jest zazwyczaj ekonomiczne i proste przy użyciu protokołu Aspose.Words.

### Rozwiązanie

Aby zilustrować, jak łatwo Aspose.Words radzi sobie z pobieraniem treści na podstawie stylów, spójrzmy na przykład. W tym przykładzie pobierzemy tekst sformatowany przy użyciu określonego stylu akapitu i stylu znakowego z przykładowego dokumentu programu Word. Na wysokim poziomie będzie to obejmować:
- Otwarcie dokumentu Word przy użyciu klasy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Pobieranie zbiorów wszystkich akapitów i wszystkich przebiegów w dokumencie.
- Wybór tylko wymaganych akapitów i przebiegów. W szczególności pobierzemy tekst sformatowany w stylu akapitu "Nagłówek 1" i stylu znaku "Intensywne podkreślenie" z tego przykładowego dokumentu programu Word.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


W tym przykładowym dokumencie tekst sformatowany w stylu akapitu "Nagłówek 1" to "Wstaw tabulator", "Szybkie style" i "Motyw", a tekst sformatowany w stylu znaku "Intensywne podkreślenie" to kilka wystąpień koloru niebieskiego, kursywą i pogrubionym tekstem, np. "galerie" i "wygląd ogólny".

### Kod

Implementacja zapytania opartego na stylu jest dość prosta w obiektowym modelu dokumentu Aspose.Words, ponieważ wykorzystuje po prostu narzędzia, które już istnieją. Dla tego rozwiązania zaimplementowano dwie metody klasowe:
- **akapity_według_nazwy_stylu** – Ta metoda pobiera tablicę tych akapitów w dokumencie, które mają określoną nazwę stylu.
- **run_by_style_name** – Ta metoda pobiera tablicę przebiegów w dokumencie, które mają określoną nazwę stylu. Obie te metody są bardzo podobne, a jedynymi różnicami są typy węzłów i reprezentacja informacji o stylu w węzłach akapitu i uruchamiania. Oto implementacja `paragraphs_by_style_name`: Poniżej przykład znajdź wszystkie akapity sformatowane przy użyciu określonego stylu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

W tej implementacji wykorzystano także metodę [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) klasy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), która zwraca kolekcję wszystkich węzłów określonego typu, czyli w tym przypadku we wszystkich akapitach.

Należy pamiętać, że drugi parametr metody [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) jest ustawiony na `True`. Zmusza to metodę [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) do rekurencyjnego wybierania wszystkich węzłów podrzędnych, zamiast wybierania tylko bezpośrednich węzłów podrzędnych.

{{% /alert %}}

Warto również zauważyć, że kolekcja akapitów nie powoduje natychmiastowego narzutu, ponieważ akapity są ładowane do tej kolekcji tylko wtedy, gdy uzyskujesz dostęp do ich elementów. Następnie wystarczy przejrzeć kolekcję za pomocą standardowego operatora foreach i dodać akapity posiadające określony styl do tablicy paragrafów_with_style. Nazwę stylu `Paragraph` można znaleźć we właściwości [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) obiektu [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). Implementacja **run_by_style_name** jest prawie taka sama, chociaż oczywiście używamy [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) do pobierania węzłów wykonawczych. Właściwość [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) obiektu [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) służy do uzyskiwania dostępu do informacji o stylu w węzłach [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Poniżej przykład znajdź wszystkie przebiegi sformatowane przy użyciu określonego stylu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Gdy oba zapytania są zaimplementowane, wystarczy przekazać obiekt dokumentu i określić nazwy stylów treści, którą chcesz pobrać: Poniżej przykładowe uruchamianie zapytań i wyświetlanie wyników. Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Wynik końcowy

Gdy wszystko zostanie wykonane, uruchomienie przykładu wyświetli następujące dane wyjściowe:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Jak widać, jest to bardzo prosty przykład, pokazujący liczbę i treść zebranych akapitów i przebiegów w przykładowym dokumencie Word.

## Skopiuj wszystkie style z szablonu

Zdarzają się przypadki, gdy chcesz skopiować wszystkie style z jednego dokumentu do drugiego. Możesz użyć metody [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/), aby skopiować style z określonego szablonu do dokumentu. Kiedy style są kopiowane z szablonu do dokumentu, style o podobnych nazwach w dokumencie są ponownie definiowane w celu dopasowania do opisów stylów w szablonie. Unikalne style z szablonu są kopiowane do dokumentu. Unikalne style w dokumencie pozostają nienaruszone. Przykład Below code pokazuje, jak skopiować style z jednego dokumentu do drugiego.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Jak manipulować właściwościami motywu

Dodaliśmy podstawowy API w Aspose.Words, aby uzyskać dostęp do właściwości motywu dokumentu. Na razie ten API zawiera następujące obiekty publiczne:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Oto jak uzyskać właściwości motywu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

A oto jak ustawić właściwości motywu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
