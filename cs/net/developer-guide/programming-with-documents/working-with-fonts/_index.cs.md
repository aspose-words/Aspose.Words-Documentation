---
title: Práce s písmy v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s písmy
linktitle: Práce s písmy
description: "Formátování písma v detailech pomocí C#. Zdůraznění v C#. Získejte mezeru v řádku písma pomocí C#."
type: docs
weight: 230
url: /cs/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Písmo je soubor znaků s určitou velikostí, barvou a designem. Aspose.Words umožňuje pracovat s písmy pomocí [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) jmenný prostor a [Font](https://reference.aspose.com/words/net/aspose.words/font/) třída.

## Formátování písma

Aktuální formátování písma představuje **Font** objekt vrácený [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) majetek. • **Font** třída obsahuje širokou škálu vlastností písma, replikace těch, které jsou k dispozici v Microsoft Word.

Následující příklad kódu ukazuje, jak nastavit formátování písma:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Vlastnosti fill jsou také k dispozici pro písma nastavit formátování textu. To umožňuje změnit například barvu popředí nebo transparentnost vyplnění textu.

## Získat mezeru v lince písma

Rozmezí přímek písma je vertikální vzdálenost mezi základními směry dvou po sobě jdoucích řádků textu. Rozmezí čáry zahrnuje prázdný prostor mezi řádky a výšku samotného znaku.

• [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) majetek byl zaveden do **Font** třída pro získání této hodnoty, jak je uvedeno v následujícím příkladu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Písmo DůrazMark

Některé východoasijské jazyky používají zvláštní výraz pro důraz. • **Font** třída poskytuje [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) vlastnost získat nebo nastavit [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) hodnoty čísel, které se použijí při formátování.

Následující příklad kódu ukazuje, jak nastavit **EphasisMark** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
