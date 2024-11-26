---
title: Lisensie
second_title: Aspose.Words vir Java
articleTitle: Lisensie
linktitle: Lisensie
description: "Lisensiëring Aspose.Words vir Android via Java."
type: docs
weight: 60
url: /af/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Soms, om die stelsel beter te bestudeer, wil jy so vinnig as moontlik in die kode duik. Om dit makliker te maak, bied Aspose.Words verskillende planne vir aankoop of bied'n Gratis Proeflopie en'n 30-Dag Tydelike Lisensie vir evaluering.

{{% alert color="primary" %}}

Let daarop dat daar'n aantal algemene beleide en praktyke is wat u lei oor hoe om ons produkte te evalueer, behoorlik te lisensieer en te koop. Jy kan hulle vind in die [Koopbeleid en FAQ](https://purchase.aspose.com/policies/) afdeling.

{{% /alert %}}

## Gratis Proeflopie Of Tydelike Lisensie

Aspose.Words is ongelooflike sagteware wat ontwikkelaars kan probeer voordat hulle koop. Jy kan maklik aflaai / installeer Aspose.Words vir Java en Aspose.Words vir Android via Java [van die aflaai bladsy](https://releases.aspose.com/words/androidjava/) vir evaluering.

Die evalueringsweergawe is dieselfde as die gekoopte een – die Proefweergawe word eenvoudig gelisensieer wanneer jy'n paar reëls kode byvoeg om die lisensie toe te pas.

{{% alert color="primary" %}}

Hier is meer besonderhede Oor Die Gratis Proeflopie of Tydelike Lisensie vir Aspose.Words vir Android via Java op [Die Lisensie-en Intekeningbladsy](/words/java/licensing/).

{{% /alert %}}

## Gekoopte Lisensie

Na aankoop moet u die lisensie lêer toepas of die lisensie lêer as'n ingebedde hulpbron insluit. Hierdie afdeling beskryf opsies van hoe dit gedoen kan word, en lewer ook kommentaar op sommige algemene vrae.

{{% alert color="primary" %}}

'n lisensie is'n gewone teks XML lêer wat besonderhede bevat soos produknaam, aantal ontwikkelaars wat gelisensieer is, vervaldatum van die intekening, ensovoorts.

Die lêer is digitaal onderteken, dus moenie die lêer verander nie. Selfs onopsetlike toevoeging van'n ekstra lyn breek in die lêer sal dit ongeldig maak.

{{% /alert %}}

{{% alert color="primary" %}}

Jy moet die lisensie stel:

* slegs een keer per aansoek domein
* voordat enige ander Aspose.Words klasse gebruik word

{{% /alert %}}

{{% alert color="primary" %}}

U kan prysinligting vind oor die [Prysinligting](https://purchase.aspose.com/pricing/words/family/) bladsy.

{{% /alert %}}

### Beskerming Van U Gekoopte Lisensie

Nadat u'n lisensie gekoop het, moet u die inligting op die bladsy noukeurig lees [Beskerming Van U Gekoopte Lisensie](https://purchase.aspose.com/orders/protecting-your-license-file) om jou lisensie lêer te beskerm. Neem asseblief kennis dat hierdie bladsy slegs beskikbaar is vir besigtiging as u'n betaalde lisensie het.

### Lisensie Toepassing Opsies

Lisensies kan vanaf verskillende plekke toegepas word:

* Eksplisiete pad
* 'n ingebedde hulpbron
* As'n Gemete Lisensie - 'n nuwe lisensie meganisme

#### Laai Die Lisensie lêer

In Aspose.Words vir Android via Java, kan die lisensie wees [ingebed as'n hulpbron](/words/java/licensing/), of gelaai uit'n stroom:

1. Plaas die lisensie lêer op enige plek op **/mnt/sdcard/**.
1. Skep'n stroom wat verwys na lêer.
1. Gee die stroom (wat die lisensie lêer bevat) in die `SetLicense` metode.

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

Toepassing Van'n Lisensie van'n Ingebedde Hulpbron. Om toegang tot die lisensie as'n hulpbron deur die naam van'n Android pakket lêer:

1. Voeg die lisensie lêer as'n hulpbron by jou aansoek se **res/raw** gids.
   Die lisensie lêer moet sigbaar wees in die **res/raw** gids.
1. Toegang/laai die lisensie van die hulpbron met die volgende kode voorbeeld.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Aansoek Doen Metered Lisensie

Aspose.Words laat ontwikkelaars toe om gemete sleutel toe te pas. Dit is'n nuwe lisensiëringsmeganisme. Die nuwe lisensiëringsmeganisme sal saam met die bestaande lisensiëringsmetode gebruik word. Die kliënte wat op grond van die gebruik van die API funksies gefactureer wil word, kan die metered licensing gebruik.

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

### Verander Die Lisensie Lêernaam

Die lisensie lêer naam hoef nie te wees 'Aspose.Words.Android.Java.die lig. Jy kan dit hernoem na enigiets wat jy wil en gebruik daardie naam wanneer jy `License.SetLicense` bel.

### Uitsondering-Kan nie lisensie lêernaam vind nie

Wanneer jy'n lisensie aflaai wat jy gekoop het, word die lisensie lêer by verstek **Aspose.Words.Android.Java.lic** genoem. Die lisensie lêer word afgelaai deur jou blaaier en sommige blaaiers herken die lisensie lêer as XML en voeg'n .xml uitbreiding na die naam. Die afgelaaide lêer word **Aspose.Words.Android.Java.lic.XML**.

Wanneer Microsoft Windows ingestel is om uitbreidings van bekende lêertipes te verberg (ongelukkig is dit standaard in die meeste Windows installasies), word die lisensie lêer gelys as **Aspose.Words.Android.Java.lic** in Windows Explorer. Dit lyk soos die verwagte lêernaam. As jy `License.SetLicense` bel en 'Aspose.Words slaag.Android.Java.lic', sal jy sien en uitsondering, want daar is nie so'n lêer.

Om die probleem op te los, hernoem die lêer om die onsigbare te verwyder .xml uitbreiding. Ons beveel aan dat u die opsie "versteek uitbreidings" in Microsoft Windows deaktiveer.

## Gebruik Verskeie Aspose Produkte

As jy verskeie Aspose-produkte in'n toepassing gebruik, byvoorbeeld Aspose.Words en `Aspose.Cells`, hier is'n paar nuttige wenke.

- Stel die lisensie vir Elke Aspose-produk afsonderlik in.
  Selfs as jy'n enkele lisensie lêer vir alle komponente, byvoorbeeld 'Aspose.Total.Android.Java.lic', moet jy steeds die `License.SetLicense` metode afsonderlik vir elke Aspose produk noem.
- Gebruik ten volle gekwalifiseerde Lisensie klas naam.
  Elke Aspose produk het'n `License` klas in sy naamruimte. Byvoorbeeld, Aspose.Words het com.aspose.woorde.Lisensie en `Aspose.Cells` het com.aspose.selle.Lisensie klas. Deur die volle gekwalifiseerde klasnaam te gebruik, kan u enige verwarring vermy oor watter lisensie op watter produk toegepas word.
