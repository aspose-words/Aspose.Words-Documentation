---
title: Převést slovo do PDF v C#
second_title: Aspose.Words místo .NET
articleTitle: Převést dokument do PDF
linktitle: Převést dokument do PDF
description: "Převést dokument do PDF pomocí C#. Převést DOCX do PDF C#. Jsou podporovány různé vstupní formáty, včetně formátů Word, OpenOffice, Image a eBook."
type: docs
weight: 10
url: /cs/net/convert-a-document-to-pdf/
---

Schopnost snadno a spolehlivě převést dokumenty z jednoho formátu do druhého je klíčovým rysem Aspose.Words. Jedním z nejpopulárnějších formátů pro konverzi je formát PDF a formát fixed-layout, který zachovává původní vzhled dokumentu během jeho renderování na různých platformách. Výraz "rendering" se používá v Aspose.Words popis procesu přeměny dokumentu na formát souboru, který je paginován nebo má koncept stránek.

## Převést slovní dokument do PDF

Převod z Word do PDF je poměrně složitý proces, který vyžaduje několik fází výpočtu. Aspose.Words rozložení motoru napodobuje způsob Microsoft WordPDF výstupní dokumenty vypadají co nejblíž k tomu, co můžete vidět v Microsoft Word.

S Aspose.Words můžete programově převést dokument z Word formátů, jako je DOC nebo DOCX, do PDF bez použití Microsoft Kancelář. Tento článek vysvětluje, jak provést tuto konverzi.

{{% alert color="primary" %}}

Všimněte si, že počet stránek v dokumentu ovlivňuje dobu konverze.

{{% /alert %}}

### Převést DOCX nebo DOC do PDF

Převod z formátu dokumentu DOC nebo DOCX do formátu PDF ve Aspose.Words je velmi snadné a může být dosaženo pouze se dvěma řádky kódu, že:

1. Načíst svůj dokument do [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt pomocí jednoho z jeho konstruktérů zadáním názvu dokumentu s jeho formátem rozšíření.
1. Invoke jeden z [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) metody **Document** objekt a zadejte požadovaný výstupní formát jako PDF zadáním názvu souboru s příponou

Následující příklad kódu ukazuje, jak převést dokument z DOCX do PDF pomocí [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metoda:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Někdy je nutné stanovit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Všimněte si, že se stejnou technikou můžete převést libovolný formátový dokument formátu flow-layout do formátu PDF.

{{% /alert %}}

### Převést do různých PDF Normy

Aspose.Words poskytuje [PdfKompliace](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)počet podporující konverzi DOC nebo DOCX na různé standardy formátu PDF (např. PDF 1.7, PDF 1.5 atd.).

Následující příklad kódu ukazuje, jak převést dokument na PDF 1.7 pomocí [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) podle PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Převést obrázky do PDF

Převod do PDF není omezen Microsoft Word formáty dokumentů. Jakýkoli formát podporovaný Aspose.Words, včetně programově vytvořeného, lze také převést na PDF. Například, můžeme převést jednostránkové obrázky, jako jsou JPEG, PNG, BMP, EMF, nebo WMF, stejně jako vícestránkové obrázky, jako jsou TIFF a GIF, do PDF.

Následující příklad kódu ukazuje, jak převést JPEG a TIFF obrázky do PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Aby tento kód fungoval, musíte přidat odkazy na Aspose.Words a `System.Drawing` na tvůj projekt.

## Snížit PDF Velikost výstupu

Při ukládání do PDF můžete určit, zda chcete optimalizovat výstup. K tomu je třeba nastavit [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) vlajka true, a pak budou odstraněna přebytečná hnízditá plátna a prázdné plátna, sousede. glyphse stejným formátováním bude konkatenován.

Následující příklad kódu ukazuje, jak optimalizovat výstup:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Použití **OptimizeOutput** vlastnost může ovlivnit přesnost zobrazení obsahu.

{{% /alert %}}

## Viz také

- Ten článek. [Renderování](/words/cs/net/rendering/) pro více informací o formátech pevných stránek a průtoků
- Ten článek. [Převod na formát pevné stránky](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pro více informací o rozložení stránky
- Ten článek. [Specifikovat možnosti renderování při převodu do PDF](/words/cs/net/specify-rendering-options-when-converting-to-pdf/) pro více informací o použití `PdfSaveOptions` třída
- Ten článek. [Naučte se vlastnosti konverze na PDF/A a PDF/UA](/words/cs/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) popis, které normy PDF a příslušné ISO pro podporu norem PDF Aspose.Words
- Ten článek. [Který standard PDF je lepší vybrat](/words/cs/net/which-pdf-standard-is-better-to-choose/) určit, které standardy PDF mají smysl, pro které případy

- Ten článek. [Práce s PDF/A nebo PDF/UA](/words/cs/net/working-with-pdfa-or-pdfua/) popisuje požadavky na obsah dokumentu ve formátech PDF/A a PDF/UA a zejména požadavky na strukturu a písma

- Ten článek. [Výstrahy o přístupnosti při ukládání do PDF/A a PDF/UA](/words/cs/net/warnings-when-saving-to-pdfa-and-pdfua/) popisuje požadavky na přístupnost obsahu PDF/A a PDF/UA
