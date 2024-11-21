---
title: Współpraca ze Styles i Themes
second_title: Aspose.Words zamiast Java
articleTitle: Współpraca ze Styles i Themes
linktitle: Współpraca ze Styles i Themes
description: "Wzmocnione Microsoft Word formatowanie funkcji, praca ze stylami i motywami Java."
type: docs
weight: 110
url: /pl/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

W [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) klasa jest używana do zarządzania built- in i stosowania ustawień zdefiniowanych przez użytkownika do stylów.

## Jak ekstrahować zawartość na stylach

Na prostym poziomie, pobieranie zawartości opartej na stylach z dokumentu Word może być przydatne do identyfikacji, listy i liczenia akapitów i rund tekstu sformatowanego w określonym stylu. Na przykład, może być konieczne zidentyfikowanie poszczególnych rodzajów treści w dokumencie, takich jak przykłady, tytuły, referencje, słowa kluczowe, nazwy postaci i studia przypadku.

Aby zrobić to kilka kroków dalej, może to być również wykorzystane do wykorzystania struktury dokumentu, określonego przez jego style, do ponownego przeznaczenia dokumentu dla innego wyjścia, takich jak HTML. W ten sposób buduje się dokumentację pozycjonowania Aspose.Words do testu. Narzędzie zbudowane przy użyciu Aspose.Words bierze dokumenty źródłowe Word i dzieli je na tematy na określonych poziomach nagłówków. Plik XML jest wytwarzany przy użyciu Aspose.Words który jest używany do budowy drzewa nawigacyjnego można zobaczyć po lewej stronie. I wtedy Aspose.Words konwertuje każdy temat na HTML. Rozwiązanie do pobierania tekstu sformatowanego z konkretnych stylów w dokumencie Word jest zazwyczaj ekonomiczne i proste przy użyciu Aspose.Words.

Aby zilustrować jak łatwo Aspose.Words obsługuje pobieranie treści w oparciu o style, spójrzmy na przykład. W tym przykładzie, mamy zamiar pobrać tekst sformatowany z określonego stylu paragrafu i stylu postaci z przykładowego dokumentu Word.

Na wysokim szczeblu będzie to obejmować:

1. Otwieranie dokumentu Word za pomocą [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasa.
1. Pobieranie zbiorów wszystkich akapitów i wszystkich punktów znajduje się w dokumencie.
1. Wybiera tylko wymagane akapity i biegnie.

W szczególności, odzyskamy tekst sformatowany w stylu paragrafu 'Nagłówek 1' i stylu znaków 'Intensywne podkreślenie' z tego przykładowego dokumentu Word

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

W tym przykładowym dokumencie tekst sformatowany w stylu "Nagłówek 1" to "Wstaw Tab", "Szybkie Style" i "Temat", a tekst sformatowany w stylu "Intensywny nacisk" to kilka instancji niebieskiego, italicyzowanego, pogrubionego tekstu, takiego jak "galerie" i "ogólny wygląd".

Wdrożenie zapytań opartych na stylach jest dość proste w Aspose.Words dokumentuj model obiektu, ponieważ po prostu używa narzędzi, które są już dostępne. Dla tego rozwiązania stosowane są dwie metody klasy:

1. **ParagraphsByStyleName** - Metoda ta pobiera tablicę tych akapitów w dokumencie o określonej nazwie stylu.
1. **RunsByStyleName** - Metoda ta pobiera tablicę tych uruchomień w dokumencie, które mają określoną nazwę stylu.

Obie te metody są bardzo podobne, jedynymi różnicami są typy węzłów i reprezentacja informacji stylów w ramach akapitu i uruchomić węzły. Oto implementacja ParagraphsByStyleName pokazana w przykładzie kodu podanym poniżej, aby znaleźć wszystkie akapity sformatowane w określonym stylu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Wdrożenie [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) Metoda `Document` klasa, która zwraca kolekcję wszystkich bezpośrednich węzłów dziecięcych.

Warto również zaznaczyć, że kolekcja akapitów nie tworzy natychmiastowej nagłośnienia, ponieważ akapity są ładowane do tej kolekcji tylko wtedy, gdy dostęp do elementów w nich. Następnie wystarczy przejść przez kolekcję, używając standardowego operatora foreach i dodać akapity, które mają określony styl do akapitów System WithStyle. W `Paragraph` nazwa stylu można znaleźć w [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) Własność [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) obiekt.

Wdrożenie RunsByStyleName jest prawie takie samo, chociaż oczywiście używamy `NodeType.Run` Odzyskać węzły. W [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) własność [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) obiekt jest używany do dostępu do informacji stylu w **Run** węzły

Poniższy przykład kodu znajduje wszystkie działa sformatowane w określonym stylu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Po zaimplementowaniu obu zapytań wystarczy przekazać obiekt dokumentu i podać nazwy stylu treści, które chcesz pobrać:

{{% /alert %}}

Poniższy przykład kodu uruchamia zapytania i wyświetla wyniki.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Gdy wszystko jest zrobione, uruchomiona próbka wyświetli następujące wyjście:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Jak widzicie, jest to bardzo prosty przykład, pokazujący liczbę i tekst zebranych akapitów i działa w przykładowym dokumencie Word.

## Wstaw separator stylu, aby umieścić różne style paragrafów

Separator stylu można dodać do końca paragrafu używając Ctrl + Alt + Enter Skrót klawiatury do MS Word. Funkcja ta pozwala na dwa różne style paragrafów stosowane w jednym logicznym drukowanym akapicie. Jeśli chcesz, aby tekst od początku danego nagłówka pojawił się w tabeli treści, ale nie chcesz całej pozycji w tabeli treści, możesz użyć tej funkcji

Poniższy przykład kodu pokazuje, jak umieścić separator stylów, aby umieścić różne style paragrafów

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Kopiuj wszystkie style z szablonu

Istnieją przypadki, gdy chcesz skopiować wszystkie style z jednego dokumentu do drugiego. Można użyć `Document.CopyStylesFromTemplate` metoda kopiowania stylów z określonego szablonu na dokument. Kiedy style są kopiowane z szablonu do dokumentu, jak - nazwane style w dokumencie są ponownie zdefiniowane, aby dopasować opisy stylu w szablonie. Unikalne style szablonu są kopiowane do dokumentu. Unikalne style w dokumencie pozostają nienaruszone

Poniższy przykład kodu pokazuje jak kopiować style z jednego dokumentu do drugiego.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Jak manipulować Właściwości motywu

Dodaliśmy podstawowe API w Aspose.Words dostęp do właściwości motywu dokumentu. Na razie to API obejmuje następujące obiekty publiczne:

- Motyw
- ThemeFonts
- ThemeColors

Oto jak można uzyskać właściwości motywu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

A oto jak można ustawić właściwości motywu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
