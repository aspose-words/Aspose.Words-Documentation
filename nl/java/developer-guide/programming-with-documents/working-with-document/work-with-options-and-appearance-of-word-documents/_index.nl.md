---
title: Opties en verschijning van Word-documenten
second_title: Aspose.Words voor Java
articleTitle: Werken met Opties en Uiterlijk van Word-documenten
linktitle: Werken met Opties en Uiterlijk van Word-documenten
description: "Controleer het verschijnen van Word-documenten rekening houdend met het verschil tussen verschillende Microsoft Word versies met Java."
type: docs
weight: 40
url: /nl/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Soms moet je het uiterlijk van een document veranderen, bijvoorbeeld taalvoorkeuren instellen of het aantal regels per pagina.Aspose.Words biedt de mogelijkheid om te controleren hoe het document zal worden weergegeven, evenals een aantal extra opties. Dit artikel beschrijft dergelijke mogelijkheden.

## Documentweergaveopties instellen

U kunt bepalen hoe een document wordt weergegeven in Microsoft Word de [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) Klasse. Bijvoorbeeld, kunt u een document zoom waarde met behulp van de [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) eigenschap, of de weergavemodus met de [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) eigendom.

Het volgende voorbeeld van de code laat zien hoe u ervoor kunt zorgen dat een document wordt weergegeven op 50% wanneer geopend in Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schrijft geen zoomfactor naar een document en stelt de standaard zoom niet meer in vanaf de waarde die naar het document is geschreven, maar lijkt de zoomfactor van het laatst geopende document te gebruiken.

{{% /alert %}}

## Paginaweergaveopties instellen

Als u het aantal tekens per regel wilt instellen, gebruik dan de [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) eigendom. U kunt ook het aantal regels per pagina instellen voor een Word-document. [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) eigenschap om het aantal regels per pagina in het documentraster te krijgen of in te stellen.

{{% alert color="primary" %}}

In Microsoft Word, u kunt dezelfde parameters instellen met behulp van het tabblad "Document Grid" in het dialoogvenster "Page Setup" alleen wanneer Aziatische taalondersteuning is geïnstalleerd.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe het aantal tekens per regel en het aantal regels per pagina voor een Microsoft Word document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Taalvoorkeuren instellen

Een document tonen in Microsoft Word hangt af van welke talen standaard voor dit document zijn ingesteld. Als er geen talen zijn ingesteld, Microsoft Word neemt informatie uit het dialoogvenster "Set Office Language Preferences," dat bijvoorbeeld kan worden gevonden onder "File → Options → Language" in Microsoft Word 2019.

Met Aspose.Words, u kunt ook taalvoorkeuren instellen met behulp van de [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) Klasse. Merk ook op dat voor de juiste weergave van uw document het noodzakelijk is om de Microsoft Word versie dat het laden van het document proces moet overeenkomen met dit kan worden gedaan met de [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) eigendom.

{{% alert color="primary" %}}

Als u Aspose.Words gegenereerd document ziet er niet naar verwachting, controleer de **LanguagePreferences** en **MswVersion** waarden en pas ze indien nodig aan om de instellingen voor uw Microsoft Word versie.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je Japans toevoegt aan het bewerken van talen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Het volgende voorbeeld van code laat zien hoe je het Russisch als de standaard bewerken taal:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimaliseer een Document voor een Bijzonderheden Woordversie

De [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) methode maakt het optimaliseren van document inhoud, evenals standaard Aspose.Words gedrag voor een bepaalde versie van Microsoft Word. U kunt deze methode gebruiken om te voorkomen Microsoft Word vanaf het weergeven van de Merk op dat u mogelijk ook de `Compliance` eigendom aan Iso29500_2008_Overgang of hoger.

Het volgende voorbeeld van code laat zien hoe document inhoud te optimaliseren voor Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
