---
title: Licentie en Abonnement
second_title: Aspose.Words voor C++
articleTitle: Licentie en Abonnement
linktitle: Licentie en Abonnement
description: "Aspose.Words Voor С++ biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een tijdelijke licentie van 30 dagen voor evaluatie met behulp van licentie-en Abonnementsbeleid."
type: docs
weight: 60
url: /nl/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Soms, om het systeem beter te bestuderen, wil je zo snel mogelijk in de code duiken. Om dit gemakkelijker te maken, biedt Aspose.Words verschillende plannen voor aankoop of biedt een gratis proefperiode en een tijdelijke licentie van 30 dagen voor evaluatie.

{{% alert color="primary" %}}

Houd er rekening mee dat er een aantal algemene beleidsregels en praktijken zijn die u begeleiden bij het evalueren, correct licentiëren en kopen van onze producten. Je kunt ze vinden in de [Aankoopbeleid en FAQ](https://purchase.aspose.com/policies/) sectie.

{{% /alert %}}

## Gratis proefperiode of tijdelijke licentie

Aspose.Words is ongelooflijke software die ontwikkelaars kunnen proberen voordat ze kopen.

### Gratis Proefperiode

De evaluatieversie is hetzelfde als de gekochte versie-de [Proefversie](https://releases.aspose.com/words/) wordt gewoon gelicentieerd wanneer u een paar regels code toevoegt om de licentie toe te passen.

De proefversie van Aspose.Words zonder de opgegeven licentie biedt volledige productfunctionaliteit, maar voegt een evaluatief watermerk toe aan de bovenkant van het document bij het laden en opslaan en beperkt de maximale documentgrootte tot een paar honderd alinea ' s.

### Tijdelijke Licentie

Als u Aspose.Words wilt testen zonder de beperkingen van de proefversie, kunt u ook een tijdelijke licentie van 30 dagen aanvragen. Voor meer details, zie de [Krijg een tijdelijke licentie](https://purchase.aspose.com/temporary-license/) pagina.

## Aangekochte Licentie

Na aankoop moet u het licentiebestand toepassen of het licentiebestand opnemen als ingesloten bron. In dit gedeelte worden opties beschreven hoe dit kan worden gedaan en worden ook enkele veelgestelde vragen besproken.

{{% alert color="primary" %}}

U moet de licentie instellen:

* slechts één keer per aanvraagdomein
* voordat u andere Aspose.Words klassen gebruikt

{{% /alert %}}

{{% alert color="primary" %}}

U kunt prijsinformatie vinden op de [prijsinformatie](https://purchase.aspose.com/pricing/words/family/) pagina.

{{% /alert %}}

### Uw Aangeschafte Licentie Beschermen

Na aankoop van een licentie moet u de informatie op pagina zorgvuldig lezen [Uw Aangeschafte Licentie Beschermen](https://purchase.aspose.com/orders/protecting-your-license-file) om uw licentiebestand te beschermen. Houd er rekening mee dat deze pagina alleen beschikbaar is als u een betaalde licentie hebt.

### Opties Voor Het Toepassen Van Licenties

Licenties kunnen vanaf verschillende locaties worden aangevraagd:

* Expliciet pad
* De map met het `Aspose.Words_\*.dll` bestand
* De map die de assembly bevat die `Aspose.Words_\*.dll`aanriep
* De map met de item assembly (uw `.exe`)
* Een ingesloten bron in de assembly heet `Aspose.Words_\*.dll`

Vaak is de eenvoudigste manier om een licentie in te stellen, het licentiebestand in dezelfde map als `Aspose.Words_\*.dll` te plaatsen en alleen de bestandsnaam op te geven zonder het pad.

{{% alert color="primary" %}}

Gebruik de methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) om een component te licentiëren.

**SetLicense** meerdere keren bellen is niet schadelijk, het verspilt gewoon processortijd.

{{% /alert %}}

#### Licentie toepassen met behulp van een bestand of Stream Object

Wanneer u uw toepassing ontwikkelt, roept u **SetLicense** op in uw opstartcode voordat u Aspose.Words classes gebruikt.

##### Een licentie uit een bestand laden

Met de methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) kunt u proberen het licentiebestand te vinden in de ingesloten bronnen of assemblagemappen voor verder gebruik.

Het volgende codevoorbeeld laat zien hoe u een licentie vanuit een map initialiseert:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Een licentie laden vanaf een Streamobject

Het volgende codevoorbeeld laat zien hoe u een licentie van een stream initialiseert met behulp van een andere [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) - methode:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Het licentiebestand opnemen als ingesloten bron

Een handige manier om een licentie bij uw toepassing te verpakken en ervoor te zorgen dat deze niet verloren gaat, is door deze op te nemen als een ingebedde bron. De manier waarop u resources insluit en gebruikt, is afhankelijk van uw doelplatform.

##### Windows

Laten we aannemen dat u de licentie als bron hebt toegevoegd, zoals hieronder wordt weergegeven.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

U kunt lezen over hoe te werken met resource bestanden op de [Werken met Resource Files](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) pagina.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een licentie initialiseert vanuit een ingesloten bron met behulp van de methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Er is een vergelijkbare manier om bronnen in te sluiten op Linux in een uitvoerbaar bestand.

{{% alert color="primary" %}}

Voor meer informatie, zie [Bronnen insluiten in uitvoerbaar bestand met behulp van GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Het volgende codecodevoorbeeld laat zien hoe u een licentie initialiseert vanuit een ingesloten bron met behulp van de methode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### De naam van het licentiebestand wijzigen

De bestandsnaam van de licentie hoeft niet "Aspose.Words.LIC " te zijn. U kunt de naam naar wens wijzigen en die naam gebruiken bij het instellen van een licentie in uw toepassing.

### Uitzondering" kan licentiebestandsnaam niet vinden"

Wanneer u een licentie koopt en downloadt, noemt de Aspose-website het licentiebestand *"Aspose.Words.LIC"*. U downloadt het licentiebestand via uw browser. In dit geval herkennen sommige browsers het licentiebestand als XML en voegen de .xml-extensie, zodat de volledige bestandsnaam op uw computer *"Aspose.Words.lic.XML"* wordt.

Wanneer Microsoft Windows is geconfigureerd om extensies voor bekende bestandstypen te verbergen (helaas is dit de standaard in de meeste Windows installaties), wordt het licentiebestand weergegeven als *"Aspose.Words. LIC"* in Windows Explorer. Je zult waarschijnlijk denken dat dit de echte bestandsnaam is en **SetLicense** aanroepen door het *"Aspose.Words.LIC"* door te geven, maar er is geen dergelijk bestand, vandaar de uitzondering.

Om het probleem op te lossen, wijzigt u de naam van het bestand om het onzichtbare te verwijderen .xml-extensie. We raden u ook aan om de optie 'Extensies verbergen' uit te schakelen in Microsoft Windows.

## Gebruik Van Meerdere Aspose Producten

Als u meerdere Aspose-producten in uw toepassing gebruikt, zoals Aspose.Words en `Aspose.Cells`, zijn hier een paar nuttige tips:

* Stel de licentie voor elk Aspose-product afzonderlijk in. Zelfs als u één licentiebestand hebt voor alle componenten, bijvoorbeeld "Aspose.Total.lic", moet u **SetLicense** nog steeds afzonderlijk aanroepen voor elk Aspose-product dat u in uw toepassing gebruikt.
* Gebruik de naam van de volledig gekwalificeerde Licentieklasse. Elk Aspose-product heeft een **License** - klasse in zijn eigen naamruimte. Bijvoorbeeld, Aspose.Words heeft [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) en `Aspose.Cells` heeft `Aspose.Cells`.Licentieklasse. Met behulp van de volledig gekwalificeerde klassennaam kunt u verwarring voorkomen over welke licentie van toepassing is op welk product.
