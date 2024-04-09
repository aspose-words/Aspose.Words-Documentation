---
title: Práce s písmy v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s písmy
linktitle: Práce s písmy
description: "Přizpůsobit nastavení písma pomocí Python."
type: docs
weight: 230
url: /cs/python-net/working-with-fonts/
---

Písmo je soubor znaků s určitou velikostí, barvou a designem. Aspose.Words umožňuje pracovat s písmy pomocí [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) modul a [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) třída.

## Formátování písma

Aktuální formátování písma představuje **Font** objekt vrácený [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) majetek. • **Font** třída obsahuje širokou škálu vlastností písma, replikace těch, které jsou k dispozici v Microsoft Word.

Následující příklad kódu ukazuje, jak nastavit formátování písma:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Vyplňte vlastnosti nyní jsou k dispozici také pro písma nastavit formátování textu. Poskytuje schopnost změnit například barvu popředí nebo transparentnost vyplnění textu.

## Získat mezeru v lince písma

Rozmezí přímek písma je vertikální vzdálenost mezi základními směry dvou po sobě jdoucích řádků textu. Rozmezí čáry zahrnuje prázdný prostor mezi řádky a výšku samotného znaku.

• [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) majetek byl zaveden v [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) třída pro získání této hodnoty, jak je uvedeno v následujícím příkladu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Písmo DůrazMark

Některé východoasijské jazyky používají zvláštní výraz pro důraz. • **Font** třída poskytuje [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) vlastnost pro získání nebo nastavení [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) hodnoty čísel, které se použijí ve formátu.

Následující příklad kódu ukazuje, jak nastavit **EphasisMark** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
