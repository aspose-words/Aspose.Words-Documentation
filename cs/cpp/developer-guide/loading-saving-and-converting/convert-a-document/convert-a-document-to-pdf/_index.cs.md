---
title: Převod dokumentu na PDF v C++
second_title: Aspose.Words pro C++
articleTitle: Převod dokumentu na PDF
linktitle: Převod dokumentu na PDF
description: "Převeďte dokument na PDF pomocí C++. Podporovány jsou různé vstupní formáty, včetně formátů Word, OpenOffice, Image a eBook."
type: docs
weight: 10
url: /cs/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Schopnost snadno a spolehlivě převádět dokumenty z jednoho formátu do druhého je klíčovou vlastností Aspose.Words. Jedním z nejpopulárnějších formátů pro převod je PDF – formát s pevným rozložením, který zachovává původní vzhled dokumentu během jeho vykreslování na různých platformách. Termín "Vykreslování" se používá v Aspose.Words k popisu procesu převodu dokumentu do formátu souboru, který je stránkovaný nebo má koncept stránek.

## Převod dokumentu Word na PDF {#convert-a-word-document-to-pdf}

Převod z Word na PDF je poměrně složitý proces, který vyžaduje několik fází výpočtu. Aspose.Words layout engine napodobuje způsob, jakým Microsoft Word je page layout engine funguje, takže PDF výstupní dokumenty vypadají co nejblíže tomu, co můžete vidět v Microsoft Word.

Pomocí Aspose.Words můžete programově převést dokument z formátu DOC nebo DOCX do formátu PDF bez použití Microsoft Office. Tento článek vysvětluje, jak provést tuto konverzi.

{{% alert color="primary" %}}

Všimněte si, že počet stránek v dokumentu ovlivňuje dobu převodu.

{{% /alert %}}

### Převod DOCX nebo DOC na PDF {#converting-doc-or-docx-to-pdf}

Převod z formátu dokumentu DOC nebo DOCX do formátu PDF v Aspose.Words je velmi snadný a lze jej provést pouze dvěma řádky kódu, které:

1. Načtěte dokument do objektu [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) pomocí jednoho z jeho konstruktorů zadáním názvu dokumentu s příponou jeho formátu.
1. Vyvolejte jednu z metod [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) na objektu **Document** a zadejte požadovaný výstupní formát jako PDF zadáním názvu souboru s ".PDF" Rozšíření.

Následující příklad kódu ukazuje, jak převést dokument z DOCX na PDF pomocí metody `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Někdy je nutné zadat další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako PDF. Tyto možnosti lze určit pomocí třídy [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), obsahující vlastnosti, které určují, jak bude zobrazen výstup PDF.

Všimněte si, že stejnou technikou můžete převést jakýkoli dokument ve formátu flow-layout do formátu PDF.

{{% /alert %}}

### Převést na různé PDF standardy {#converting-to-various-pdf-standards}

Aspose.Words poskytuje výčet [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) na podporu převodu DOC nebo DOCX do různých standardů formátu PDF (například PDF 1.7, PDF 1.5, atd.).

Následující příklad kódu ukazuje, jak převést dokument na PDF 1.7 Pomocí [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) s dodržením PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Převod obrázků na PDF {#convert-an-image-to-pdf}

Převod na PDF není omezen formáty dokumentů Microsoft Word. Jakýkoli formát podporovaný Aspose.Words, včetně programově vytvořeného, lze také převést na PDF. Můžeme například převést jednostránkové obrázky, například JPEG, PNG, BMP, EMF, nebo WMF, stejně jako vícestránkové obrázky, například TIFF a GIF, až PDF.

Následující příklad kódu ukazuje, jak převést obrázky JPEG a TIFF na PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Aby tento kód fungoval, musíte do svého projektu přidat odkazy na Aspose.Words a `System.Drawing`.

## Vidět

- Článek [Vykreslování](/words/cpp/rendering/) další informace o formátech fixed-page a flow-layout
- Článek [Převod do formátu s pevnou stránkou](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) další informace o rozvržení stránky
- Článek [Zadejte Možnosti Vykreslování při převodu na PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) další informace o použití třídy `PdfSaveOptions`
