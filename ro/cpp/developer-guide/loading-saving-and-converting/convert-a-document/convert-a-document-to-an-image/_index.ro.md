---
title: Conversia unui Document într-o imagine în C++
second_title: Aspose.Words pentru C++
articleTitle: Conversia unui Document într-o imagine
linktitle: Conversia unui Document într-o imagine
type: docs
description: "Convertiți un document în format imagine (JPG, PNG, etc). Creați o previzualizare a documentului sau creați o scanare a documentului pentru a trimite o factură."
weight: 43
url: /ro/cpp/convert-a-document-to-an-image/
---

Uneori este necesar să obțineți o imagine în loc de documente în alte formate, cum ar fi DOCX sau PDF. De exemplu, trebuie să adăugați o previzualizare a oricărei pagini de document pe site-ul sau aplicația dvs. sau să creați o "scanare" a unui document pentru a trimite o factură. Acesta este momentul în care poate fi necesar să convertiți un document în orice [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) într-o imagine, din nou, în orice [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Convertiți în Format imagine

Ca și în cazul tuturor exemplelor de conversie deja descrise, trebuie să creați un document nou sau să încărcați unul existent în orice format acceptat, să efectuați modificările necesare și să îl salvați în orice format de imagine disponibil, de exemplu, JPEG, PNG sau BMP.

Următorul exemplu de cod arată cum să convertiți DOCX în JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Specificați opțiunile de salvare la conversia într-o imagine

Aspose.Words vă oferă clasa [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), care oferă mai mult control asupra modului în care documentele sunt salvate în diferite formate de imagine. Unele proprietăți ale acestei clase moștenesc sau supraîncărcă proprietățile claselor de bază, cum ar fi [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) sau [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), dar există și opțiuni specifice salvării imaginilor.

Este posibil să specificați paginile care urmează să fie convertite în format de imagine folosind proprietatea [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). De exemplu, poate fi aplicat dacă aveți nevoie doar de o previzualizare pentru prima sau pentru o pagină definită.

De asemenea, este posibil să controlați calitatea imaginii de ieșire și formatul pixelilor utilizând următoarele proprietăți– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), de asemenea, configurați setările de culoare a imaginii, utilizând următoarele proprietăți– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Există, de asemenea, proprietăți care se aplică unui anumit format, de exemplu, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) sau [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Următorul exemplu de cod arată cum să creați o previzualizare a primei pagini de document cu aplicarea unor setări suplimentare:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
