---
title: Praca z czcionkami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z czcionkami
linktitle: Praca z czcionkami
description: "Szczegóły formatowania czcionek przy użyciu C#. Znak podkreślenia w C#. Uzyskaj odstępy między wierszami czcionki za pomocą C#."
type: docs
weight: 230
url: /pl/net/working-with-fonts/
---

Czcionka to zestaw znaków o określonym rozmiarze, kolorze i wyglądzie. Aspose.Words umożliwia pracę z czcionkami przy użyciu przestrzeni nazw [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) i klasy [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Formatowanie czcionki

Bieżące formatowanie czcionki jest reprezentowane przez obiekt **Font** zwrócony przez właściwość [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). Klasa **Font** zawiera szeroką gamę właściwości czcionek, replikując te dostępne w formacie Microsoft Word.

Poniższy przykład kodu pokazuje, jak ustawić formatowanie czcionki:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Dla czcionek dostępne są także właściwości wypełnienia umożliwiające ustawienie formatowania wypełnienia tekstem. Dzięki temu możliwa jest zmiana np. koloru pierwszego planu czy przezroczystości wypełnienia tekstem.

## Uzyskiwanie odstępów między wierszami czcionki

Odstęp między wierszami czcionki to odległość w pionie między liniami bazowymi dwóch kolejnych wierszy tekstu. Zatem odstępy między wierszami obejmują odstępy między wierszami wraz z wysokością samego znaku.

W celu uzyskania tej wartości do klasy **Font** wprowadzono właściwość [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/), jak pokazano w poniższym przykładzie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Znak podkreślenia czcionki

W niektórych językach wschodnioazjatyckich stosuje się specjalny znak podkreślenia, aby wskazać nacisk. Klasa **Font** udostępnia właściwość [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) umożliwiającą pobieranie lub ustawianie wartości wyliczeniowych [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/), które mają być stosowane podczas formatowania.

Poniższy przykład kodu pokazuje, jak ustawić właściwość **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
