---
title: Práce s obrázky v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s obrázky
linktitle: Práce s obrázky
type: docs
description: "Úvod do funkce obrazu, jak vytvářet a manipulovat s obrazem pomocí C++."
weight: 300
url: /cs/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umožňuje uživatelům pracovat s obrázky velmi flexibilním způsobem. V tomto článku můžete prozkoumat pouze některé možnosti práce s obrázky.

## Jak extrahovat obrázky z dokumentu

Všechny obrázky jsou uloženy uvnitř **Shape** uzlů v [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Chcete-li z dokumentu extrahovat všechny obrázky nebo obrázky s konkrétním typem, postupujte takto:

- Pomocí metody [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) vyberte všechny uzly **Shape**.
- Iterovat prostřednictvím výsledných kolekcí uzlů.
- Zkontrolujte logickou vlastnost [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extrahujte obrazová data pomocí vlastnosti [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Uložte obrazová data do souboru.

Následující příklad kódu ukazuje, jak extrahovat obrázky z dokumentu a uložit je jako soubory:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Ukládání obrázků jako WMF

Aspose.Words poskytuje funkce pro uložení všech dostupných obrázků v dokumentu do [WMF ](https://docs.fileformat.com/image/wmf/)formátujte při převodu DOCX na RTF.

Následující příklad kódu ukazuje, jak uložit obrázky jako WMF s RTF Možnosti uložení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
