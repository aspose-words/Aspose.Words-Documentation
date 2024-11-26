---
title: Opties en verschijnen Word-document
second_title: Aspose.Words voor .NET
articleTitle: Werken met Opties en Uiterlijk van Word-documenten
linktitle: Werken met Opties en Uiterlijk van Word-documenten
description: "Controleer het uiterlijk van Word-documenten rekening houdend met het verschil tussen verschillende Microsoft Word versies met C#."
type: docs
weight: 40
url: /nl/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Soms moet je het uiterlijk van een document veranderen, bijvoorbeeld taalvoorkeuren instellen of het aantal regels per pagina.Aspose.Words biedt de mogelijkheid om te controleren hoe het document zal worden weergegeven, evenals een aantal extra opties. Dit artikel beschrijft dergelijke mogelijkheden.

## Documentweergaveopties instellen

U kunt bepalen hoe een document wordt weergegeven in Microsoft Word met de [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) Klasse. Bijvoorbeeld, kunt u een document zoom waarde met behulp van de [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) eigenschap, of de weergavemodus met de [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) eigendom.

Het volgende voorbeeld van de code laat zien hoe ervoor te zorgen dat een document wordt weergegeven op 50% wanneer geopend in Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 schrijft geen zoomfactor naar een document en stelt de standaard zoom niet meer in vanaf de waarde die naar het document is geschreven, maar lijkt de zoomfactor van het laatst geopende document te gebruiken.

{{% /alert %}}

## Paginaweergave-opties instellen

Als u het aantal tekens per regel wilt instellen, gebruik dan de [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) eigendom. U kunt ook het aantal regels per pagina voor een Word-document instellen [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) eigenschap om het aantal regels per pagina in het documentraster te krijgen of in te stellen.

{{% alert color="primary" %}}

In Microsoft Word, u kunt dezelfde parameters instellen met behulp van het tabblad "Document Grid" in het dialoogvenster "Page Setup" alleen wanneer Aziatische taalondersteuning is geïnstalleerd.

{{% /alert %}}

Het volgende voorbeeld van code toont hoe u het aantal tekens per regel en het aantal regels per pagina voor een Microsoft Word document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Taalvoorkeuren instellen

Een document tonen in Microsoft Word hangt af van welke talen standaard voor dit document zijn ingesteld. Als er geen talen zijn ingesteld, Microsoft Word neemt informatie uit het dialoogvenster "Set Office Language Preferences" die bijvoorbeeld te vinden is onder "File → Options → Language" in Microsoft Word 2019.

Met Aspose.Words, u kunt ook taalvoorkeuren instellen met behulp van de [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) Klasse. Merk ook op dat voor de juiste weergave van uw document het noodzakelijk is om de Microsoft Word versie dat het laden van het document proces moet overeenkomen met dit kan worden gedaan met de [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) eigendom.

{{% alert color="primary" %}}

Als u Aspose.Words gegenereerd document lijkt niet zoals verwacht, controleer de **LanguagePreferences** en **MswVersion** waarden en indien nodig aanpassen om de instellingen voor uw Microsoft Word versie.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe Japans toe te voegen aan het bewerken van talen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Het volgende voorbeeld van code laat zien hoe je Russisch als de standaard bewerken taal:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimaliseer een Document voor een Bijzonderheden Woordversie

De [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) methode maakt het optimaliseren van documentinhoud, evenals standaard Aspose.Words gedrag voor een bepaalde versie van Microsoft Word. U kunt deze methode gebruiken om te voorkomen Microsoft Word vanaf het weergeven van de Merk op dat u mogelijk ook de `Compliance` eigendom aan Iso29500_2008_Overgang of hoger.

Het volgende voorbeeld van code laat zien hoe document inhoud te optimaliseren voor Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
