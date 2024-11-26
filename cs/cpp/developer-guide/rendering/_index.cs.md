---
title: Vykreslování v C++
second_title: Aspose.Words pro C++
articleTitle: Vykreslování
linktitle: Vykreslování
description: "Pomocí funkce Aspose.Words pro C++ rendering naformátujte dokument rozložení toku na stránky a převeďte takový dokument nebo vybrané stránky na jiné dokumenty (PDF, HTML, XPS, atd.) nebo obrázky (TIFF, PNG, SVG, atd.) formáty pro prohlížení, další konverze nebo tisk."
type: docs
weight: 20
url: /cs/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Termín "Vykreslování" v Aspose.Words používáme k popisu procesu převodu dokumentu do formátu souboru nebo média, které je stránkované nebo má koncept stránek. Mluvíme o vykreslení dokumentu na stránky. Následující diagram ukazuje, jaké Vykreslování je v Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Funkce vykreslování Aspose.Words vám umožňují provádět následující:

- Převod dokumentu nebo vybraných stránek na PDF, XPS, HTML, XAML, PostScript, a PCL formáty.
- Převeďte dokument na vícestránkový TIFF dokument nebo převeďte libovolnou stránku na rastrový obrázek a uložte jej jako BMP, PNG nebo JPEG.
- Převeďte stránku dokumentu na škálovatelný obrázek vektorové grafiky (SVG) nebo převeďte na vektorový obrázek a uložte jej jako EMF.
- Vykreslete (nakreslete) stránku dokumentu v určité velikosti nebo měřítku na objekt `Graphics` a vytvořte miniatury, obrázky v plné velikosti nebo měřítku stránek dokumentu.
- Vykreslete objekt [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) odděleně od dokumentu do libovolného formátu obrázku nebo do objektu `Graphics`.
- Zobrazit libovolnou stránku dokumentu ve formě Windows.

## Formáty dokumentů Flow-layout nebo Fixed-layout {#flow-layout-or-fixed-layout-document-formats}

Většina formátů dokumentů, které lze načíst do Aspose.Words, se nazývá formáty "flow-layout". Formáty rozložení toku zahrnují DOC, OOXML, RTF, ODT, a HTML. Dokumenty v těchto formátech se skládají z různých prvků, jako jsou odstavce, tabulky, záhlaví, zápatí, obrázky, pole a jejich formátování, například tučné, kurzíva, písmo, velikost. Formáty rozložení toku však neobsahují informace o poloze, kde je každý konkrétní odstavec nebo znak zobrazen na stránce.

Naproti tomu formáty" fixed-layout "(také známé jako" fixed page"), jako jsou PDF a XPS, obsahují přesné informace o umístění pro všechny prvky dokumentu. Tyto formáty zachovávají původní vzhled dokumentu poté, co byl rozložen na stránky, což poskytuje vyšší přesnost zobrazených informací.

## Page Layout Engine {#page-layout-engine}

Aspose.Words implementuje svůj vlastní modul rozvržení stránky, který formátuje dokument rozložení toku na stránky. Aspose.Words implementuje řadu vykreslovačů, které buď vytvářejí dokument s pevným rozložením, jako je PDF nebo XPS, nebo vydávají stránky na jiné médium, jako je tisk nebo kreslení. Všimněte si, že export lze také stránkovat pro HTML a XAML. To znamená, že dokument lze uložit jako normální HTML nebo XAML (formát rozvržení toku) nebo jako "stránkované" HTML a XAML, které obsahují absolutní polohy prvků.

Nejdůležitější výhodou použití Aspose.Words page layout engine je to, že napodobuje způsob, jakým funguje Microsoft Word page layout engine. Když tedy převedete dokument Microsoft Word na PDF, XPS nebo jej vytisknete pomocí Aspose.Words, výstup se zobrazí téměř přesně, jako by to bylo provedeno pomocí Microsoft Word. Všimněte si, že Aspose.Words nepoužívá Microsoft Word.
