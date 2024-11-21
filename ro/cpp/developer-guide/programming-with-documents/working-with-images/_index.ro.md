---
title: Lucrul cu imagini în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu imagini
linktitle: Lucrul cu imagini
type: docs
description: "Introducere în funcția de imagine, cum să creați și să manipulați imaginea folosind C++."
weight: 300
url: /ro/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite utilizatorilor să lucreze cu imagini într-un mod foarte flexibil. În acest articol, puteți explora doar câteva dintre posibilitățile de lucru cu imagini.

## Cum să extrageți imagini dintr-un Document

Toate imaginile sunt stocate în interiorul **Shape** noduri într-un [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Pentru a extrage din document toate imaginile sau imaginile cu un anumit tip, urmați acești pași:

- Utilizați metoda [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) pentru a selecta toate nodurile **Shape**.
- Iterați prin colecțiile de noduri rezultate.
- Verificați proprietatea booleană [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extrageți datele imaginii folosind proprietatea [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Salvați datele imaginii într-un fișier.

Următorul exemplu de cod arată cum să extrageți imagini dintr-un document și să le salvați ca fișiere:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Salvarea imaginilor ca WMF

Aspose.Words oferă funcționalitate pentru a salva toate imaginile disponibile într - un document [WMF ](https://docs.fileformat.com/image/wmf/)formatați în timp ce convertiți DOCX în RTF.

Următorul exemplu de cod arată cum să salvați imaginile ca WMF cu RTF opțiuni de salvare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
