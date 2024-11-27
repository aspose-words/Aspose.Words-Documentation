---
title: Praca z czcionkami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z czcionkami
linktitle: Praca z czcionkami
description: "Formatowanie czcionek w szczegółach za pomocą C++."
type: docs
weight: 230
url: /pl/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Czcionka to zestaw znaków o określonym rozmiarze, kolorze i wyglądzie. Aspose.Words umożliwia pracę z czcionkami przy użyciu przestrzeni nazw [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) I klasy [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formatowanie Czcionek

Bieżące formatowanie czcionki jest reprezentowane przez obiekt **Font** zwrócony przez właściwość [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Klasa **Font** zawiera szeroką gamę właściwości czcionek, replikując te dostępne w Microsoft Word.

Poniższy przykład kodu pokazuje, jak ustawić formatowanie czcionki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Właściwości wypełnienia są teraz również dostępne dla czcionek, aby ustawić formatowanie wypełnienia tekstu. Daje możliwość zmiany na przykład koloru pierwszego planu lub przezroczystości wypełnienia tekstu.

## Uzyskiwanie Odstępów Między Wierszami Czcionek

Odstępy między wierszami czcionek to odległość w pionie między liniami podstawowymi dwóch kolejnych wierszy tekstu. Tak więc odstępy między wierszami obejmują pustą przestrzeń między wierszami wraz z wysokością samego znaku.

Właściwość [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) została wprowadzona do klasy **Font** w celu uzyskania tej wartości, jak pokazano w poniższym przykładzie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Czcionka EmphasisMark

Niektóre języki wschodnioazjatyckie używają specjalnego znaku nacisku, aby wskazać nacisk. Klasa **Font** zapewnia Właściwość [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) do pobierania lub ustawiania wartości wyliczenia `EmphasisMark`, które mają być stosowane podczas formatowania.

Poniższy przykład kodu pokazuje, jak ustawić właściwość **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
