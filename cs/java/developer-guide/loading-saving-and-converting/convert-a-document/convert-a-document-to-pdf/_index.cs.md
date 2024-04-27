---
title: Převést dokument do PDF v Java
second_title: Aspose.Words místo Java
articleTitle: Převést dokument do PDF
linktitle: Převést dokument do PDF
description: "Převést dokument ve Wordu nebo jiném podporovaném formátu do PDF, který zachovává původní vzhled dokumentu při jeho vykreslování na různých platformách pomocí Java."
type: docs
weight: 10
url: /cs/java/convert-a-document-to-pdf/
---

Schopnost snadno a spolehlivě převést dokumenty z jednoho formátu do druhého je klíčovým rysem Aspose.Words. Jedním z nejpopulárnějších formátů pro převod je formát PDF díry, který zachovává původní vzhled dokumentu během jeho renderování na různých platformách. Výraz "rendering" se používá v Aspose.Words popis procesu přeměny dokumentu na formát souboru, který je paginován nebo má koncept stránek.

## Převést slovní dokument do PDF {#convert-a-word-document-to-pdf}

Převod z Word do PDF je poměrně složitý proces, který vyžaduje několik fází výpočtu. Aspose.Words rozložení motoru napodobuje způsob Microsoft WordPage layout engine funguje, takže PDF výstupní dokumenty vypadají co nejblíže tomu, co můžete vidět v Microsoft Word.

S Aspose.Words můžete programově převést dokument z DOC nebo DOCX formátu do PDF bez použití Microsoft Kancelář. Tento článek vysvětluje, jak provést tuto konverzi.

{{% alert color="primary" %}}

Všimněte si, že počet stránek v dokumentu ovlivňuje dobu konverze.

{{% /alert %}}

### Převod DOCX nebo DOC do PDF {#converting-doc-or-docx-to-pdf}

Převod z formátu dokumentu DOC nebo DOCX do formátu PDF ve Aspose.Words je velmi snadné a lze dosáhnout pouze dvěma řádky kódu, že:

1. Načíst svůj dokument do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objekt pomocí jednoho z jeho konstruktérů upřesněním názvu dokumentu s jeho formátem rozšíření.
1. Invoke jeden z [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metody **Document** objekt a zadejte požadovaný výstupní formát jako PDF zadáním názvu souboru s příponou

Následující příklad kódu ukazuje, jak převést dokument z DOCX do PDF pomocí `Save` metoda:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Někdy je nutné upřesnit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako PDF. Tyto možnosti lze určit použitím [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup PDF.

Všimněte si, že se stejnou technikou můžete převést libovolný formát formátu Flow-layout do formátu PDF.

{{% /alert %}}

### Převést do různých PDF Normy {#converting-to-various-pdf-standards}

Aspose.Words poskytuje [PdfKompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)počet podporující konverzi DOC nebo DOCX na různé standardy formátu PDF (např. PDF 1.7, PDF 1.5 atd.).

Následující příklad kódu ukazuje, jak převést dokument na PDF 1.7 pomocí [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) podle PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Převést obrázky do PDF

Převod do PDF není omezen Microsoft Word formáty dokumentů. Jakýkoli formát podporovaný Aspose.Words, včetně programově vytvořené, lze také převést na PDF. Například, můžeme převést jednostránkové obrázky, jako jsou JPEG, PNG, BMP, EMF, nebo WMF, stejně jako vícestránkové obrázky, jako jsou TIFF a GIF, do PDF.

Následující příklad kódu ukazuje, jak převést JPEG a TIFF obrázky do PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Aby tento kód fungoval, musíte přidat odkazy na Aspose.Words, Java.awt.image, a javax. balíčky třídy imageio do vašeho projektu.

## Snížit PDF Velikost výstupu

Při ukládání do PDF můžete určit, zda chcete optimalizovat výstup. K tomu je třeba nastavit [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) vlajka true, a pak budou odstraněna přebytečná hnízditá plátna a prázdné plátna, sousede. glyphse stejným formátováním bude konkatenován.

Následující příklad kódu ukazuje, jak optimalizovat výstup:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Použití **OptimizeOutput** vlastnost může ovlivnit přesnost zobrazení obsahu.

{{% /alert %}}

## Viz také

- Ten článek. [Renderování](/words/cs/java/rendering/) pro více informací o formátech pevných stránek a průtoků
- Ten článek. [Převod na stránky](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pro více informací o rozložení stránky
- Ten článek. [Upřesnit možnosti denderování při převodu do PDF](/words/cs/java/specify-rendering-options-when-converting-to-pdf/) pro více informací o použití `PdfSaveOptions` třída
