---
title: Licențiere
second_title: Aspose.Words pentru Java
articleTitle: Licențiere
linktitle: Licențiere
description: "Licențiere Aspose.Words pentru Android prin Java."
type: docs
weight: 60
url: /ro/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Uneori, pentru a studia mai bine sistemul, doriți să vă scufundați în cod cât mai repede posibil. Pentru a face acest lucru mai ușor, Aspose.Words oferă diferite planuri de cumpărare sau oferă o încercare gratuită și o licență temporară de 30 pentru evaluare.

{{% alert color="primary" %}}

Rețineți că există o serie de politici și practici generale care vă ghidează cu privire la modul de evaluare, licențiere corectă și cumpărare a produselor noastre. Le puteți găsi în [Politicile de cumpărare și FAQ](https://purchase.aspose.com/policies/) secțiunea.

{{% /alert %}}

## Încercare gratuită sau licență temporară

Aspose.Words este un software incredibil pe care dezvoltatorii îl pot încerca înainte de a cumpăra. Puteți descărca/instala cu ușurință Aspose.Words pentru Java și Aspose.Words pentru Android prin Java [din pagina de descărcare](https://releases.aspose.com/words/androidjava/) pentru evaluare.

Versiunea de evaluare este aceeași cu cea achiziționată-versiunea de încercare devine pur și simplu licențiată atunci când adăugați câteva linii de cod pentru a aplica licența.

{{% alert color="primary" %}}

Aflați mai multe detalii despre perioada de încercare gratuită sau licența temporară pentru Aspose.Words pentru Android prin Java pe [pagina de licențiere și abonament](/words/java/licensing/).

{{% /alert %}}

## Licență Achiziționată

După cumpărare, trebuie să aplicați fișierul de licență sau să includeți fișierul de licență ca resursă încorporată. Această secțiune descrie opțiunile despre modul în care se poate face acest lucru și, de asemenea, comentează câteva întrebări frecvente.

{{% alert color="primary" %}}

O licență este un fișier text simplu XML care conține detalii precum Numele produsului, numărul de dezvoltatori autorizați, data de expirare a abonamentului și așa mai departe.

Fișierul este semnat digital, deci nu modificați fișierul. Chiar și adăugarea accidentală a unei pauze de linie suplimentare în fișier o va invalida.

{{% /alert %}}

{{% alert color="primary" %}}

Trebuie să setați licența:

* o singură dată pe domeniu de aplicație
* înainte de a utiliza orice alte clase Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puteți găsi informații despre prețuri pe [Informații Despre Prețuri](https://purchase.aspose.com/pricing/words/family/) pagina.

{{% /alert %}}

### Protejarea Licenței Achiziționate

După achiziționarea unei licențe, trebuie să citiți cu atenție informațiile de pe pagina [Protejarea Licenței Achiziționate](https://purchase.aspose.com/orders/protecting-your-license-file) pentru a vă proteja fișierul de licență. Rețineți că această pagină este disponibilă pentru vizualizare numai dacă aveți o licență plătită.

### Opțiuni De Aplicare A Licenței

Licențele pot fi aplicate din diferite locații:

* Calea explicită
* O resursă încorporată
* Ca Licență măsurată - un nou mecanism de licențiere

#### Încărcarea fișierului de licență

În Aspose.Words pentru Android prin Java, licența poate fi [încorporat ca resursă](/words/java/licensing/), sau încărcat dintr-un flux:

1. Puneți fișierul de licență în orice locație pe **/mnt/sdcard/**.
1. Creați un flux care face referire la fișier.
1. Treceți fluxul (care conține fișierul de licență) în metoda `SetLicense`.

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

Aplicarea unei licențe dintr-o resursă încorporată. Pentru a accesa licența ca resursă după nume dintr-un fișier pachet Android:

1. Adăugați fișierul de licență ca resursă în folderul **res/raw** al aplicației dvs.
   Fișierul de licență trebuie să fie vizibil în folderul **res/raw**.
1. Accesați / încărcați licența din resursă cu următorul eșantion de cod.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Aplicați Licența Contorizată

Aspose.Words permite dezvoltatorilor să aplice cheia măsurată. Este un nou mecanism de licențiere. Noul mecanism de acordare a licențelor va fi utilizat împreună cu metoda de acordare a licențelor existentă. Acei clienți care doresc să fie facturați pe baza utilizării caracteristicilor API pot utiliza licențierea măsurată.

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

### Schimbarea numelui fișierului de licență

Numele fișierului de licență nu trebuie să fie ' Aspose.Words.Android.Java.lic'. Puteți să-l redenumiți în orice doriți și să utilizați acel nume atunci când apelați `License.SetLicense`.

### Excepție - nu se poate găsi numele fișierului de licență

Când descărcați o licență pe care ați cumpărat-o, fișierul de licență este denumit implicit **Aspose.Words.Android.Java.lic**. Fișierul de licență este descărcat prin browserul dvs. și unele browsere recunosc fișierul de licență ca XML și adaugă un .extensie xml la nume. Fișierul descărcat devine **Aspose.Words.Android.Java.lic.XML**.

Când Microsoft Windows este configurat pentru a ascunde extensiile tipurilor de fișiere cunoscute (din păcate, acest lucru este implicit în majoritatea instalațiilor Windows), fișierul de licență este listat ca **Aspose.Words.Android.Java.lic** în Windows Explorer. Se pare că numele de fișier așteptat. Dacă sunați `License.SetLicense` și treceți ' Aspose.Words.Android.Java.lic', veți vedea și excepție, deoarece nu există un astfel de fișier.

Pentru a rezolva problema, redenumiți fișierul pentru a elimina invizibilul .extensie xml. Vă recomandăm să dezactivați opțiunea" Ascundeți extensiile " în Microsoft Windows.

## Utilizarea Mai Multor Produse Aspose

Dacă utilizați mai multe produse Aspose într-o aplicație, de exemplu Aspose.Words și `Aspose.Cells`, iată câteva sfaturi utile.

- Setați licența pentru fiecare produs Aspose separat.
  Chiar dacă aveți un singur fișier de licență pentru toate componentele, de exemplu 'Aspose.Total.Android.Java.lic', mai trebuie să apelați metoda `License.SetLicense` separat pentru fiecare produs Aspose.
- Utilizați numele clasei de licență complet calificat.
  Fiecare produs Aspose are o clasă `License` în spațiul său de nume. De exemplu, Aspose.Words are com.aspose.cuvinte.Licență și `Aspose.Cells` are com.aspose.celule.Clasa de licență. Utilizarea numelui clasei fullyqualified vă permite să evitați orice confuzie cu privire la licența aplicată produsului.
