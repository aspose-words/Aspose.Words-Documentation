---
title: Licențiere și abonament
second_title: Aspose.Words pentru C++
articleTitle: Licențiere și abonament
linktitle: Licențiere și abonament
description: "Aspose.Words pentru Client oferă diferite planuri de cumpărare sau oferă o perioadă de încercare gratuită și o licență temporară de 30 pentru evaluare utilizând politicile de licențiere și abonament."
type: docs
weight: 60
url: /ro/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Uneori, pentru a studia mai bine sistemul, doriți să vă scufundați în cod cât mai repede posibil. Pentru a face acest lucru mai ușor, Aspose.Words oferă diferite planuri de cumpărare sau oferă o încercare gratuită și o licență temporară de 30 pentru evaluare.

{{% alert color="primary" %}}

Rețineți că există o serie de politici și practici generale care vă ghidează cu privire la modul de evaluare, licențiere corectă și cumpărare a produselor noastre. Le puteți găsi în [Politicile de cumpărare și FAQ](https://purchase.aspose.com/policies/) secțiunea.

{{% /alert %}}

## Încercare gratuită sau licență temporară

Aspose.Words este un software incredibil pe care dezvoltatorii îl pot încerca înainte de a cumpăra.

### Încercare Gratuită

Versiunea de evaluare este aceeași cu cea achiziționată – [Versiune de încercare](https://releases.aspose.com/words/) pur și simplu devine licențiat atunci când adăugați câteva linii de cod pentru a aplica licența.

Versiunea de încercare a Aspose.Words fără licența specificată oferă funcționalitate completă a produsului, dar introduce un filigran evaluativ în partea de sus a documentului la încărcare și salvare și limitează dimensiunea maximă a documentului la câteva sute de paragrafe.

### Licență Temporară

Dacă doriți să testați Aspose.Words fără limitările versiunii de încercare, puteți solicita, de asemenea, o licență temporară de 30 de zile. Pentru mai multe detalii, consultați [Obțineți o licență temporară](https://purchase.aspose.com/temporary-license/) pagina.

## Licență Achiziționată

După cumpărare, trebuie să aplicați fișierul de licență sau să includeți fișierul de licență ca resursă încorporată. Această secțiune descrie opțiunile despre modul în care se poate face acest lucru și, de asemenea, comentează câteva întrebări frecvente.

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
* Dosarul care conține fișierul `Aspose.Words_\*.dll`
* Dosarul care conține ansamblul care a apelat `Aspose.Words_\*.dll`
* Dosarul care conține ansamblul de intrare (`.exe`)
* O resursă încorporată în ansamblu se numește `Aspose.Words_\*.dll`

Adesea, cel mai simplu mod de a seta o licență este să plasați fișierul de licență în același folder ca `Aspose.Words_\*.dll` și să specificați doar numele fișierului fără cale.

{{% alert color="primary" %}}

Utilizați metoda [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) pentru a licenția o componentă.

Apelarea **SetLicense** de mai multe ori nu este dăunătoare, ci doar pierde timpul procesorului.

{{% /alert %}}

#### Aplicați licența utilizând un fișier sau un obiect de flux

Când dezvoltați aplicația, apelați **SetLicense** în codul de pornire înainte de a utiliza clasele Aspose.Words.

##### Încărcați o licență dintr-un fișier

Folosind metoda [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), puteți încerca să găsiți fișierul de licență în resursele încorporate sau folderele de asamblare pentru utilizare ulterioară.

Următorul exemplu de cod arată cum să inițializați o licență dintr-un folder:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Încărcați o licență de la un obiect Stream

Următorul exemplu de cod arată cum să inițializați o licență dintr-un flux folosind o altă metodă [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Includeți fișierul de licență ca resursă încorporată

O modalitate elegantă de a împacheta o licență cu aplicația dvs. și de a vă asigura că nu se va pierde este să o includeți ca resursă încorporată. Modul de încorporare și utilizare a resurselor depinde de platforma dvs. țintă.

##### Windows

Să presupunem că ați adăugat licența ca resursă așa cum se arată mai jos.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Puteți citi despre cum să lucrați cu fișierele de resurse pe [Lucrul cu fișierele de resurse](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) pagina.

{{% /alert %}}

Următorul exemplu de cod arată cum să inițializați o licență dintr-o resursă încorporată folosind metoda [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Există un mod similar de a încorpora resurse pe Linux într-un executabil.

{{% alert color="primary" %}}

Pentru mai multe informații, a se vedea [Încorporarea resurselor în executabil folosind GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Următorul exemplu de cod de cod arată cum să inițializați o licență dintr-o resursă încorporată folosind metoda [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Schimbarea numelui fișierului de licență

Numele fișierului de licență nu trebuie să fie "Aspose.Words.LIC". Puteți să-l redenumiți după bunul plac și să utilizați acel nume atunci când setați o licență în aplicația dvs.

### Excepție" nu se poate găsi numele fișierului de licență"

Când achiziționați și descărcați o licență, site-ul Aspose numește fișierul de licență *"Aspose.Words.LIC"*. Descărcați fișierul de licență utilizând browserul. În acest caz, unele browsere recunosc fișierul de licență ca XML și adaugă .extensie xml la acesta, astfel încât numele complet al fișierului de pe computer devine *"Aspose.Words.lic.XML"*.

Când Microsoft Windows este configurat pentru a ascunde extensiile pentru tipurile de fișiere cunoscute (din păcate, acesta este implicit în majoritatea instalațiilor Windows), fișierul de licență va apărea ca *"Aspose.Words. LIC"* în Windows Explorer. Probabil veți crede că acesta este numele real al fișierului și apelați **SetLicense** trecându-l *"Aspose.Words.LIC"*, dar nu există un astfel de fișier, de unde și excepția.

Pentru a rezolva problema, redenumiți fișierul pentru a elimina invizibilul .extensie xml. De asemenea, vă recomandăm să dezactivați opțiunea "Ascundeți extensiile" în Microsoft Windows.

## Utilizarea Mai Multor Produse Aspose

Dacă utilizați mai multe produse Aspose în aplicația dvs., cum ar fi Aspose.Words și `Aspose.Cells`, iată câteva sfaturi utile:

* Setați Licența pentru fiecare produs Aspose separat. Chiar dacă aveți un singur fișier de licență pentru toate componentele, de exemplu, "Aspose.Total.lic", trebuie totuși să apelați **SetLicense** separat pentru fiecare produs Aspose pe care îl utilizați în aplicația dvs.
* Utilizați numele clasei de licență complet calificat. Fiecare produs Aspose are o clasă **License** în propriul spațiu de nume. De exemplu, Aspose.Words are [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) și `Aspose.Cells` are `Aspose.Cells`.Clasa de licență. Utilizarea numelui clasei complet calificat vă permite să evitați confuzia cu privire la Licența care se aplică produsului.
