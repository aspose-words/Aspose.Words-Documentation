---
title: Práce s písmy v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s písmy
linktitle: Práce s písmy
description: "Podrobné formátování písma pomocí C++."
type: docs
weight: 230
url: /cs/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Písmo je sada znaků s určitou velikostí, barvou a designem. Aspose.Words umožňuje pracovat s písmy pomocí oboru názvů [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) a třídy [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formátování Písma

Aktuální formátování písma je reprezentováno objektem **Font** vráceným vlastností [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Třída **Font** obsahuje širokou škálu vlastností písma, které replikují vlastnosti dostupné v Microsoft Word.

Následující příklad kódu ukazuje, jak nastavit formátování písma:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Vlastnosti výplně jsou nyní k dispozici také pro písma pro nastavení formátování výplně textu. Dává možnost změnit například barvu popředí nebo průhlednost výplně textu.

## Získání Řádkování Písma

Řádkování písma je svislá vzdálenost mezi základními liniemi dvou po sobě jdoucích řádků textu. Řádkování tedy zahrnuje prázdné místo mezi řádky spolu s výškou samotného znaku.

Vlastnost [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) byla zavedena do třídy **Font** k získání této hodnoty, jak je znázorněno v příkladu níže:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Písmo EmphasisMark

Některé východoasijské jazyky používají k označení důrazu značku zvláštního důrazu. Třída **Font** poskytuje vlastnost [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) pro získání nebo nastavení hodnot výčtu `EmphasisMark`, které se mají použít při formátování.

Následující příklad kódu ukazuje, jak nastavit vlastnost **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
