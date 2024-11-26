---
title: Převést dokument na obrázek
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést dokument na obrázek
linktitle: Převést dokument na obrázek
type: docs
description: "Převést dokument do formátu obrázku (JPG, PNG, atd.). Vytvořit náhled dokumentu nebo vytvořit sken dokumentu pro zaslání faktury pomocí Python."
weight: 43
url: /cs/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Někdy je nutné získat obraz místo dokumentů v jiných formátech, jako je DOCX nebo PDF. Například je třeba přidat náhled jakékoli stránky dokumentu na vaše webové stránky nebo aplikaci, nebo vytvořit "scan" dokumentu pro odeslání faktury. To je, kdy můžete potřebovat převést dokument v každém [podporovaný formát zatížení](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) k obrazu, opět, v každém [podporovaný formát uložení](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Převést na formát obrázku {#convert-to-image-format}

Stejně jako u všech již popsaných příkladů konverze musíte vytvořit nový dokument nebo načíst existující dokument v jakémkoliv podporovaném formátu, provést nezbytné změny a uložit jej do jakéhokoliv dostupného formátu obrázku, například JPEG, PNG nebo BMP.

Následující příklad kódu ukazuje, jak převést PDF na JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Upřesnit možnost uložení při převodu na obrázek {#specify-save-options-when-converting-to-an-image}

Aspose.Words poskytuje vám [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) třída, která dává větší kontrolu nad tím, jak jsou dokumenty uloženy v různých formátech obrázků. Některé vlastnosti této třídy dědí nebo přetížení vlastnosti základních tříd, jako je [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) nebo [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), ale existují také možnosti specifické pro ukládání obrázků.

Je možné určit stránky, které mají být převedeny do formátu obrázku pomocí [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) majetek. Může se například použít, pokud potřebujete náhled na první nebo konkrétní stránku.

Je také možné ovládat kvalitu výstupního obrazu a formát pixelů pomocí následujících vlastností: [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), stejně jako nastavení barvy obrazu s použitím následujících vlastností: [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Existují také vlastnosti, které platí pro určitý formát, například, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) nebo [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Následující příklad kódu ukazuje, jak vytvořit náhled první stránky dokumentu s použitím některých dalších nastavení:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
