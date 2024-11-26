---
title: Renderowanie w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Wykonanie
linktitle: Wykonanie
description: "Użyj funkcji renderowania Aspose.Words dla Python via .NET, aby sformatować dokument o układzie przepływu na strony i przekonwertować taki dokument lub wybrane strony na inne formaty dokumentów (PDF, HTML, XPS itp.) lub obrazów (TIFF, PNG, SVG itp.) przeglądanie, dalsze konwersje lub drukowanie."
type: docs
weight: 20
url: /pl/python-net/rendering/
timestamp: 2024-01-27-14-07-04
---

Terminu "renderowanie" używamy w języku Aspose.Words do opisania procesu konwertowania dokumentu do formatu pliku lub nośnika, który jest podzielony na strony lub ma koncepcję stron. Mówimy o renderowaniu dokumentu na strony. Poniższy diagram pokazuje, na czym polega renderowanie w formacie Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Funkcje renderowania Aspose.Words umożliwiają wykonanie następujących czynności:

- Konwertuj dokument lub wybrane strony do formatów PDF, XPS, HTML, XAML, PostScript i PCL.
- Konwertuj dokument na wielostronicowy dokument TIFF lub przekonwertuj dowolną stronę na obraz rastrowy i zapisz go w formacie BMP, PNG lub JPEG.
- Konwertuj stronę dokumentu na obraz Scalable Vector Graphics (SVG) lub konwertuj na obraz wektorowy i zapisz go jako EMF.
- Renderuj obiekt [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) oddzielnie od dokumentu do dowolnego formatu obrazu.

## Formaty dokumentów o układzie przepływowym lub o stałym układzie

Większość formatów dokumentów, które można załadować do Aspose.Words, nazywa się formatami "układu przepływu". Formaty układu przepływu obejmują DOC, OOXML, RTF, ODT i HTML. Dokumenty w tych formatach składają się z różnych elementów takich jak akapity, tabele, nagłówki, stopki, obrazy, pola oraz ich formatowanie np. pogrubienie, kursywa, czcionka, rozmiar. Jednak formaty układu przepływu nie zawierają informacji o miejscu, w którym każdy konkretny akapit lub znak jest wyświetlany na stronie.

Natomiast formaty o "stałym układzie" (znane również jako "stała strona"), takie jak PDF i XPS, zawierają dokładne informacje o położeniu wszystkich elementów dokumentu. Formaty te zachowują oryginalny wygląd dokumentu po jego rozłożeniu na strony, zapewniając większą dokładność wyświetlanych informacji.

## Silnik układu strony

Aspose.Words implementuje własny silnik układu strony, który formatuje dokument o układzie przepływu w strony. Aspose.Words implementuje szereg modułów renderujących, które albo tworzą dokument o stałym układzie, takim jak PDF lub XPS, albo wysyłają strony na inny nośnik, taki jak druk lub rysunek. Należy pamiętać, że eksport może być również podzielony na strony w formacie HTML i XAML. Oznacza to, że dokument można zapisać jako zwykły HTML lub XAML (format układu przepływu) lub jako "stronicowany" HTML i XAML, które charakteryzują się bezwzględnymi pozycjami elementów.

Najważniejszą zaletą korzystania z silnika układu strony Aspose.Words jest to, że naśladuje on sposób działania silnika układu strony Microsoft Word. Dlatego też, gdy konwertujesz dokument Microsoft Word do formatu PDF, XPS lub drukujesz go przy użyciu formatu Aspose.Words, dane wyjściowe będą wyglądać prawie dokładnie tak, jakby zostały wykonane w formacie Microsoft Word. Należy pamiętać, że Aspose.Words nie wykorzystuje Microsoft Word.
