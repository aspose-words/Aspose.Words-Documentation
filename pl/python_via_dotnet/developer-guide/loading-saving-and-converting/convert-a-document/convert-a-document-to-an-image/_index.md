---
title: Konwertuj dokument na obraz
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj dokument na obraz
linktitle: Konwertuj dokument na obraz
type: docs
description: "Konwertuj dokument na format obrazu (JPG, PNG itp.). Utwórz podgląd dokumentu lub utwórz skan dokumentu, aby wysłać fakturę za pomocą Python."
weight: 43
url: /pl/python-net/convert-a-document-to-an-image/
---

Czasami zamiast dokumentów w innych formatach, takich jak DOCX lub PDF, wymagane jest uzyskanie obrazu. Na przykład musisz dodać podgląd dowolnej strony dokumentu do swojej witryny lub aplikacji lub utworzyć "skan" dokumentu, aby wysłać fakturę. W takiej sytuacji może zaistnieć potrzeba przekonwertowania dokumentu w dowolnym formacie [obsługiwany format ładowania](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) na obraz w dowolnym formacie [obsługiwany format zapisu](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Konwertuj do formatu obrazu {#convert-to-image-format}

Podobnie jak w przypadku wszystkich opisanych już przykładów konwersji, należy utworzyć nowy dokument lub załadować istniejący w dowolnym obsługiwanym formacie, wprowadzić niezbędne zmiany i zapisać go w dowolnym dostępnym formacie obrazu, na przykład JPEG, PNG lub BMP.

Poniższy przykład kodu pokazuje, jak przekonwertować plik PDF na JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Określ opcje zapisu podczas konwersji na obraz {#specify-save-options-when-converting-to-an-image}

Aspose.Words udostępnia klasę [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), która daje większą kontrolę nad sposobem zapisywania dokumentów w różnych formatach obrazu. Niektóre właściwości tej klasy dziedziczą lub przeciążają właściwości klas podstawowych, takich jak [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) lub [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), ale istnieją również opcje specyficzne dla zapisywania obrazów.

Istnieje możliwość określenia stron, które mają zostać skonwertowane do formatu obrazu za pomocą właściwości [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Można go zastosować np. jeśli potrzebny jest podgląd tylko pierwszej lub określonej strony.

Można także kontrolować jakość obrazu wyjściowego i format pikseli za pomocą właściwości – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), a także konfigurować ustawienia kolorów obrazu za pomocą właściwości – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Istnieją również właściwości, które mają zastosowanie do określonego formatu, na przykład [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) lub [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Poniższy przykład kodu pokazuje, jak utworzyć podgląd pierwszej strony dokumentu z zastosowaniem dodatkowych ustawień:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
