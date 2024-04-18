---
title: Een document afdrukken in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document afdrukken Programmatisch of dialoogvensters gebruiken
linktitle: Een document afdrukken Programmatisch of dialoogvensters gebruiken
description: "Een document afdrukken op een Server het gebruik van de niet-beheerde XpsPrint API of via een geselecteerde printer met instellingen en afdrukvoorbeelddialoogvensters in C#."
type: docs
weight: 55
url: /nl/net/print-a-document-programmatically-or-using-dialogs/
---

Dit artikel beschrijft hoe je een tekstverwerkingsdocument afdrukt van een ASP.NET of Windows Servicetoepassing gebruiken Aspose.Words en de `XpsPrint` API. Het toont ook de methoden voor het afdrukken van een document met Instellingen, Print preview en Print voortgangsdialogen, en legt uit hoe de tijd van de eerste oproep om een document af te drukken te verminderen.

## Een document afdrukken op een Server via de `XpsPrint` API

Deze sectie is bedoeld voor gebruikers die een XPS document naar de niet beheerde XpsPrint API van een .NET toepassing Aspose.Words.

### Beperkingen van het afdrukken van een document in de ASP.NET of Windows Servicetoepassingen

Bij de ontwikkeling van een .NET applicatie die een aantal afgedrukte output produceert, kunt u meestal klassen die in de *System.Drawing.Printing* naamruimte, of Windows Presentation Foundation (WPF) klassen. Indien de aanvraag echter een ASP.NET of Windows Service applicatie, de opties voor afdrukken zijn beperkt, omdat Microsoft ontmoedigt deze aanpak. De .NET Framework Printing klassen worden niet ondersteund door diensten toepassing. Dit omvat ASP pagina's, die over het algemeen draaien in de context van de server service.

De klassen binnen de *System.Drawing.Printing* namespace wordt niet ondersteund voor gebruik binnen een Windows dienst of een ASP.NET toepassing of dienst, en het proberen van hun gebruik kan leiden tot verminderde prestaties van de dienst, run-time uitzonderingen, en andere problemen. Het gebruik van WPF om te bouwen Windows Ook diensten worden niet ondersteund. Aangezien WPF een presentatietechnologie is, Windows service vereist passende machtigingen om visuele handelingen uit te voeren waarbij de gebruiker interactie heeft. Indien de Windows service heeft dergelijke toestemmingen niet, er kunnen onverwachte resultaten zijn.

De Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) object biedt een familie van [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) methoden om documenten af te drukken. Deze methoden maken gebruik van de .NET drukklassen gedefinieerd in de *System.Drawing.Printing* naamruimte. Er zijn veel Aspose.Words klanten die ze succesvol gebruiken voor het afdrukken in hun server-side toepassingen. Niettemin toont dit artikel een alternatieve methode voor het afdrukken die voldoet aan MicrosoftDe aanbevelingen.

### Methoden om een document af te drukken op een Server

De juiste manier om documenten af te drukken volgens Microsoft is door het gebruik van de onbeheerde XpsPrint API. Dit API is beschikbaar op Windows 7, Windows Server 2008 R2, en op Windows Vista verstrekte de Platform Update voor Windows Vista is geïnstalleerd.

Sinds Aspose.Words kan gemakkelijk een document converteren naar <span notrans="<span notrans=" XPS"=""></span>,"> u hoeft alleen de code die een XPS document aan de `XpsPrint` API. Het enige probleem is dat de `XpsPrint` API is niet beheerd en vereist enige kennis van de Platform Invoce technologie.

Om een document af te drukken, Aspose.Words levert een **XpsPrintHelper** klasse bevat een eenvoudige afdrukmethode, waarbij u alleen de volgende parameters hoeft op te geven (zie meer details in het artikel [Document afdrukken via XPS API](/words/net/missing-features-in-openxml/)):

- Document dat je wilt afdrukken.
- Printernaam.
- Functienaam (facultatief).
- Booleaanse waarde, specificeren of het programma moet wachten tot de afdruktaak is voltooid. Daarom zal het systeem ofwel controleren of het document succesvol is afgedrukt, ofwel onmiddellijk na het versturen van de afdruktaak terugkeren. In het laatste geval is het onmogelijk vast te stellen of de afdruktaak succesvol was.

Bij problemen met het indienen of afdrukken van het document, zal de methode een uitzondering.

Het onderstaande voorbeeld toont hoe een document af te drukken met behulp van de **XpsPrintHelper** klasse:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Wanneer u het project uitvoert, drukt het een voorbeelddocument af op de opgegeven printer en opent het een consolevenster om afdrukresultaten weer te geven. Wanneer de afdruktaak is voltooid of fouten zijn gemaakt, zal het systeem een succesbericht of tekst van de gegooide uitzondering tonen.

