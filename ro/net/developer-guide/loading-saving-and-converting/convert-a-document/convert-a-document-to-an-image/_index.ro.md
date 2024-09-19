---
title: Converti un document într-o imagine în C#
second_title: Aspose.Words pentru .NET
articleTitle: Converteşte un document într-o imagine
linktitle: Converteşte un document într-o imagine
type: docs
description: "Converteste un document într-un format imagine (JPG, PNG, etc.). Creați o previzualizare de document sau creați un scan pentru a trimite o factură folosind C#."
weight: 43
url: /ro/net/convert-a-document-to-an-image/
---

Uneori este necesar să se obțină o imagine în loc de documente în alte formate, cum ar fi DOCX sau PDF. De exemplu, trebuie să adaugi o previzualizare a oricărei pagini de document pe site-ul tău sau aplicația ta, sau creezi o "scanare" a unui document pentru a trimite o factură. Aceasta este momentul în care ai putea avea nevoie să converteşti un document în orice [supported load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) într-o imagine, din nou, în orice [supported save format](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Converteste în imagine {#convert-to-image-format}

Ca și în toate exemplele de conversie deja descrise, aveți nevoie să creați un nou document sau să încărcați unul existent într-un format acceptat, să faceți modificările necesare și să îl salvați într-unul din orice format de imagine disponibil, de exemplu JPEG, PNG sau BMP.

Exemplul următor de cod arată cum să convertesti PDF în JPEG:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "pdf-to-jpeg.cs" >}}

## Specificaţi Opţiunile de Salvare atunci când convertiţi la Imagine {#specify-save-options-when-converting-to-an-image}

Aspose.Words vă oferă clasa [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), care vă oferă un control mai mare asupra modului în care documentele sunt salvate în diferite formate de imagini. Unele proprietăți ale acestei clase moștenesc sau suprascrie proprietățile claselor de bază, precum [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) și [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), dar există și opțiuni specifice pentru salvarea imaginilor.

Este posibil să se specifice paginile care urmează să fie convertite în format imagine folosind proprietatea [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). De exemplu, se poate aplica dacă aveți nevoie doar de o previzualizare pentru prima sau pentru o pagină definită.

Este posibil de asemenea să controlezi calitatea imaginii și formatul pixelului folosind următoarele proprietăți – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), precum și setarea setărilor culorii imaginii, folosind următoarele proprietăți – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Există și proprietăți care se aplică unui anumit format, de exemplu, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) sau [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Următorul exemplu de cod prezintă modul în care se creează o previzualizare a primei pagini din document, aplicând câteva setări suplimentare:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
