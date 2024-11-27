---
title: Een Document opslaan in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document opslaan
linktitle: Een Document opslaan
type: docs
description: "Sla een document op in een ondersteunde indeling met C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /nl/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

De meeste taken die u met Aspose.Words moet uitvoeren, zijn het opslaan van een document. Om een document Aspose.Words op te slaan geeft u de [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) methode van de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klasse. Het document kan worden opgeslagen in elke opslagindeling die wordt ondersteund door Aspose.Words. Zie de [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) - opsomming voor de lijst met alle ondersteunde opslagindelingen.

## Opslaan in een bestand {#save-a-document-to-a-file}

Gebruik gewoon de methode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) met een bestandsnaam. Aspose.Words bepaalt de opslagindeling van de bestandsextensie die u opgeeft.

Het volgende codevoorbeeld laat zien hoe u een document in een bestand kunt laden en opslaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Opslaan in een Stream {#save-a-document-to-a-stream}

Geef een streamobject door aan de methode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Het is noodzakelijk om de opslagindeling expliciet op te geven wanneer u opslaat in een stream.

Het volgende codevoorbeeld laat zien hoe u een document in een stream kunt laden en opslaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Opslaan in PCL {#save-a-document-to-pcl}

Aspose.Words ondersteunt het opslaan van een document in PCL (Printer Command Language). Aspose.Words kan documenten opslaan in PCL 6 (PCL 6 Enhanced of PCL XL) formaat. De klasse `PclSaveOptions` kan worden gebruikt om extra opties op te geven bij het opslaan van een document in de indeling PCL.

Het volgende codevoorbeeld laat zien hoe u een document op PCL kunt opslaan met behulp van opties voor Opslaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
