---
title: Renderowanie w C++
second_title: Aspose.Words dla C++
articleTitle: Rendering
linktitle: Rendering
description: "Użyj funkcji Aspose.Words dla C++ renderowania, aby sformatować dokument układu przepływu na strony i przekonwertować taki dokument lub wybrane strony na inne dokumenty (PDF, HTML, XPS, itp.) lub obrazy (TIFF, PNG, SVG, itp.) formaty do przeglądania, dalszych konwersji lub drukowania."
type: docs
weight: 20
url: /pl/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Używamy terminu "renderowanie" w Aspose.Words, aby opisać proces konwersji dokumentu na format pliku lub nośnik, który jest podzielony na strony lub ma pojęcie stron. Mówimy o renderowaniu dokumentu na strony. Poniższy diagram pokazuje, w czym jest renderowanie Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Funkcje renderowania Aspose.Words umożliwiają wykonanie następujących czynności:

- Konwertuj dokument lub wybrane strony na PDF, XPS, HTML, XAML, PostScript, i PCL formatów.
- Konwertuj dokument na wielostronicowy dokument TIFF lub Konwertuj dowolną stronę na obraz rastrowy i zapisz go jako BMP, PNG lub JPEG.
- Konwertuj stronę dokumentu na skalowalny obraz grafiki wektorowej (SVG) lub Konwertuj na obraz wektorowy i zapisz go jako EMF.
- Renderuj (rysuj) stronę dokumentu o określonym rozmiarze lub skali na obiekcie `Graphics`, aby utworzyć miniatury, pełnowymiarowe lub skalowane obrazy stron dokumentu.
- Renderuj obiekt [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) oddzielnie od dokumentu do dowolnego formatu obrazu lub do obiektu `Graphics`.
- Wyświetl dowolną stronę dokumentu w postaci Windows.

## Formaty dokumentów Flow-layout lub Fixed-layout {#flow-layout-or-fixed-layout-document-formats}

Większość formatów dokumentów, które można załadować do Aspose.Words, jest znana jako formaty" układu przepływu". Formaty Flow-layout obejmują DOC, OOXML, RTF, ODT, i HTML. Dokumenty w tych formatach składają się z różnych elementów, takich jak akapity, tabele, nagłówki, stopki, obrazy, pola i ich formatowanie, na przykład pogrubienie, kursywa, czcionka, rozmiar. Jednak formaty układu przepływu nie zawierają informacji o pozycji, w której każdy konkretny akapit lub znak jest wyświetlany na stronie.

Natomiast formaty" fixed-layout "(znane również jako" fixed page"), takie jak PDF i XPS, zawierają dokładne informacje o pozycjonowaniu wszystkich elementów dokumentu. Formaty te zachowują oryginalny wygląd dokumentu po rozłożeniu go na strony, zapewniając większą dokładność wyświetlanych informacji.

## Silnik Układu Strony {#page-layout-engine}

Aspose.Words implementuje własny silnik układu strony, który formatuje dokument układu przepływu na strony. Aspose.Words implementuje wiele rendererów, które albo tworzą dokument o stałym układzie, taki jak PDF lub XPS, albo strony wyjściowe na innym nośniku, takim jak drukowanie lub rysowanie. Zauważ, że eksport można również podzielić na strony dla HTML i XAML. Oznacza to, że dokument można zapisać jako zwykły HTML lub XAML (format układu przepływu) lub jako "paginowany" HTML i XAML, które zawierają bezwzględne pozycje elementów.

Najważniejszą zaletą korzystania z silnika układu strony Aspose.Words jest to, że naśladuje sposób działania silnika układu strony Microsoft Word. Dlatego po przekonwertowaniu dokumentu Microsoft Word na PDF, XPS lub wydrukowaniu go za pomocą Aspose.Words, wynik będzie wyglądał prawie dokładnie tak, jakby został wykonany przez Microsoft Word. Zauważ, że Aspose.Words nie używa Microsoft Word.
