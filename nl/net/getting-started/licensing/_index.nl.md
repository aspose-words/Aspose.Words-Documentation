---
title: Licentie en abonnement
second_title: Aspose.Words voor .NET
articleTitle: Licentie en abonnement
linktitle: Licentie en abonnement
description: "Aspose.Words voor .NET biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een 30-daagse tijdelijke licentie voor evaluatie met behulp van licentie- en abonnementsbeleid in C#."
type: docs
weight: 55
url: /nl/net/licensing/
---

Soms, om het systeem beter te bestuderen, wil je zo snel mogelijk in de code duiken. Om dit makkelijker te maken, Aspose.Words biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een 30-daagse tijdelijke licentie voor evaluatie.

{{% alert color="primary" %}}

Merk op dat er een aantal algemene beleidsmaatregelen en praktijken die u begeleiden over hoe te evalueren, correct licentie, en de aankoop van onze producten. U kunt ze vinden in de [Koopbeleid en veelgestelde vragen](https://purchase.aspose.com/policies/) Section.

{{% /alert %}}

## Gratis proef of tijdelijke licentie

Aspose.Words is ongelooflijke software die ontwikkelaars kunnen proberen voor de aankoop.

### Gratis proefperiode

De evaluatie versie is dezelfde als de aangeschafte [Proefversie](https://releases.aspose.com/words/) wordt gewoon gelicentieerd wanneer u een paar regels van code toe te voegen om de licentie toe te passen.

De proefversie van Aspose.Words zonder de opgegeven licentie biedt volledige productfunctionaliteit, maar voegt een evaluerend watermerk aan de bovenkant van het document bij het laden en opslaan en beperkt de maximale documentgrootte tot een paar honderd alinea's.

### Tijdelijke licentie

Als u wilt testen Aspose.Words Zonder de beperkingen van de Trial versie, kunt u ook een 30-daagse tijdelijke licentie aanvragen. Voor meer details, zie de [Een tijdelijke licentie verkrijgen](https://purchase.aspose.com/temporary-license/) blz.

## Aangekochte licentie

Na aankoop moet u het licentiebestand toepassen of het licentiebestand opnemen als een embedded resource. In dit hoofdstuk worden de mogelijkheden beschreven om dit te doen, en wordt ook ingegaan op enkele algemene vragen.

{{% alert color="primary" %}}

Je moet de licentie instellen:

* slechts eenmaal per toepassingsdomein

* voor gebruik van andere Aspose.Words klassen

{{% /alert %}}

{{% alert color="primary" %}}

U kunt prijsinformatie vinden op de [Prijsinformatie](https://purchase.aspose.com/pricing/words/family/) blz.

{{% /alert %}}

### Beschermen van uw gekochte licentie

Na de aankoop van een licentie, moet u zorgvuldig de informatie op pagina [Beschermen van uw gekochte licentie](https://purchase.aspose.com/orders/protecting-your-license-file) om uw licentiebestand te beschermen. Deze pagina is alleen beschikbaar als u een betaalde licentie heeft.

### Licentieopties toepassen

Licentie kan vanaf verschillende locaties worden toegepast:

* Expliciet pad
* De map met de *Aspose.Words.dll* bestand
* De map met de aanroep *Aspose.Words.dll*
* De map met de entry assembly (uw *.exe*)
* Een embedded resource in de assemblage heet *Aspose.Words.dll*
* Als een Metered License een nieuw licentiemechanisme

Wanneer u verwijst *Aspose.Words.dll* in de applicatie wordt de bibliotheek gekopieerd naar uw uitvoermap (tenzij *Copy Local* in de eigenschappen voor dat item is ingesteld op false). Vaak is de gemakkelijkste manier om een licentie in te stellen is om het licentiebestand in dezelfde map te plaatsen als *Aspose.Words.dll* en geef alleen de bestandsnaam op zonder het pad.

{{% alert color="primary" %}}

Gebruik de [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) methode om een component te licentieren.

Bellen **SetLicense** Meerdere keren is niet schadelijk, het verspilt gewoon processortijd.

Bellen [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) Meerdere keren is ook niet schadelijk, maar alleen verspilt processortijd en kan de consumptie onjuist accumuleren.

{{% /alert %}}

#### Licentie toepassen met een bestand of streamobject

Bij het ontwikkelen van uw applicatie, bel **SetLicense** in uw opstartcode voor gebruik Aspose.Words lessen.

##### Een licentie uit een bestand laden

Gebruik van de [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) methode, kunt u proberen om het licentiebestand te vinden in de embedded resources of assemblage mappen voor verder gebruik.

Het volgende voorbeeld van code laat zien hoe je een licentie kunt initialiseren vanuit een map:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Licentie laden uit een Stream-object

Het volgende voorbeeld van code laat zien hoe je een licentie kunt initialiseren vanuit een stream met behulp van een andere [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) methode:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Het licentiebestand opnemen als een ingesloten bron

Een nette manier om een licentie met uw toepassing te verpakken en ervoor te zorgen dat het niet verloren zal gaan is om het op te nemen als een embedded resource in een van de bijeenkomsten die aanroepen Aspose.Words. Volg de volgende stappen om een bestand als embedded resource op te nemen:

1. In Visual Studio, opnemen van het .lic bestand in het project met behulp van de **Bestand: Voeg bestaand item toe.**Menu.
2. Selecteer het bestand in de Solution Explorer en stel in**Bouwen van actie voor ingesloten hulpbron** in het venster Eigenschappen.
3. In uw code, roep **SetLicense** die alleen de korte naam van het resource bestand passeert.

#### Metered licentie toepassen

Aspose.Words stelt ontwikkelaars in staat om een metersleutel toe te passen. Dit is een nieuw vergunningsmechanisme.

Het nieuwe vergunningsmechanisme zal samen met de bestaande vergunningsmethode worden gebruikt. De klanten die willen worden gefactureerd op basis van het gebruik van API functies kunnen de Metered License gebruiken.

Na het voltooien van alle nodige stappen om dit type licentie te verkrijgen, ontvangt u de sleutels, niet het licentiebestand. Deze meetsleutel kan worden toegepast met behulp van de [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) klasse speciaal voor dit doel ingevoerd.

Niet bellen **SetMeteredKey** methode vaak, zodat deze licentiemethode goed accumuleert verbruik en rapporteert aan ons. Instantiëren van de Aspose.Words bibliotheek, oproep **SetMeteredKey** eenmaal, laat dan de bibliotheek geïnstant en hergebruik het.

Het volgende voorbeeld van code laat zien hoe u beperkte publieke en private sleutels kunt instellen:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Normaal gesproken is het genoeg om de gemeten licentie toe te passen zodra de aanvraag start. Als het gemeten licentiemechanisme echter 24 uur niet communiceert met de Aspose-servers, Aspose.Words zal de gelicentieerde modus verlaten en overschakelen naar de evaluatiemodus. Om dergelijke gevallen te voorkomen, moet u regelmatig controleren de licentiestatus Aspose.Words verandert in evaluatiemodus, gelieve de gemeten licentie opnieuw toe te passen.

{{% alert color="primary" %}}

Houd er rekening mee dat u een stabiele internetverbinding moet hebben voor het juiste gebruik van de Metered-licentie, aangezien het Metered-mechanisme de constante interactie met onze diensten vereist voor correcte berekeningen. Voor meer details, zie de [Veelgestelde vragen over vergunningen](https://purchase.aspose.com/faqs/licensing/metered/) Section.

{{% /alert %}}

### De naam van het licentiebestand wijzigen

De licentiebestandsnaam hoeft niet te zijnAspose.WordsLIC. U kunt de naam hernoemen naar uw voorkeur en die naam gebruiken bij het instellen van een licentie in uw toepassing.

### "Kan geen licentiebestandsnaam vinden Vrijstelling

Wanneer u een licentie koopt en downloadt, noemt de Aspose website het licentiebestand *"Aspose.WordsLIC*. U downloadt het licentiebestand met uw browser. In dit geval, sommige browsers herkennen het licentiebestand als XML en voeg de .xml extensie eraan toe, zodat de volledige bestandsnaam op uw computer wordt *"Aspose.Words.lic.XML*.

Wanneer Microsoft Windows is geconfigureerd om extensies te verbergen voor bekende bestandstypen (helaas is dit de standaard in de meeste Windows installaties), het licentiebestand zal verschijnen als *"Aspose.Words. LIC"* in Windows Explorer. U zult waarschijnlijk denken dat dit de echte bestandsnaam en aanroep **SetLicense** passeren *"Aspose.Words.LIC"*, maar er is geen dergelijk bestand, vandaar de uitzondering.

Om het probleem op te lossen, hernoem het bestand om de onzichtbare .xml extensie te verwijderen. We raden je ook aan de optie "verberg extensies" uit te schakelen in Microsoft Windows.

## Meerdere Aspose-producten gebruiken

Als u meerdere Aspose producten gebruikt in uw toepassing, zoals Aspose.Words en `Aspose.Cells`, Hier zijn een paar nuttige tips:

* Stel de licentie voor elk Aspose product afzonderlijk in. Zelfs als je een enkele licentiebestand voor alle componenten, bijvoorbeeld, "Aspose.Total.lic," moet je nog steeds bellen **SetLicense** afzonderlijk voor elk Aspose product dat u gebruikt in uw toepassing.
* Gebruik de Fullly Qualified License Class Naam. Elk Aspose product heeft een **License** klasse in zijn eigen naamruimte. Bijvoorbeeld, Aspose.Words heeft [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) en `Aspose.Cells` heeft `Aspose.Cells`. Rijbewijs. Met behulp van de volledig gekwalificeerde klassenaam kunt u verwarring vermijden over welke licentie op welk product van toepassing is.
