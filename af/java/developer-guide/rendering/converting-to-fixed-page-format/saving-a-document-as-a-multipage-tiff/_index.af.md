---
title: Stoor'n Dokument As'n Veelbladsy TIFF in Java
second_title: Aspose.Words vir Java
articleTitle: Stoor'n Dokument as'n Veelbladsy TIFF
linktitle: Stoor'n Dokument as'n Veelbladsy TIFF
description: "Skakel 'n dokument om na 'n rasterprent, wat in die voorbeeld van die TIFF-formaat bespreek word. Om te bepaal hoe TIFF vertoon word, moet jy addisionele opsies spesifiseer: resolusie, aantal bladsye, beeldbinarisering, ens. deur Java te gebruik."
type: docs
weight: 30
url: /af/java/saving-a-document-as-a-multipage-tiff/
---

Wanneer jy met dokumente werk, moet jy dikwels jou dokument omskakel na'n rasterbeeldlêer(s). Dit is veral relevant as u u dokument in'n leesbare en drukbare, maar nie bewerkbare formaat moet aanbied nie. U kan byvoorbeeld'n rasterbeeld van die eerste bladsy van u dokument as'n voorskou gebruik. Hierdie artikel beskryf hoe om'n dokument om te skakel na'n raster beeld met behulp van die voorbeeld van die TIFF formaat – een van die meer gewilde beeld formate.

## Omskakeling DOC Na Multi-Bladsy TIFF

In Aspose.Words kan omskakeling van DOC na TIFF uitgevoer word met een reël kode, deur eenvoudig die "save to" pad en die relevante lêer uitbreiding na die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metode te slaag. Die **Save** metode lei outomaties die `SaveFormat` af van die lêernaam uitbreiding wat in die pad gespesifiseer word. Die volgende voorbeeld toon hoe om'n dokument te omskep in die TIFF formaat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Spesifiseer Addisionele Opsies Wanneer TIFFWeergegee Word

U moet dikwels addisionele opsies spesifiseer, wat die leweringsresultaat beïnvloed. Vir hierdie doel, gebruik die [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die dokument op die beeld vertoon word. U kan die volgende spesifiseer:

- Stoor formaat om die lys beskikbare opsies te bepaal ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolusie ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Aantal bladsye ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Kleur en beligting instellings ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Die metode wat gebruik word om die prent te binariseer ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixel formaat vir gegenereerde beelde ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows meta lêers hantering deur Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Bykomende opsies wat u in die **ImageSaveOptions** - klas kan sien

Die volgende voorbeeld toon hoe om DOC om te skakel na TIFF met gekonfigureerde opsies:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Drempel vir TIFF Binarisasie

'n TIFF beeld kan in 1bpp b/w formaat gestoor word deur die [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) eienskap op Format1bppIndexed pixel formaat tipe te stel, en die [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) eienskap Op Ccitt3 of Ccitt4.

Vir beeldsegmentering gebruik Aspose.Words die eenvoudigste metode - drempels. Hierdie metode omskep'n grysskaal TIFF beeld in'n binêre beeld, met behulp van'n drempelwaarde. Daarom, wanneer'n dokument moet omgeskakel word na die TIFF lêer formaat, is dit moontlik om te kry of stel die drempel vir TIFF binarization via die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) eiendom. Die verstekwaarde vir hierdie eienskap is ingestel op 128, en hoe hoër hierdie waarde, hoe donkerder die beeld.

Die volgende voorbeeld toon hoe om TIFF binarisasie met'n gespesifiseerde drempel uit te voer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Hieronder kan u beelde vergelyk waarop TIFF binarisering teen verskillende drempelwaardes uitgevoer is:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
