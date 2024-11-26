---
title: Werk Met Beelde in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Beelde
linktitle: Werk Met Beelde
type: docs
description: "Inleiding Tot Beeld funksie, hoe om te skep en te manipuleer beeld met behulp van C++."
weight: 300
url: /af/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words laat gebruikers toe om op'n baie buigsame manier met beelde te werk. In hierdie artikel kan jy slegs sommige van die moontlikhede van werk met beelde verken.

## Hoe Om Foto's Uit'n Dokument Te Neem

Alle beelde word gestoor binne **Shape** nodes in a [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Volg hierdie stappe om alle beelde of beelde met'n spesifieke tipe uit die dokument te onttrek:

- Gebruik die [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) metode om alle **Shape** nodes te kies.
- Iterate deur die gevolglike node versamelings.
- Gaan die [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) booleaanse eienskap na.
- Onttrek beelddata met behulp van die [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) eienskap.
- Stoor beelddata na'n lêer.

Die volgende kode voorbeeld toon hoe om beelde uit'n dokument te onttrek en stoor hulle as lêers:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Stoor Beelde as WMF

Aspose.Words bied funksionaliteit om al die beskikbare beelde in'n dokument te stoor [WMF ](https://docs.fileformat.com/image/wmf/)formaat terwyl die omskakeling van DOCX na RTF.

Die volgende kode voorbeeld toon hoe om beelde te stoor as WMF met RTF stoor opsies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
