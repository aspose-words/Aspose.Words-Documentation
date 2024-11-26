---
title: Conversia unui Document într-o imagine
second_title: Aspose.Words pentru Python via .NET
articleTitle: Conversia unui Document într-o imagine
linktitle: Conversia unui Document într-o imagine
type: docs
description: "Convertiți un document în format imagine (JPG, PNG etc.). Creați o previzualizare a documentului sau creați o scanare a documentului pentru a trimite o factură folosind Python."
weight: 43
url: /ro/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să obțineți o imagine în loc de documente în alte formate, cum ar fi DOCX sau PDF. De exemplu, trebuie să adăugați o previzualizare a oricărei pagini de document pe site-ul sau aplicația dvs. sau să creați o "scanare" a unui document pentru a trimite o factură. Acesta este momentul în care poate fi necesar să convertiți un document în orice [supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) într-o imagine, din nou, în orice [supported save format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Conversia în format imagine {#convert-to-image-format}

Ca și în cazul tuturor exemplelor de conversie deja descrise, trebuie să creați un document nou sau să încărcați unul existent în orice format acceptat, să efectuați modificările necesare și să îl salvați în orice format de imagine disponibil, de exemplu, JPEG, PNG sau BMP.

Următorul exemplu de cod arată cum se convertește PDF în JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Specificați opțiunile de salvare la conversia într-o imagine {#specify-save-options-when-converting-to-an-image}

Aspose.Words vă oferă clasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), care oferă mai mult control asupra modului în care documentele sunt salvate în diferite formate de imagine. Unele proprietăți ale acestei clase moștenesc sau supraîncărcă proprietățile claselor de bază, cum ar fi [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) sau [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), dar există și opțiuni specifice salvării imaginilor.

Este posibil să specificați paginile care urmează să fie convertite în format de imagine folosind proprietatea [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). De exemplu, poate fi aplicat dacă aveți nevoie doar de o previzualizare pentru prima sau pentru o pagină definită.

De asemenea, este posibil să controlați calitatea imaginii de ieșire și formatul pixelilor utilizând următoarele proprietăți– [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), de asemenea, configurați setările de culoare a imaginii, utilizând următoarele proprietăți– [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Există, de asemenea, proprietăți care se aplică unui anumit format, de exemplu, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) sau [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Următorul exemplu de cod arată cum să creați o previzualizare a primei pagini de document cu aplicarea unor setări suplimentare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