U kunt ook enkele afdrukinstellingen instellen met de [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) Klasse. Bijvoorbeeld in Microsoft Word, printer trays zijn gedefinieerd voor elke sectie en zijn printer-specifiek. Daarom kunt u deze waarden voor elke sectie programmatisch wijzigen via de [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) en [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) eigenschappen.

{{% alert color="primary" %}}

In sommige gevallen kunt u dit monster gebruiken zonder Aspose.Words. Bijvoorbeeld, wanneer u al een XPS documenteren en gewoon willen afdrukken van een ASP.NET of Windows Dienstaanvraag. Dan kunt u gewoon verwijderen de `Print` methode.

{{% /alert %}}

Er zijn twee overbelastingen van de **XpsPrintHelper**.**Print** methode. De eerste overbelasting neemt een [Document](https://reference.aspose.com/words/net/aspose.words/document/) object en slaat het op in een `MemoryStream` in de XPS formaat. De tweede overbelasting accepteert een `Stream` object. De stroom moet een document bevatten in de XPS formaat.

U kunt downloaden van de voorbeelden van methode overbelasting van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Een document afdrukken met instellingen en afdrukvoorbeelddialoogvensters

Bij het werken met documenten is het vaak nodig om ze af te drukken naar een geselecteerde printer. Het is handig om een afdrukvoorbeelddialoog te gebruiken om visueel te inspecteren hoe het afgedrukte document zal verschijnen en relevante afdrukopties te kiezen.

De Aspose.Words heeft geen ingebouwde dialoogvensters of formulieren, maar implementeert de [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) klasse, gebaseerd op de .NET **PrintDocument** Klasse. Een instantie van deze klasse kan worden doorgegeven aan de **PrintPreviewDialog** vorm om het document te bekijken en af te drukken. Ook de [Afdrukvoorbeelddialoog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) klasse definieert de uitvoer om naar een printer te verzenden.

Het volgende voorbeeld toont hoe je deze klassen kunt gebruiken om een document af te drukken van Aspose.Words via de Afdrukvoorbeelden en Instellingen dialoogvensters:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

De **AllowSomePages** eigenschap stelt u in staat om een reeks pagina's te selecteren voor afdrukken als de waarde van deze eigenschap waar is. Standaard worden alle pagina's in het bereik geselecteerd voor afdrukken.

{{% /alert %}}

Om het uiterlijk van Afdrukvoorbeeld dialoog instellingen te optimaliseren, geef eigenschappen van de **PrintPreviewDialog** Klasse.

## Meerdere pagina's op één blad afdrukken

Het is altijd nuttig om meer flexibiliteit te hebben bij het afdrukken van documenten. Gebruik .NET en Aspose.Words U kunt de afdrukbewerking eenvoudig afstellen om uw aangepaste logica te implementeren door de manier waarop het document zal verschijnen op de afgedrukte pagina te definiëren.

Zoals in de vorige afdeling, Aspose.Words de **MultipagePrintDocument** klasse, die gebaseerd is op de .NET **PrintDocument** Klasse. Dit betekent dat de bestaande .NET De afdrukinfrastructuur kan zodanig worden gebruikt dat de afdruk- en afdrukvoorbeelddialoogën het mogelijk maken het document te visualiseren voordat het wordt afgedrukt. De **MultipagePrintDocument** klasse biedt de mogelijkheid om meerdere pagina's af te drukken op één blad papier.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Het resultaat van deze code is hieronder weergegeven:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Het dialoogvenster Afdrukvoortgang verbergen bij het afdrukken van een document

Het dialoogvenster Afdrukvoortgang verschijnt niet bij het afdrukken van een document via de [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) methode. Dit dialoogvenster verschijnt echter tijdens het afdrukken met een andere [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) methode. Om te voorkomen dat het afdrukvenster verschijnt, dient u in dit geval geldige printerinstellingen en een standaard afdrukcontroller op te geven, zoals in het voorbeeld hieronder is aangegeven:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Hoe de tijd van de eerste oproep om een document af te drukken te verkorten

Aspose.Words leest en caches enkele velden van **PrinterSettings** om de druktijd te verminderen. U kunt dit bereiken door de [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) methode. Deze methode wordt aangeroepen voordat de afdruk begint als deze niet eerder is uitgevoerd. Merk op dat de totale tijd van het afdrukken met en zonder bellen van deze methode is bijna hetzelfde. Het doel van deze methode is om de tijd van de eerste oproep van de [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) methode. Het volgende voorbeeld van code laat zien hoe deze methode te gebruiken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Zie ook

- [Platform bijwerken voor Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
