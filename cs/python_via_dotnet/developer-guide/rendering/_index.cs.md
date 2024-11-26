---
title: Renderování Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Renderování
linktitle: Renderování
description: "Použití Aspose.Words místo Python via .NET funkce zobrazování pro formátování dokumentu pro překrytí toku na stránky a převod takového dokumentu nebo vybraných stránek na jiné dokumenty (PDF, HTML, XPS, atd.) nebo obrazy (TIFF, PNG, SVG atd.) formáty pro prohlížení, další konverze nebo tisk."
type: docs
weight: 20
url: /cs/python-net/rendering/
timestamp: 2024-01-27-14-07-04
---

Používáme termín "rendering" v Aspose.Words popis procesu přeměny dokumentu na formát souboru nebo médium, které je paginováno nebo má koncept stránek. Hovoříme o tom, že se dokument vykreslí na stránky. Následující schéma ukazuje, co vykreslování je v Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Vykreslovací prvky Aspose.Words umožní vám provést následující:

- Převést dokument nebo vybrané stránky do PDF, XPS, HTML, XAML, PostScript a PCL formáty.
- Převést dokument do vícestránkového TIFF dokumentu, nebo převést jakoukoli stránku do rastrového obrazu a uložit jej jako BMP, PNG nebo JPEG.
- Převést stránku dokumentu na obraz Scalable Vector Graphics (SVG), nebo převést do vektorového obrazu a uložit ji jako EMF.
- Render a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) objekt odděleně od dokumentu do jakéhokoli formátu obrázku.

## Formáty dokumentů formátu Flow-Layout nebo Fixed-Layout

Většina formátů dokumentů, které lze načíst do Aspose.Words jsou známé jako formáty pro překrytí průtoku. Flow-layout formáty zahrnují DOC, OOXML, RTF, ODT, a HTML. Dokumenty v těchto formátech se skládají z různých prvků, jako jsou odstavce, tabulky, hlavičky, zápatí, obrázky, pole a jejich formátování, například tučné, kurzíva, písmo, velikost. Formáty pro překrytí toku však neobsahují informace o poloze, kde je každý konkrétní odstavec nebo znak zobrazen na stránce.

Naproti tomu formáty "fixed-layout" (také známé jako "fixed page") jako PDF a XPS obsahovat přesné informace o umístění všech prvků dokumentu. Tyto formáty uchovávají původní vzhled dokumentu poté, co byl uveden na stránkách, což poskytuje vyšší přesnost zobrazených informací.

## Rozložení stránky

Aspose.Words implementuje svůj vlastní page layout motor, který formátuje flow-layout dokument na stránky. Aspose.Words provádí řadu vykreslovačů, které buď vyrobí dokument s pevným rozlišením, jako je PDF, nebo XPS, nebo výstupní stránky do jiného média, jako je tisk nebo kreslení. Všimněte si, že export lze také paginovat pro HTML a XAML. To znamená, že dokument může být uložen jako běžný HTML nebo XAML (flow-layout formát), nebo jako "paginovaný" HTML a XAML, které mají absolutní pozice prvků.

Nejdůležitější výhoda použití Aspose.Words Page disposition engine is that it mimics the way Microsoft WordPage layout motor funguje. Proto, když konvertujete Microsoft Word dokument do PDF, XPS, nebo jej vytisknout pomocí Aspose.Words, výstup bude vypadat téměř přesně, jako by to bylo provedeno Microsoft Word. Všimněte si, že Aspose.Words nevyužívá Microsoft Word.
