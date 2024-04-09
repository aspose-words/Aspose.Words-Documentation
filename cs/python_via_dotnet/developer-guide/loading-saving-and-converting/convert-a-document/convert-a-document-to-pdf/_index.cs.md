---
title: Převést dokument do PDF v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést dokument do PDF
linktitle: Převést dokument do PDF
description: "Převést dokument do PDF pomocí Python. Jsou podporovány různé vstupní formáty, včetně formátů Word, OpenOffice, Image a eBook."
type: docs
weight: 10
url: /cs/python-net/convert-a-document-to-pdf/
---

Schopnost snadno a spolehlivě převést dokumenty z jednoho formátu do druhého je klíčovým rysem Aspose.Words. Jedním z nejpopulárnějších formátů pro konverzi je formát PDF a formát fixed-layout, který zachovává původní vzhled dokumentu během jeho renderování na různých platformách. Výraz "rendering" se používá v Aspose.Words popis procesu přeměny dokumentu na formát souboru, který je paginován nebo má koncept stránek.

## Převést slovní dokument do PDF {#convert-a-word-document-to-pdf}

Převod z Word do PDF je poměrně složitý proces, který vyžaduje několik fází výpočtu. Aspose.Words rozložení motoru napodobuje způsob Microsoft WordPDF výstupní dokumenty vypadají co nejblíž k tomu, co můžete vidět v Microsoft Word.

S Aspose.Words můžete programově převést dokument z Word formátů, jako je DOC nebo DOCX, do PDF bez použití Microsoft Kancelář. Tento článek vysvětluje, jak provést tuto konverzi.

{{% alert color="primary" %}}

Všimněte si, že počet stránek v dokumentu ovlivňuje dobu konverze.

{{% /alert %}}

### Převést DOC nebo DOCX do PDF {#convert-doc-or-docx-to-pdf}

Převod z formátu dokumentu DOC nebo DOCX do formátu PDF ve Aspose.Words je velmi snadné a může být dosaženo pouze se dvěma řádky kódu, že:

1. Načíst svůj dokument do [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) objekt pomocí jednoho z jeho konstruktérů zadáním názvu dokumentu s jeho formátem rozšíření.
1. Invoke jeden z [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metody [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) objekt a zadejte požadovaný výstupní formát jako PDF zadáním názvu souboru s příponou

Následující příklad kódu ukazuje, jak převést dokument z DOCX do PDF pomocí [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) metoda:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Někdy je nutné stanovit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Všimněte si, že se stejnou technikou můžete převést libovolný formátový dokument formátu flow-layout do formátu PDF.

{{% /alert %}}

### Převést do různých PDF Normy {#convert-to-various-pdf-standards}

Aspose.Words poskytuje [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) počet podporující konverzi DOC nebo DOCX na různé standardy formátu PDF (např. PDF 1.7, PDF 1.5 atd.).

Následující příklad kódu ukazuje, jak převést dokument na PDF 1.7 pomocí [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) dodržování [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Převést obrázky do PDF

Převod do PDF není omezen Microsoft Word formáty dokumentů. Jakýkoli formát podporovaný Aspose.Words, včetně programově vytvořeného, lze také převést na PDF. Například, můžeme převést jednostránkové obrázky, jako jsou JPEG, PNG, BMP, EMF, nebo WMF, stejně jako vícestránkové obrázky, jako jsou TIFF a GIF, do PDF.

Následující příklad kódu ukazuje, jak převést JPEG a TIFF obrázky do PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Aby tento kód fungoval, musíte přidat odkazy na Aspose.Words a `aspose.pydrawing` na tvůj projekt.

## Snížit PDF Velikost výstupu

Při ukládání do PDF můžete určit, zda chcete optimalizovat výstup. K tomu je třeba nastavit [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlajka true, a pak budou odstraněna přebytečná hnízditá plátna a prázdné plátna, sousede. glyphse stejným formátováním bude konkatenován.

{{% alert color="primary" %}}

Použití **OptimizeOutput** vlastnost může ovlivnit přesnost zobrazení obsahu.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Snížit PDF Velikost výstupu

Při ukládání do PDF můžete určit, zda chcete optimalizovat výstup. K tomu je třeba nastavit [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlajka true, a pak budou odstraněna přebytečná hnízditá plátna a prázdné plátna, sousede. glyphse stejným formátováním bude konkatenován.

{{% alert color="primary" %}}

Použití **OptimizeOutput** vlastnost může ovlivnit přesnost zobrazení obsahu.

{{% /alert %}}

## Viz také

- Ten článek. [Renderování](/words/cs/python-net/rendering/) pro více informací o formátech pevných stránek a průtoků
- Ten článek. [Převod na formát pevné stránky](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pro více informací o rozložení stránky
- Ten článek. [Specifikovat možnosti renderování při převodu do PDF](/words/cs/python-net/specify-rendering-options-when-converting-to-pdf/) pro více informací o použití [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) třída
