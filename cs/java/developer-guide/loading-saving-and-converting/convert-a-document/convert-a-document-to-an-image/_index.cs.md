---
title: Převést dokument na obrázek v Java
second_title: Aspose.Words místo Java
articleTitle: Převést dokument na obrázek
linktitle: Převést dokument na obrázek
type: docs
description: "Převést dokument do formátu obrázku (JPG, PNG, atd.). Vytvořit náhled dokumentu nebo vytvořit sken dokumentu pro zaslání faktury pomocí Java."
weight: 35
url: /cs/java/convert-a-document-to-an-image/
---

Někdy je třeba získat obraz místo dokumentů v jiných formátech, jako je DOCX nebo PDF. Například je třeba přidat náhled jakékoliv stránky dokumentu na vaše webové stránky nebo aplikaci nebo vytvořit "scan" dokumentu pro zaslání faktury. To je, kdy můžete potřebovat převést dokument v každém [podporovaný formát zakázaní](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) k obrazu, opět, v každém [podporovaný formalář zařazení](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Převést na formát obrázku

Stejně jako u všech již popsaných příkladů konverze je třeba vytvořit nový dokument nebo načíst existující dokument v jakémkoliv podporovaném formátu, provést nezbytné změny a uložit jej do jakéhokoliv dostupného formátu obrázku, například JPEG, PNG nebo BMP.

Následující příklad kódu ukazuje, jak převést DOCX na JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Upřesnit možnost uložení při převodu na obrázek

Aspose.Words poskytuje vám [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) třída, která dává větší kontrolu nad tím, jak jsou dokumenty uloženy v různých formátech obrázků. Některé vlastnosti této třídy zdědí nebo přetížení vlastnosti základních tříd, jako je [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) nebo [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ale existují také možnosti specifické pro ukládání obrázků.

Je možné určit stránky, které mají být převedeny do formátu obrázku pomocí [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) majetek. Může se například použít, pokud potřebujete náhled na první nebo konkrétní stránku.

Je také možné ovládat kvalitu výstupního obrazu a formát pixelů pomocí následujících vlastností: [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), stejně jako nastavení barvy obrazu, s použitím následujících vlastností: [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Existují také vlastnosti, které platí pro určitý formát, například, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) nebo [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Následující příklad kódu ukazuje, jak vytvořit náhled první stránky dokumentu s použitím některých dalších nastavení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
