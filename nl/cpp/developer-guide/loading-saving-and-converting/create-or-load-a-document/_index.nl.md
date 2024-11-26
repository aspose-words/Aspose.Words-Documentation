---
title: Een Document maken of laden in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document maken of Laden
linktitle: Een Document maken of Laden
type: docs
description: "Maak een leeg document aan of laad het vanuit een bestand of stream met C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /nl/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Bijna elke taak die u met Aspose.Words wilt uitvoeren, omvat het laden van een document. De klasse `Document` vertegenwoordigt een document dat in het geheugen is geladen. Het document heeft verschillende overbelaste constructors waarmee u een leeg document kunt maken of het vanuit een bestand of stream kunt laden. Het document kan worden geladen in elke laadindeling die wordt ondersteund door Aspose.Words. Zie de [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) - opsomming voor de lijst met alle ondersteunde belastingindelingen.

## Een nieuw Document {#create-a-new-document}maken

We zullen de [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) constructor zonder parameters aanroepen om een nieuw leeg document te maken. Als u een document programmatisch wilt genereren, is de eenvoudigste manier om de [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) - klasse te gebruiken om documentinhoud toe te voegen.

Het volgende codevoorbeeld laat zien hoe u een document maakt met de Document builder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Noteer de standaardwaarden:

- Een leeg document bevat één sectie met standaardparameters, één lege alinea en enkele documentstijlen. Eigenlijk is dit document hetzelfde als het resultaat van het maken van het" nieuwe document " in Microsoft Word.
- Het papierformaat van het document is [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Een Document laden

Als u een bestaand document in een van de `LoadFormat` - indelingen wilt laden, geeft u de bestandsnaam of de stream door aan een van de documentconstructors. Het formaat van het geladen document wordt automatisch bepaald door de extensie.

### Laden vanuit een bestand {#load-from-a-file}

Geef een bestandsnaam door als een tekenreeks aan de documentconstructor om een bestaand document vanuit een bestand te openen.

Het volgende codevoorbeeld laat zien hoe u een document vanuit een bestand kunt openen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Laden van een Stream {#load-from-a-stream}

Als u een document vanuit een stream wilt openen, geeft u eenvoudig een streamobject dat het document bevat door in de documentconstructor.

Het volgende codevoorbeeld laat zien hoe u een document vanuit een stream opent:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
