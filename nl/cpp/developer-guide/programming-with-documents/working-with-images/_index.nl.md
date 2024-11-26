---
title: Werken met afbeeldingen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met afbeeldingen
linktitle: Werken met afbeeldingen
type: docs
description: "Inleiding tot de Afbeeldingsfunctie, hoe een afbeelding te maken en te manipuleren met behulp van C++."
weight: 300
url: /nl/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stelt gebruikers in staat om op een zeer flexibele manier met afbeeldingen te werken. In dit artikel kunt u slechts enkele van de mogelijkheden van het werken met afbeeldingen verkennen.

## Hoe afbeeldingen uit een Document te extraheren

Alle afbeeldingen worden opgeslagen in **Shape** knooppunten in een [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Volg deze stappen om alle afbeeldingen of afbeeldingen met een specifiek type uit het document te extraheren:

- Gebruik de methode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) om alle **Shape** knooppunten te selecteren.
- Itereer door de resulterende knoopcollecties.
- Controleer de [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) Booleaanse eigenschap.
- Extraheer afbeeldingsgegevens met de eigenschap [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Sla afbeeldingsgegevens op in een bestand.

Het volgende codevoorbeeld laat zien hoe u afbeeldingen uit een document kunt extraheren en opslaan als bestanden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Afbeeldingen opslaan als WMF

Aspose.Words biedt functionaliteit om alle beschikbare afbeeldingen in een document op te slaan [WMF ](https://docs.fileformat.com/image/wmf/)formatteren tijdens het converteren van DOCX naar RTF.

Het volgende codevoorbeeld laat zien hoe u afbeeldingen kunt opslaan als WMF met RTF opslagopties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
