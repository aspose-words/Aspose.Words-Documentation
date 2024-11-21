---
title: Praca z czcionkami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z czcionkami
linktitle: Praca z czcionkami
description: "Dostosuj ustawienia czcionek za pomocą Python."
type: docs
weight: 230
url: /pl/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Czcionka to zestaw znaków o określonym rozmiarze, kolorze i wyglądzie. Aspose.Words umożliwia pracę z czcionkami za pomocą modułu [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) i klasy [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formatowanie czcionki

Bieżące formatowanie czcionki jest reprezentowane przez obiekt **Font** zwrócony przez właściwość [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). Klasa **Font** zawiera szeroką gamę właściwości czcionek, replikując te dostępne w formacie Microsoft Word.

Poniższy przykład kodu pokazuje, jak ustawić formatowanie czcionki:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Właściwości wypełnienia są teraz dostępne także dla czcionek w celu ustawienia formatowania wypełnienia tekstu. Daje możliwość zmiany np. koloru pierwszego planu czy przezroczystości wypełnienia tekstem.

## Uzyskiwanie odstępów między wierszami czcionki

Odstęp między wierszami czcionki to odległość w pionie między liniami bazowymi dwóch kolejnych wierszy tekstu. Zatem odstępy między wierszami obejmują odstępy między wierszami wraz z wysokością samego znaku.

Aby uzyskać tę wartość, w klasie [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) wprowadzono właściwość [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/), jak pokazano w przykładzie podanym poniżej:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Znak podkreślenia czcionki

W niektórych językach wschodnioazjatyckich stosuje się specjalny znak podkreślenia, aby wskazać nacisk. Klasa **Font** udostępnia właściwość [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) umożliwiającą pobieranie lub ustawianie wartości wyliczeniowych [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/), które mają być stosowane w formatowaniu.

Poniższy przykład kodu pokazuje, jak ustawić właściwość **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
