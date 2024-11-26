---
title: Vergunning
second_title: Aspose.Words voor Java
articleTitle: Vergunning
linktitle: Vergunning
description: "Vergunning Aspose.Words voor Android via Java."
type: docs
weight: 60
url: /nl/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Soms, om het systeem beter te bestuderen, wil je zo snel mogelijk in de code duiken. Om dit makkelijker te maken, Aspose.Words biedt verschillende plannen voor aankoop of biedt een gratis proefperiode en een 30-daagse tijdelijke licentie voor evaluatie.

{{% alert color="primary" %}}

Merk op dat er een aantal algemene beleidsmaatregelen en praktijken die u begeleiden over hoe te evalueren, correct licentie, en de aankoop van onze producten. U kunt ze vinden in de [Koopbeleid en veelgestelde vragen](https://purchase.aspose.com/policies/) Section.

{{% /alert %}}

## Gratis proef of tijdelijke licentie

Aspose.Words is ongelooflijke software die ontwikkelaars kunnen proberen voor de aankoop. U kunt eenvoudig downloaden/installeren Aspose.Words voor Java en Aspose.Words voor Android via Java [van de download pagina](https://releases.aspose.com/words/androidjava/) voor evaluatie.

De evaluatie versie is dezelfde als de aangeschafte versie van de Trial wordt gewoon gelicentieerd wanneer u een paar regels code toe te passen van de licentie.

{{% alert color="primary" %}}

Meer informatie over de gratis proef of tijdelijke licentie voor Aspose.Words voor Android via Java op [Licentie en abonnement](/words/nl/java/licensing/).

{{% /alert %}}

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
* Een ingebedde hulpbron
* Als een Metered License een nieuw licentiemechanisme

#### Laden van het licentiebestand

In Aspose.Words voor Android via Java, de licentie kan worden [Licentie en abonnement](/words/nl/java/licensing/), of geladen vanuit een stroom:

1. Plaats het licentiebestand op elke locatie op **/mnt/sdcard/**.
1. Maak een stream aan die verwijst naar het bestand.
1. Geef de stroom (met het licentiebestand) door naar de `SetLicense` methode.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Een licentie toepassen vanuit een Embedded Resource. Om toegang te krijgen tot de licentie als een bron op naam van een Android pakketbestand:

1. Voeg het licentiebestand als hulpbron toe aan uw toepassing **res/raw** map.
   Het licentiebestand moet zichtbaar zijn in de **res/raw** map.
1. Toegang / laden van de licentie uit de bron met de volgende code steekproef.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Metered licentie toepassen

Aspose.Words stelt ontwikkelaars in staat om metersleutel toe te passen. Het is een nieuw licentiemechanisme. Het nieuwe vergunningsmechanisme zal samen met de bestaande vergunningsmethode worden gebruikt. De klanten die willen worden gefactureerd op basis van het gebruik van de API functies kunnen gebruik maken van de gemeten licentie.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### De naam van het licentiebestand wijzigen

De licentiebestandsnaam hoeft niet 'Aspose.Words.Android.Java.lic." Je kunt het hernoemen naar alles wat je wilt en die naam gebruiken bij het bellen `License.SetLicense`.

### Uitzondering - Kan licentiebestandsnaam niet vinden

Wanneer u een licentie die u hebt gekocht downloaden, het licentiebestand wordt genoemd **Aspose.Words.Android.Java.lic** standaard. Het licentiebestand wordt gedownload via uw browser en sommige browsers herkennen het licentiebestand als XML en voegen een .xml-extensie toe aan de naam. Het gedownloade bestand wordt **Aspose.Words.Android.Java.lic.XML**.

Wanneer Microsoft Windows is geconfigureerd om extensies van bekende bestandstypen te verbergen (helaas is dit standaard in de meeste Windows installaties), het licentiebestand wordt vermeld als **Aspose.Words.Android.Java.lic** in Windows Explorer. Het lijkt op de verwachte bestandsnaam. Als je belt `License.SetLicense` en pas 'Aspose.Words.Android.Java.lic', zult u zien en uitzondering omdat er geen dergelijk dossier

Om het probleem op te lossen, hernoem het bestand om de onzichtbare .xml extensie te verwijderen. Wij raden u aan de optie "verberg extensies" uit te schakelen in Microsoft Windows.

## Meerdere producten gebruiken

Als u meerdere Aspose producten gebruikt in een toepassing, bijvoorbeeld Aspose.Words en `Aspose.Cells`, Hier zijn een paar nuttige tips.

- Stel de licentie voor elk Aspose product apart in.
  Zelfs als je een enkel licentiebestand hebt voor alle componenten, bijvoorbeeld 'Aspose. Totaal.Android.Java.lic', je moet nog steeds de `License.SetLicense` methode afzonderlijk voor elk Aspose product.
- Gebruik volledig gekwalificeerde Licentie klasse naam.
  Elk Aspose product heeft een `License` klasse in de naamruimte. Bijvoorbeeld, Aspose.Words heeft com.aspone.words. Licentie en `Aspose.Cells` heeft com.aspone.cells. Rijbewijs. Met behulp van de volledig gekwalificeerde klassenaam kunt u elke verwarring over welke licentie wordt toegepast op welk product voorkomen.
