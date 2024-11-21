---
title: Licențiere și abonament
second_title: Aspose.Words pentru Java
articleTitle: Licențiere și abonament
linktitle: Licențiere și abonament
description: "Aspose.Words pentru Java oferă diferite planuri de cumpărare sau oferă o încercare gratuită și o licență temporară de 30 de zile pentru evaluare folosind Politici de licențiere și abonament."
type: docs
weight: 60
url: /ro/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Uneori, pentru a studia mai bine sistemul, doriți să vă scufundați în cod cât mai repede posibil. Pentru a face acest lucru mai ușor, Aspose.Words oferă diferite planuri de cumpărare sau oferă o încercare gratuită și o licență temporară de 30 pentru evaluare.

{{% alert color="primary" %}}

Rețineți că există o serie de politici și practici generale care vă ghidează cu privire la modul de evaluare, licențiere corectă și cumpărare a produselor noastre. Le puteți găsi în [Politicile de cumpărare și FAQ](https://purchase.aspose.com/policies/) secțiunea.

{{% /alert %}}

## Încercare gratuită sau licență temporară

Aspose.Words este un software incredibil pe care dezvoltatorii îl pot încerca înainte de a cumpăra. Puteți descărca/instala cu ușurință Aspose.Words pentru Java și Aspose.Words pentru Android prin Java [din Maven](https://releases.aspose.com/words/java/) pentru evaluare.

### Încercare Gratuită

Versiunea de evaluare este aceeași cu cea achiziționată-versiunea de încercare devine pur și simplu licențiată atunci când adăugați câteva linii de cod pentru a aplica licența.

Versiunea de încercare a Aspose.Words pentru Java și Aspose.Words pentru Android prin Java fără licența specificată oferă funcționalitate completă a produsului, dar introduce un filigran evaluativ în partea de sus a documentului la încărcare și salvare și limitează dimensiunea maximă a documentului la câteva sute de paragrafe.

### Licență Temporară

Dacă doriți să testați Aspose.Words pentru Java și Aspose.Words pentru Android prin Java fără limitările versiunii de încercare, puteți solicita, de asemenea, o licență temporară 30-day. Pentru mai multe detalii, consultați [Obțineți o licență temporară](https://purchase.aspose.com/temporary-license/) pagina.

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
* Dosarul care conține fișierul *Aspose.Words JAR*
* O resursă încorporată în JAR se numește *Aspose.Words JAR*
* Ca Licență măsurată - un nou mecanism de licențiere

Adesea, cel mai simplu mod de a seta o licență este să plasați fișierul de licență în același folder ca *Aspose.Words JAR* și să specificați doar numele fișierului fără cale.

{{% alert color="primary" %}}

Utilizați metoda [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) pentru a licenția o componentă.

Apelarea **SetLicense** de mai multe ori nu este dăunătoare, ci doar pierde timpul procesorului.

Apelarea [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) de mai multe ori nu este dăunătoare, ci doar pierde timpul procesorului și poate acumula consumul în mod necorespunzător.

{{% /alert %}}

#### Aplicați licența utilizând un fișier sau un obiect de flux

{{% alert color="primary" %}}

Apelați **SetLicense** în codul de pornire înainte de a utiliza clasele Aspose.Words.

{{% /alert %}}

Când dezvoltați o bibliotecă de clase, puteți apela **SetLicense** de la constructorul static al clasei dvs. care utilizează Aspose.Words. Constructorul static va fi executat înainte de instanțierea clasei dvs. pentru a vă asigura că licența Aspose.Words este instalată corect.

##### Încărcați o licență dintr-un fișier

Folosind metoda [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), puteți încerca să găsiți fișierul de licență în resursele sau folderul încorporat care conțin JARs al aplicației dvs. pentru utilizare ulterioară.

Următorul exemplu de cod arată cum să inițializați o licență dintr-un folder:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Încărcați o licență dintr-un obiect `Stream`

Următorul exemplu de cod arată cum să inițializați o licență dintr-un flux folosind o altă metodă [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream):

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Includeți fișierul de licență ca resursă încorporată

O modalitate elegantă de a împacheta o licență cu aplicația dvs. și de a vă asigura că nu se va pierde este să o includeți ca resursă încorporată. Puteți copia pur și simplu fișierul LIC în folderul de resurse al proiectului dvs.

Reconstruirea proiectului ar trebui să încorporeze .fișier lic în aplicare .dosarul jar. După aceea, puteți solicita o licență folosind următorul cod:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Aplicați Licența Contorizată

Aspose.Words permite dezvoltatorilor să aplice o cheie măsurată. Acesta este un nou mecanism de licențiere.

Noul mecanism de acordare a licențelor va fi utilizat împreună cu metoda de acordare a licențelor existentă. Acei clienți care doresc să fie facturați pe baza utilizării funcțiilor API pot utiliza licențierea măsurată.

După parcurgerea tuturor pașilor necesari pentru obținerea acestui tip de licență, veți primi cheile, nu fișierul de licență. Această cheie măsurată poate fi aplicată folosind clasa [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) introdusă special în acest scop.

Nu apelați frecvent metoda **SetMeteredKey**, astfel încât această metodă de licențiere să acumuleze corect consumul și să ni-l raporteze. Doar instanțiați biblioteca Aspose.Words, sunați **SetMeteredKey** o dată, apoi lăsați biblioteca instanțiată și reutilizați-o.

Următorul exemplu de cod arată cum să setați cheile publice și private măsurate:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Vă rugăm să rețineți că trebuie să aveți o conexiune stabilă la Internet pentru utilizarea corectă a licenței măsurate, deoarece mecanismul măsurat necesită interacțiunea constantă cu serviciile noastre pentru calcule corecte.

Pentru mai multe detalii, consultați [Licențiere Măsurată FAQ](https://purchase.aspose.com/faqs/licensing/metered/) secțiunea.

{{% /alert %}}

### Schimbarea numelui fișierului de licență

Numele fișierului de licență nu trebuie să fie "Aspose.Words.LIC". Puteți să-l redenumiți după bunul plac și să utilizați acel nume atunci când setați o licență în aplicația dvs.

### Excepție" nu se poate găsi numele fișierului de licență"

Când achiziționați și descărcați o licență, site-ul Aspose numește fișierul de licență *"Aspose.Words.LIC"*. Descărcați fișierul de licență utilizând browserul. În acest caz, unele browsere recunosc fișierul de licență ca XML și adaugă .extensie xml la acesta, astfel încât numele complet al fișierului de pe computer devine *"Aspose.Words.lic.XML"*.

Când Microsoft Windows este configurat pentru a ascunde extensiile pentru tipurile de fișiere cunoscute (din păcate, acesta este implicit în majoritatea instalațiilor Windows), fișierul de licență va apărea ca *"Aspose.Words. LIC"* în Windows Explorer. Probabil veți crede că acesta este numele real al fișierului și apelați **SetLicense** trecându-l *"Aspose.Words.LIC"*, dar nu există un astfel de fișier, de unde și excepția.

Pentru a rezolva problema, redenumiți fișierul pentru a elimina invizibilul .extensie xml. De asemenea, vă recomandăm să dezactivați opțiunea "Ascundeți extensiile" în Microsoft Windows.

## Utilizarea Mai Multor Produse Aspose

Dacă utilizați mai multe produse Aspose în aplicația dvs., cum ar fi Aspose.Words și `Aspose.Cells`, iată câteva sfaturi utile:

* Setați Licența pentru fiecare produs Aspose separat. Chiar dacă aveți un singur fișier de licență pentru toate componentele, de exemplu, "Aspose.Total.lic", trebuie totuși să apelați **SetLicense** separat pentru fiecare produs Aspose pe care îl utilizați în aplicația dvs.
* Utilizați numele clasei de licență complet calificat. Fiecare produs Aspose are o clasă `License` în propriul spațiu de nume. De exemplu, Aspose.Words are **com.aspose.words.License** și `Aspose.Cells` are com.aspose.celule.Clasa de licență. Utilizarea numelui clasei complet calificat vă permite să evitați confuzia cu privire la Licența care se aplică produsului.
