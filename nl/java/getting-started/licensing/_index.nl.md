---
title: Licentie en abonnement
second_title: Aspose.Words voor Java
articleTitle: Licentie en abonnement
linktitle: Licentie en abonnement
description: "Aspose.Words voor Java biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een 30-daagse tijdelijke licentie voor evaluatie met behulp van licentie- en abonnementsbeleid."
type: docs
weight: 60
url: /nl/java/licensing/
---

Soms, om het systeem beter te bestuderen, wil je zo snel mogelijk in de code duiken. Om dit makkelijker te maken, Aspose.Words biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een 30-daagse tijdelijke licentie voor evaluatie.

{{% alert color="primary" %}}

Merk op dat er een aantal algemene beleidsmaatregelen en praktijken die u begeleiden over hoe te evalueren, correct licentie, en de aankoop van onze producten. U kunt ze vinden in de [Koopbeleid en veelgestelde vragen](https://purchase.aspose.com/policies/) Section.

{{% /alert %}}

## Gratis proef of tijdelijke licentie

Aspose.Words is ongelooflijke software die ontwikkelaars kunnen proberen voor de aankoop. U kunt eenvoudig downloaden/installeren Aspose.Words voor Java en Aspose.Words voor Android via Java [bestelwagen Maven](https://releases.aspose.com/words/java/) voor evaluatie.

### Gratis proef

De evaluatie versie is dezelfde als de aangeschafte versie van de Trial wordt gewoon gelicentieerd wanneer u een paar regels code toe te passen van de licentie.

De proefversie van Aspose.Words voor Java en Aspose.Words voor Android via Java zonder de opgegeven licentie biedt volledige productfunctionaliteit, maar voegt een evaluerend watermerk bovenaan het document bij het laden en opslaan en beperkt de maximale documentgrootte tot een paar honderd alinea's.

### Tijdelijke licentie

Als u wilt testen Aspose.Words voor Java en Aspose.Words voor Android via Java Zonder de beperkingen van de Trial versie, kunt u ook een 30-dagen tijdelijke licentie. Voor meer details, zie de [Een tijdelijke licentie verkrijgbaar](https://purchase.aspose.com/temporary-license/) blz.

## Aangekochte licentie

Na aankoop moet u het licentiebestand toepassen of het licentiebestand opnemen als een embedded resource. In dit deel worden de mogelijkheden beschreven van hoe dit kan worden gedaan, en worden ook opmerkingen gemaakt over enkele algemene vragen.

{{% alert color="primary" %}}

Een licentie is een platte tekst XML bestand dat details zoals productnaam, aantal ontwikkelaars gelicentieerd, abonnement vervaldatum, enzovoort bevat.

Het bestand is digitaal ondertekend, dus wijzig het bestand niet. Zelfs onbedoelde toevoeging van een extra regel inbreken in het bestand zal ongeldig maken.

{{% /alert %}}

{{% alert color="primary" %}}

Je moet de licentie instellen:

* slechts eenmaal per toepassingsdomein
* voordat u een andere Aspose.Words klassen

{{% /alert %}}

{{% alert color="primary" %}}

U kunt prijzen informatie over de [Prijsinformatie](https://purchase.aspose.com/pricing/words/family/) blz.

{{% /alert %}}

### Bescherming van uw gekochte licentie

Na aankoop van een licentie moet u de informatie op pagina zorgvuldig lezen [Bescherming van uw gekochte licentie](https://purchase.aspose.com/orders/protecting-your-license-file) om uw licentiebestand te beschermen. Deze pagina is alleen beschikbaar als u een betaalde licentie heeft.

### Licentieopties toepassen

De licenties kunnen vanaf verschillende locaties worden toegepast:

* Expliciet pad
* De map met de *Aspose.Words JAR* bestand
* Een ingebedde bron in de JAR heet *Aspose.Words JAR*
* Als een Metered License een nieuw licentiemechanisme

Vaak is de gemakkelijkste manier om een licentie in te stellen is om het licentiebestand in dezelfde map te plaatsen als *Aspose.Words JAR* en geef alleen de bestandsnaam op zonder het pad.

{{% alert color="primary" %}}

Gebruik de [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) methode om een component te licentieren.

Bellen **SetLicense** Meerdere keren is niet schadelijk, het verspilt gewoon processortijd.

Bellen [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) Meerdere keren is ook niet schadelijk, maar alleen verspilling van de tijd van de processor en kan het verbruik onjuist accumuleren.

{{% /alert %}}

#### Licentie toepassen met een bestand of streamobject

{{% alert color="primary" %}}

Oproep **SetLicense** in uw opstartcode voor gebruik Aspose.Words lessen.

{{% /alert %}}

Bij het ontwikkelen van een klassenbibliotheek kunt u bellen **SetLicense** van de statische constructeur van uw klasse die gebruik maakt Aspose.Words. De statische constructeur zal worden uitgevoerd voordat u uw klasse om ervoor te zorgen dat de Aspose.Words licentie is correct geïnstalleerd.

##### Een licentie uit een bestand laden

Gebruik van de [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) methode, kunt u proberen om het licentiebestand te vinden in de embedded resources of map die de JARs van uw aanvraag voor verder gebruik.

Het volgende voorbeeld van code laat zien hoe je een licentie kunt initialiseren vanuit een map:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Licentie laden van een `Stream` Object

Het volgende voorbeeld van code laat zien hoe je een licentie van een stream met behulp van een andere [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) methode:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Het licentiebestand opnemen als ingebedde bron

Een nette manier om een licentie te verpakken met uw toepassing en ervoor te zorgen dat het niet verloren gaat is om het als een embedded resource op te nemen. U kunt het LIC-bestand eenvoudig kopiëren naar de bronmap van uw project.

Het project herbouwen moet het .lic bestand insluiten in toepassing .jar bestand. Daarna kunt u een licentie aanvragen met de volgende code:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Metered licentie toepassen

Aspose.Words stelt ontwikkelaars in staat om een metersleutel toe te passen. Dit is een nieuw licentiemechanisme.

Het nieuwe vergunningsmechanisme zal samen met de bestaande vergunningsmethode worden gebruikt. De klanten die willen worden gefactureerd op basis van het gebruik van API functies kunnen de Metered Licensing gebruiken.

Na het voltooien van alle nodige stappen om dit type licentie te verkrijgen, ontvangt u de sleutels, niet het licentiebestand. Deze meetsleutel kan worden toegepast met behulp van de [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) klasse speciaal voor dit doel ingevoerd.

Niet bellen **SetMeteredKey** methode vaak, zodat deze licentiemethode correct accumuleert verbruik en rapporteert aan ons. Gewoon instantiate de Aspose.Words bibliotheek, oproep **SetMeteredKey** eenmaal, laat dan de bibliotheek geïnstant en hergebruik het.

Het volgende voorbeeld van code laat zien hoe je gemeterde publieke en private sleutels kunt instellen:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Houd er rekening mee dat u een stabiele internetverbinding moet hebben voor het juiste gebruik van de Metered-licentie, aangezien het Metered-mechanisme de constante interactie met onze diensten vereist voor correcte berekeningen

Voor meer details, zie de [Veelgestelde vragen over stromen](https://purchase.aspose.com/faqs/licensing/metered/) Section.

{{% /alert %}}

### De naam van het licentiebestand wijzigen

De licentiebestandsnaam hoeft niet te zijnAspose.WordsLIC. U kunt het naar uw wens hernoemen en die naam gebruiken bij het instellen van een licentie in uw toepassing.

### "Kan licentiebestandsnaam niet vinden Vrijstelling

Wanneer u een licentie koopt en downloadt, noemt de Aspose website het licentiebestand *"Aspose.WordsLIC*. U downloadt het licentiebestand met uw browser. In dit geval, sommige browsers herkennen het licentiebestand als XML en voeg de .xml extensie om, zodat de volledige bestandsnaam op uw computer wordt *"Aspose.Words.lic.XML"*.

Wanneer Microsoft Windows is geconfigureerd om extensies te verbergen voor bekende bestandstypen (helaas, dit is de standaard in de meeste Windows installaties), zal het licentiebestand verschijnen als *"Aspose.Words. LIC* in Windows Explorer. U zult waarschijnlijk denken dat dit de echte bestandsnaam en aanroep is **SetLicense** passeren *"Aspose.Words.LIC"*, maar er is geen dergelijk bestand, vandaar de uitzondering.

Om het probleem op te lossen, hernoem het bestand om de onzichtbare .xml extensie te verwijderen. We raden u ook aan de optie "verberg extensies" uit te schakelen in Microsoft Windows.

## Meerdere producten gebruiken

Als u meerdere Aspose producten gebruikt in uw toepassing, zoals Aspose.Words en `Aspose.Cells`, Hier zijn een paar nuttige tips:

* Stel de Licentie voor elk Aspose product apart in. Zelfs als je een enkele licentie bestand voor alle componenten, bijvoorbeeld, "Aspose.Total.lic," moet je nog steeds bellen **SetLicense** afzonderlijk voor elk Aspose-product dat u in uw toepassing gebruikt.
* Gebruik de Fullly Qualified License Class Naam. Elk Aspose product heeft een `License` klasse in zijn eigen naamruimte. Bijvoorbeeld, Aspose.Words heeft **com.aspone.words.license** en `Aspose.Cells` heeft com.aspone.cells. Rijbewijs. Met behulp van de volledig gekwalificeerde klassenaam kunt u verwarring vermijden over welke licentie op welk product van toepassing is.
