---
title: Renderování Java
second_title: Aspose.Words místo Java
articleTitle: Renderování
linktitle: Renderování
description: "Použití Aspose.Words místo Java funkce renderování pro formátování dokumentu na stránky a převod takového dokumentu nebo vybraných stránek na jiný dokument (PDF, HTML, XPS, atd.) nebo formáty obrazu (TIFF, PNG, SVG atd.) pro prohlížení, další konverze nebo tisk."
type: docs
weight: 30
url: /cs/java/rendering/
---

Používáme termín "rendering" v Aspose.Words popis procesu přeměny dokumentu na formát souboru nebo médium, které je paginováno nebo má koncept stránek. Mluvíme o vykreslení dokumentu na stránky. Následující schéma ukazuje, co je vykreslování v Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Vykreslovací prvky Aspose.Words umožňuje provádět:

- Převést dokument nebo vybrané stránky do PDF, XPS, HTML, XAML, PostScript a PCL formáty.
- Převést dokument do vícestránkového TIFF dokumentu, nebo převést jakoukoli stránku do rastrového obrazu a uložit jej jako BMP, PNG nebo JPEG.
- Převést stránku dokumentu na obraz Scalable Vector Graphics (SVG), nebo převést do vektorového obrazu a uložit ji jako EMF.
- Render (kreslit) stránku dokumentu v určité velikosti nebo měřítku na `Graphics` objekt k vytvoření náhledů, full-velikost nebo škálované obrázky stránek dokumentů.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objekt odděleně od dokumentu do jakéhokoli formátu obrázku nebo do `Graphics` objekt.
- Zobrazit jakoukoli stránku dokumentu v Swing Componentu.
- Tisk nebo náhled stránek dokumentů pomocí normy Java tisková infrastruktura.

## Proudové nebo pevné překrytí Formáty dokumentů {#flow-layout-or-fixed-layout-document-formats}

Většina formátů dokumentů, které lze načíst do Aspose.Words jsou známé jako formáty pro překrytí průtoku. Flow-layout formáty zahrnují DOC, OOXML, RTF, ODT, a HTML. Dokumenty v těchto formátech se skládají z různých prvků, jako jsou odstavce, tabulky, hlavičky, zápatí, obrázky, pole a jejich formátování, například tučné, kurzíva, písmo, velikost. Formáty pro překrytí toku však neobsahují informace o poloze, ve které je každý konkrétní odstavec nebo znak zobrazen na stránce.

Naproti tomu formát "fixed-layout" (také známý jako "fixed page") jako PDF a XPS obsahují přesné informace o umístění všech prvků dokumentu. Tyto formáty zachovávají původní vzhled dokumentu poté, co byl uveden na stránkách a poskytují vyšší přesnost zobrazených informací.

## Rozložení stránky {#page-layout-engine}

Aspose.Words implementuje svůj vlastní page layout motor, který formátuje průtokový dokument do stránek. Aspose.Words provádí řadu vykreslovačů, které buď vytvoří dokument s pevným překrytím, jako je PDF, nebo XPS, nebo výstupní stránky do jiného média, jako je tisk nebo kreslení. Všimněte si, že export lze také paginovat pro HTML a XAML. To znamená, že dokument lze uložit jako běžný HTML nebo XAML (flow-layout formát), nebo jako "paginovaný" HTML a XAML, které mají absolutní pozice prvků.

Nejdůležitější výhoda využití Aspose.Words Page dispoziční motor je, že to napodobuje cestu Microsoft WordPage layout engine funguje. Proto, když konvertujete Microsoft Word dokument do PDF, XPS, nebo tisknout pomocí Aspose.Words, výstup se objeví téměř přesně, jako by to bylo provedeno Microsoft Word. Všimněte si, že Aspose.Words nevyužívá Microsoft Word.
