---
title: Licențiere și abonament
second_title: Aspose.Words pentru .NET
articleTitle: Licențiere și abonament
linktitle: Licențiere și abonament
description: "Aspose.Words pentru .NET oferă planuri diferite de achiziție sau oferă un Test Gratuit și o Licență Temporară de 30 de zile pentru evaluare folosind politici de licențiere și abonament în C#."
type: docs
weight: 55
url: /ro/net/licensing/
timestamp: 2024-10-24-11-44-28
---

Uneori, pentru a studia sistemul mai bine, vrei să te scufunzi în cod cât mai repede posibil. Pentru a face acest lucru mai ușor Aspose.Words oferă diferite planuri pentru achiziție sau oferă o încercare gratuită și o licență temporară de 30 de zile pentru evaluare.

{{% alert color="primary" %}}

"Notă că există o serie de politici și practici generale care vă ghidează despre cum să evaluați, să licențiați corespunzător și să achiziționați produsele noastre." Le poţi găsi în secţiunea [Purchase Policies and FAQ](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Testare gratuită sau licență temporară

"Aspose.Words este un software incredibil pe care dezvoltatorii îl pot încerca înainte de achiziție."

### Testare gratuită

Versiunea de evaluare este la fel ca cea achiziționată – [Trial version](https://releases.aspose.com/words/) devine licențiată atunci când adaugi câteva linii de cod pentru a aplica licența.

Versiunea de încercare a produsului Aspose.Words fără licența specificată oferă funcționalitatea completă a produsului, dar inserează un filigran de evaluare în partea de sus a documentului la încărcare și salvare și limitează dimensiunea maximă a documentului la câteva sute de paragrafe.

### Licență temporară

Dacă doriți să testați Aspose.Words fără limitările versiunii de încercare, puteți solicita și o licență temporară valabilă timp de 30 de zile. Pentru mai multe detalii, vezi [Get a Temporary License](https://purchase.aspose.com/temporary-license/) pagina.

## Licență cumpărată

După achiziție trebuie să aplicați fișierul de licență sau să includeți fișierul de licență ca resursă încorporată. Această secțiune descrie opțiuni de cum poate fi realizat acest lucru și comentează și unele întrebări comune.

{{% alert color="primary" %}}

Trebuie să setaţi licenţa:

* doar o singură dată pentru fiecare domeniu de aplicație

* înainte de a folosi orice altă Aspose.Words clase

{{% /alert %}}

{{% alert color="primary" %}}

Puteți găsi informații despre prețuri pe [Pricing Information](https://purchase.aspose.com/pricing/words/family/) pagină.

{{% /alert %}}

### Protecționarea licenței achiziționate

După achiziționarea unei licențe, trebuie să citiți cu atenție informația de pe pagina [Protecting Your Purchased License](https://purchase.aspose.com/orders/protecting-your-license-file) pentru a proteja fișierul tău de licență. Vă rugăm să rețineți că această pagină este disponibilă doar pentru vizualizare dacă aveți o licență plătită.

### Opțiuni de aplicare a licențelor

Licențele pot fi aplicate de la diferite locații:

* cale explicită
-* dosarul ce conține fișierul *Aspose.Words.dll*
* The folder containing the assembly that called *Aspose.Words.dll*
* Folderul care conține asamblarea intrării (al tău *.exe*
* Un resursă încorporată în asamblare este numită *Aspose.Words.dll*
* Ca o licență plătită – un nou mecanism de licențiere

Când vă referiți la *Aspose.Words.dll* în aplicație, biblioteca este copiată în directorul de ieșire (cu excepția cazului în care *Copiați local* în proprietățile pentru această intrare este setată la false). De multe ori, cea mai ușoară modalitate de a seta o licență este să plasezi fișierul de licență în același folder cu *Aspose.Words.dll* și să specifici doar numele fișierului fără calea acestuia.

{{% alert color="primary" %}}

Utilizați metoda [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) pentru licențierea unui component.

Apelarea **SetLicense** de mai multe ori nu e dăunătoare, dar duce doar la risipirea timpului procesorului.

Apelarea [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) de mai multe ori nu este dăunătoare nici ea, dar doar irosește timpul procesorului și poate acumula consum defectuos.

{{% /alert %}}

#### Aplicarea licenței folosind un obiect de fișier sau de flux

Când dezvolți aplicația, apelează **SetLicense** în codul de pornire înainte de a folosi clasele Aspose.Words.

##### Încarcă o licență dintr-un fișier

Folosind metoda [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/), puteți încerca să găsiți fișierul de licență în folderele resurselor sau ale asamblării pentru utilizare ulterioară.

Exemplul de cod următor arată cum să inițializeze o licență dintr-un folder:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Încarcă o licență dintr-un obiect de flux

Exemplul de cod următor arată cum să se inițializeze o licență dintr-un flux folosind o altă metodă [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Include fișierul de licență ca o resursă încorporată

O modalitate simplă de a ambala un licențe cu aplicația și de a se asigura că nu va fi pierdut este să-l includă ca o resursă încorporată într-una din asamblările care apelează Aspose.Words. Pentru a include un fișier ca resursă încorporată, urmați acești pași:

1. În Visual Studio, includeţi fişierul .lic în proiect utilizând meniul "**Fișier | Adăugare element existent.**".
2. Alege fișierul din Solution Explorer și setează "**Construiește Acțiune la Resursa Încorporată** în fereastra Proprietăți".
3. În codul tău, invocă **SetLicense** care transmite doar numele scurt al fișierului resursă.

#### Aplică licență cu taxă

Aspose.Words permite dezvoltatorilor să aplice o cheie măsurată. Aceasta este o nouă mecanism de licențiere.

Mecanismul de licențiere nou va fi utilizat împreună cu metoda existentă de licențiere. Clienții care doresc să fie facturați în funcție de utilizarea API caracteristicile pot utiliza licențierea cu tarifare.

După finalizarea tuturor pașilor necesari pentru obținerea acestui tip de licență, veți primi cheile, nu fișierul de licență. Această cheie cu taxă poate fi aplicată folosind clasa [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) special introdusă pentru acest scop.

Nu apela metoda **SetMeteredKey** frecvent, astfel încât această metodă de licențiere să poată acumula consumul corespunzător și să ne-l raporteze pe noi. Doar instanciaţi biblioteca Aspose.Words, apelaţi **SetMeteredKey** o singură dată, apoi lăsaţi instanţa bibliotecii şi reutilizaţi-o.

Exemplul următor de cod arată cum se setează cheile publice și private limitate:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

De obicei, este suficient să aplici licenţa cu taxă o singură dată la pornirea aplicaţiei. Totuși, dacă mecanismul de licențiere cu tarifare eșuează să comunice cu serverele Aspose timp de 24 de ore, Aspose.Words va ieși din modul licențiat și va comuta în modul de evaluare. Pentru a evita astfel de caz, ar trebui să verificați în mod regulat statutul licenței – dacă Aspose.Words se transformă în modul de evaluare, vă rugăm să aplicați din nou licența plătită.

{{% alert color="primary" %}}

Vă rugăm să rețineți că trebuie să aveți o conexiune la internet stabilă pentru utilizarea corectă a licenței cu taxă, deoarece mecanismul de taxare necesită interacțiunea permanentă cu serviciile noastre pentru calcule corecte. Pentru mai multe detalii, te rog să vezi secțiunea [Metered Licensing FAQ](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Modificarea numelui fișierului de licență

Numele fișierului de licență nu trebuie să fie "Aspose.Words.LIC". Poți să-l redenumești după cum vrei și să folosești acest nume când configurezi o licență în aplicația ta.

### "Nu poate găsi numele fișierului de licență" Excepție

Când achiziționezi și descarci o licență, site-ul Aspose numește fișierul de licență "* Aspose.Words .LIC "* Descărcaţi fişierul de licenţă folosind browserul. În acest caz, unele browsere recunosc fișierul de licență ca fiind XML și îi adaugă extensia .xml, astfel încât numele complet al fișierului pe calculatorul dumneavoastră devine "*Aspose.Words.lic.XML"*.

Când Microsoft Windows este configurat să ascundă extensii pentru tipurile de fișiere cunoscute (din păcate, aceasta este setarea implicită în majoritatea instalațiilor Windows), fișierul de licență va apărea ca "* "Aspose.Words. LIC"* în Windows Explorator. Voi crede probabil că este numele de fișier real și să apelați **SetLicense** trecerii-i * "Aspose.Words ".lic "*", dar nu există un astfel de fișier, deci excepția.

Pentru a rezolva problema redenumiţi fişierul şi eliminaţi extensia .xml invizibilă. Vă recomandăm, de asemenea, să dezactivați opțiunea "ascunde extensii" în Microsoft. Windows

## Utilizarea multipla a produselor Aspose

Dacă folosiți mai multe produse Aspose în aplicația dvs., cum ar fi Aspose.Words și `Aspose.Cells`, iată câteva sfaturi utile:

* Setați licența pentru fiecare produs Aspose separat. Chiar dacă aveți un singur fișier de licență pentru toate componentele, de exemplu, "Aspose.Total.lic", tot trebuie să apelați **SetLicense** separat pentru fiecare produs Aspose pe care îl utilizați în aplicația dvs.
* Folosește numele clasei de licență complet calificat. Fiecare produs Aspose are o **License** clasă în propriul său spațiu de nume. Spre exemplu, Aspose.Words are [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) și `Aspose.Cells` are `Aspose.Cells`.Clasa de licență. Utilizarea numelui de clasă complet calificat vă permite să evitați confuzia cu privire la licența aplicabilă pentru fiecare produs.
