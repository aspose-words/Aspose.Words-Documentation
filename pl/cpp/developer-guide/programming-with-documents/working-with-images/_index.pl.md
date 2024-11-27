---
title: Praca z obrazami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z obrazami
linktitle: Praca z obrazami
type: docs
description: "Wprowadzenie do funkcji obrazu, jak tworzyć i manipulować obrazem za pomocą C++."
weight: 300
url: /pl/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia użytkownikom pracę z obrazami w bardzo elastyczny sposób. W tym artykule możesz zbadać tylko niektóre możliwości pracy z obrazami.

## Jak wyodrębnić obrazy z dokumentu

Wszystkie obrazy są przechowywane wewnątrz **Shape** węzłów w [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Aby wyodrębnić z dokumentu Wszystkie obrazy lub obrazy o określonym typie, wykonaj następujące kroki:

- Użyj metody [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/), aby zaznaczyć wszystkie węzły **Shape**.
- Iteruj przez wynikowe Kolekcje węzłów.
- Sprawdź Właściwość [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) boolean.
- Wyodrębnij dane obrazu za pomocą właściwości [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Zapisz dane obrazu w pliku.

Poniższy przykład kodu pokazuje, jak wyodrębnić obrazy z dokumentu i zapisać je jako pliki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Zapisywanie obrazów jako WMF

Aspose.Words zapewnia funkcjonalność, aby zapisać wszystkie dostępne obrazy w dokumencie do [WMF ](https://docs.fileformat.com/image/wmf/)Formatuj podczas konwersji DOCX na RTF.

Poniższy przykład kodu pokazuje, jak zapisywać obrazy jako WMF z opcjami zapisu RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
