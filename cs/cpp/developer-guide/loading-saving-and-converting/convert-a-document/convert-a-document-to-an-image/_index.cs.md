---
title: Převod dokumentu na obrázek v C++
second_title: Aspose.Words pro C++
articleTitle: Převod dokumentu na obrázek
linktitle: Převod dokumentu na obrázek
type: docs
description: "Převeďte dokument do formátu obrázku (JPG, PNG atd.). Vytvořte náhled dokumentu nebo vytvořte skenování dokumentu a odešlete fakturu."
weight: 43
url: /cs/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Někdy je nutné získat obrázek místo dokumentů v jiných formátech, například DOCX nebo PDF. Například musíte na svůj web nebo aplikaci přidat náhled jakékoli stránky dokumentu nebo vytvořit "skenování" dokumentu pro odeslání faktury. To je, když možná budete muset převést dokument v libovolném [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) na obrázek, znovu v libovolném [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Převést do formátu obrázku

Stejně jako u všech již popsaných příkladů převodu musíte vytvořit nový dokument nebo načíst existující v libovolném podporovaném formátu, provést potřebné změny a uložit jej v libovolném dostupném formátu obrázku, například JPEG, PNG nebo BMP.

Následující příklad kódu ukazuje, jak převést DOCX na JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Při převodu na obrázek určete možnosti uložení

Aspose.Words vám poskytuje třídu [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), která poskytuje větší kontrolu nad tím, jak jsou dokumenty ukládány v různých obrazových formátech. Některé vlastnosti této třídy dědí nebo přetěžují vlastnosti základních tříd, například [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) nebo [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), ale existují také možnosti specifické pro ukládání obrázků.

Stránky, které mají být převedeny do formátu obrázku, je možné určit pomocí vlastnosti [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Lze jej například použít, pokud potřebujete pouze náhled pro první nebo pro určitou stránku.

Je také možné ovládat kvalitu výstupního obrazu a formát pixelů pomocí následujících vlastností– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), stejně jako nastavení barev obrazu pomocí následujících vlastností– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Existují také vlastnosti, které se vztahují na určitý formát, například [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) nebo [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Následující příklad kódu ukazuje, jak vytvořit náhled první stránky dokumentu s použitím některých dalších nastavení:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
