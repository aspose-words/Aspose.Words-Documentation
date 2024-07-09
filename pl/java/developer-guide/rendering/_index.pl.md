---
title: Rendering in Java
second_title: Aspose.Words zamiast Java
articleTitle: Renderowanie
linktitle: Renderowanie
description: "Stosowanie Aspose.Words zamiast Java renderowanie funkcji do formatu dokumentu flow- układ na strony i konwertować taki dokument lub wybrane strony do innego dokumentu (PDF, HTML, XPS, itp.) lub format obrazu (TIFF, PNG, SVG itp.) do oglądania, dalszej konwersji lub drukowania."
type: docs
weight: 30
url: /pl/java/rendering/
---

Używamy terminu "renderowanie" w Aspose.Words opis procesu konwersji dokumentu na format pliku lub nośnika, który jest paginowany lub ma pojęcie stron. Mówimy o przekazywaniu dokumentu na strony. Poniższy schemat pokazuje, co renderowanie jest w Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Cechy renderowania Aspose.Words umożliwia wykonanie następujących czynności:

- Konwersja dokumentu lub wybranych stron do PDF, XPS, Formaty HTML, XAML, PostScript i PCL.
- Konwersja dokumentu na wielostronicowy dokument TIFF, lub konwertować dowolną stronę na raster obrazu i zapisać go jako BMP, PNG lub JPEG.
- Konwersja strony dokumentu na Skalowalny obraz grafiki wektorowej (SVG), lub przekształcenie w obraz wektorowy i zapisać go jako EMF.
- Render (rysować) strona dokumentu w określonym rozmiarze lub skali na `Graphics` obiekt do tworzenia miniatur, pełnowymiarowych lub skalowanych obrazów stron dokumentów.
- Render [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) obiekt oddzielnie od dokumentu do dowolnego formatu obrazu lub do `Graphics` obiekt.
- Wyświetla dowolną stronę dokumentu w komponencie Swing.
- Drukuj lub podglądaj strony dokumentów przy użyciu standardu Java infrastruktura drukarska.

## Układ przepływu lub układ ustawiony Formaty dokumentów {#flow-layout-or-fixed-layout-document-formats}

Większość formatów dokumentów, które mogą być załadowane do Aspose.Words są znane jako "flow- układ" formaty. Formaty układu Flow- obejmują DOC, OOXML, RTF, ODT i HTML. Dokumenty w tych formatach składają się z różnych elementów, takich jak akapity, tabele, nagłówki, stopy, obrazy, pola i ich formatowanie, na przykład pogrubiony, italic, czcionka, rozmiar. Formaty układu przepływu nie zawierają jednak informacji o pozycji, w której każdy konkretny akapit lub znak jest wyświetlany na stronie.

Natomiast "fixed-layout" (znany również jako "fixed page") formatów, takich jak PDF i XPS zawierają dokładne informacje o pozycjonowaniu dla wszystkich elementów dokumentu. Formaty te zachowują oryginalny wygląd dokumentu po umieszczeniu go na stronach, zapewniając większą dokładność wyświetlanych informacji.

## Silnik układu strony {#page-layout-engine}

Aspose.Words implementuje własny silnik układu strony, który formatuje dokument flow- układ na strony. Aspose.Words wdraża pewną liczbę odźwiernych, którzy albo sporządzają dokument z utrwalonym układem, taki jak PDF, albo XPS, lub strony wyjściowe na inny nośnik, taki jak druk lub rysunek. Zauważ, że eksport może być również strona dla HTML i XAML. Oznacza to, że dokument może być zapisany jako regularny HTML lub XAML (format flow- layout), lub jako "pagined" HTML i XAML, które posiadają bezwzględne pozycje elementów.

Najważniejsza zaleta używania Aspose.Words silnik układu strony jest to, że naśladuje sposób Microsoft Wordukład strony działa. W związku z tym, kiedy nawrócić Microsoft Word dokument w formacie PDF, XPS, lub wydrukować go za pomocą Aspose.Words, wyjście pojawi się prawie dokładnie tak, jakby to było zrobione przez Microsoft Word. Zauważ, że Aspose.Words nie wykorzystuje Microsoft Word.
