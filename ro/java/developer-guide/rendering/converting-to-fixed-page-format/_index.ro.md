---
title: Conversia în format de pagină fixă în Java
second_title: Aspose.Words pentru Java
articleTitle: Conversia în format de pagină fixă
linktitle: Conversia în format de pagină fixă
description: "Aspose.Words pentru Java implementează propriul motor de aspect de pagină care îi permite să producă toate formatele de pagină fixe, cum ar fi PDF, XPS și diferite formate de imagine."
type: docs
weight: 10
url: /ro/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementează propriul motor de aspect al paginii. Înainte de a intra în specificațiile sale, merită să discutați mai întâi documentul la un nivel înalt. Când se gândesc la un document, utilizatorii își imaginează de obicei un număr de foi de hârtie care conțin cuvinte, imagini, tabele și diagrame. Documentele pot fi de diferite tipuri, cum ar fi text, foi de calcul, diapozitive, CAD desene, diagrame și, prin urmare, pot avea aspecte esențial diferite. Majoritatea aplicațiilor permit trimiterea de documente către o imprimantă; acesta este momentul în care un utilizator poate vizualiza de fapt aspectul final al documentului.

## Afișarea unui Document în diverse aplicații

Diverse aplicații de vizualizare sau publicare a documentelor permit utilizatorilor să deschidă (Adobe Acrobat, XPS vizualizator) și, uneori, să editeze (Adobe InDesign) documente de formate specifice. Aceste aplicații produc de obicei așa-numitele documente în format "pagină fixă". Un astfel de format de document descrie exact locul în care conținutul unui document este plasat pe fiecare pagină. În interior, formatul PDF sau XPS conține o descriere a fiecărei pagini, precum și instrucțiuni de desen, specificând aspectul conținutului de pe pagină. Acest lucru este similar cu formatele de imagine, descriind unde conținutul este afișat fie în formă raster, fie în formă vectorială.

În schimb, unele aplicații de editare a textului nu acceptă vizualizarea paginilor unui document. De exemplu, Microsoft Notepad acceptă foarte puține funcții, altele decât simpla afișare, editare și imprimare a textului. Observația importantă aici este că astfel de aplicații nu pot afișa pagini ale documentului și nici nu pot spune unui utilizator câte dintre ele ar fi tipărite, permițând doar vizualizarea conținutului documentului. Documentul poate fi salvat în format text simplu și poate fi deschis de multe alte aplicații. Folosind o aplicație care permite vizualizarea conținutului binar al unui fișier arbitrar, se poate vedea ce este stocat în fișierul document – este doar text simplu, nu există nimic altceva în el.

Aplicațiile de editare a textului puțin mai sofisticate, cum ar fi Microsoft WordPad, salvează documentul în format text îmbogățit (RTF), care acceptă mai multe funcții de formatare, cum ar fi inserarea imaginilor, formatarea caracterelor, marginile paragrafelor și spațierea. Cu toate acestea, formatul RTF conține, de asemenea, numai conținutul documentului, fără informații despre pagini.

Microsoft Word este cea mai avansată aplicație de editare a textului din Windows astăzi. Formatează fișiere în formatul DOCX, care descrie conținutul documentului în mod flexibil și extensiv, permițând utilizatorilor să specifice dimensiunea paginii, orientarea pentru o secțiune de document și, fiind o aplicație WYSIWYG, chiar să afișeze pagini de document pe ecran. Cu toate acestea, nu există încă informații cu privire la modul în care conținutul documentului este afișat pe paginile disponibile în fișierul document. Fișierul document descrie doar conținutul în sine și relația obiectelor documentului între ele, împreună cu unele constrângeri geometrice. Ca rezultat, înainte de a afișa un document, Microsoft Word calculează acea informație în sine. Aici intră în joc un aspect de pagină.

## Ce este un aspect de pagină

Un aspect al paginii documentului este o structură de date, care descrie unde se află un anumit obiect pe pagini pentru toate obiectele documentului. În plus, deoarece obiectele au proprietăți care le afectează aspectul, cum ar fi dimensiunea fontului, umbrirea sau efectele de desen, trebuie să știți nu numai unde se află obiectul, ci și ce zonă (zone) a paginii pe care o ocupă și dacă se va aplica mai multor pagini, astfel încât alte obiecte să nu se suprapună cu aceeași zonă (zone).

Aspose.Words implementează funcționalitatea aspectului paginii intern, permițându-i să producă toate formatele de pagină fixe, cum ar fi PDF, XPS și diferite formate de imagine. Fără aspectul paginii, informațiile stocate în fișierul de document cu pagină fixă nu ar fi disponibile și toate aceste formate nu ar fi acceptate.

Relația dintre un document și un aspect de pagină este destul de simplă. În timp ce un document descrie conținutul, aspectul paginii corespunzător descrie geometria conținutului respectiv. Rețineți că un aspect de pagină nu poate exista fără un document, deoarece nu ar exista conținut pentru calcularea geometriei, dar un document poate exista fără un aspect de pagină. De exemplu, atunci când un document DOCX este convertit într-un document RTF, este de obicei inutil să cunoaștem geometria, deoarece nici un format nu o stochează.

## Crearea unui aspect de pagină

Crearea unui aspect de pagină poate fi o procedură costisitoare, atât din punct de vedere al vitezei, cât și al memoriei. Acest lucru se datorează mai multor motive:

- Documentul poate avea o cantitate mare de conținut, care poate fi necesar să fie afișat pe mii de pagini. Geometria fiecărui obiect de pe fiecare pagină ar trebui descrisă, consumând resurse de memorie.
- Documentul poate avea multe reguli, punând constrângeri asupra geometriei. Se poate petrece un timp de calcul considerabil, asigurându-se că fiecare constrângere este satisfăcută.
- Unele caracteristici ale documentului, de exemplu, câmpul `NUMPAGES`, creează dependențe recursive pentru valorile viitoare ale proprietăților, care nu sunt disponibile la momentul calculului. Acest lucru duce la calcule repetitive și se adaugă în timpul de calcul.

Din motivele menționate mai sus, Aspose.Words va crea un aspect de pagină numai atunci când este necesar. Un motiv tipic pentru aceasta ar fi o cerere de a reda pagini de document sau de a obține o valoare de câmp care depinde de informațiile disponibile în aspectul paginii. Un motiv mai puțin evident ar putea fi exportul unui document în HTML. Chiar dacă HTML nu este un format de pagină fixă și nu descrie geometria obiectelor de conținut, totuși acceptă imagini. Astfel de imagini pot fi sub formă de forme create în Microsoft Word cu un text în interiorul lor. De exemplu, o diagramă cu etichete de axă poate fi exportată în HTML ca imagine, dar înainte de a putea face acest lucru, Aspose.Words trebuie să redea acea imagine și, prin urmare, trebuie să știe unde să afișeze eticheta. A se vedea exemplul grafic de mai jos:

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Proprietăți Non-Geometrice

Pe lângă gestionarea informațiilor geometrice, un aspect al paginii este, de asemenea, responsabil pentru calcularea culorilor și a stilurilor de margine. În Microsoft Word, culoarea textului poate fi specificată ca automată, ceea ce înseamnă că selecția culorii trebuie să se bazeze pe culoarea de umbrire a celulei sau paragrafului sau pe culoarea paginii, unde apare textul.

Aspectul paginii calculează unde va apărea textul și ce conținut va fi redat în spatele acestuia, permițând calculul culorilor. Există și alte calcule specifice efectuate de aspectul paginii. De exemplu, o margine orizontală într-un tabel depinde dacă un rând de tabel este ultimul într-o coloană de text și dacă este rupt între coloane. Dacă un rând este redat ultimul într-o coloană, marginea de jos este utilizată în loc de orizontală.

![non_geometric_properties_aspose-words-java](converting-to-fixed-page-format-2.png)

În Aspose.Words, Un utilizator poate solicita dacă să construiască un nou aspect de pagină sau să actualizeze unul existent. Ambele pot fi efectuate prin metoda [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), furnizată de clasa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Dacă nu există un aspect de pagină, dar este nevoie de acesta (de exemplu, atunci când documentul este exportat într-un format de pagină fixă), Aspose.Words va apela automat această metodă. Cu toate acestea, dacă există deja un aspect de pagină, Aspose.Words îl va folosi pe cel existent, pentru a evita consumul resurselor necesare pentru actualizarea acestuia. În acest caz, utilizatorul trebuie să apeleze metoda `UpdatePageLayout`, pentru a se asigura că aspectul paginii este actualizat cu modelul documentului.

### Structura Dinamică

Procesul de creare a aspectului paginii cuprinde următoarele etape:

- *Conversion* - enumerarea conținutului modelului de document și pregătirea obiectelor de aspect corespunzătoare.
- *Build* - aranjarea obiectelor de aspect pentru a reprezenta conținutul documentului pe pagini.
- *Reflow* - actualizarea aranjamentului obiectelor pentru a satisface constrângerile geometrice.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - un pas necesar dacă documentul conține forme cu conținut text imbricat.

Rețineți că aspectul paginii este o structură dinamică, care poate fi parțial reconstruită. Acest lucru este necesar mai ales atunci când este imposibil să se calculeze valorile câmpului fără a reconstrui structura aspectului documentului. Câmpul poate face referire la locația unui obiect pe o pagină și, în același timp, valoarea câmpului în sine este redată și pe pagină, afectând locația obiectului la care se face referire. Un aspect de pagină nu poate fi construit dintr-o singură dată, deoarece este posibil ca valorile câmpului să nu fie încă disponibile în momentul poziționării pe o pagină.

Luați în considerare scenariul tipic atunci când câmpul `NUMPAGES` apare în subsolul primei pagini din document. Valoarea acestui câmp este numărul total de pagini. Pentru a poziționa câmpul pe o pagină, valoarea acestuia trebuie cunoscută. Dacă în prezent se construiește doar prima pagină, atunci numărul total de pagini nu este încă cunoscut. În acest caz, aspectul paginii trebuie să utilizeze valoarea implicită și mai târziu să revină la acel câmp și să-și schimbe valoarea în funcție de calculele reale. Cu toate acestea, modificarea valorii câmpului poate afecta conținutul altui document de pe o pagină și, în cele din urmă, poate provoca adăugarea unei noi pagini sau eliminarea unei pagini existente, ceea ce face ca valoarea calculată să fie depășită. Această problemă poate fi rezolvată făcând posibilă actualizarea aspectului paginii existente.

Când creați un aspect, este de asemenea posibil să configurați [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) proprietăți care afectează ieșirea documentului pe pagini.

## Salvarea în format de pagină fixă

După ce aspectul paginii este construit și geometria obiectelor și poziția lor pe pagină sunt calculate, documentul poate fi salvat într-un format de pagină fixă acceptat de Aspose.Words. Când salvați documente în formate de pagini fixe, pot fi utilizate opțiunile de redare comune tuturor acestor formate. Ele permit controlul:

- Numărul și gama de pagini conținute în documentul de ieșire ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progresul salvării documentelor pagină cu pagină ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un set de caractere care sunt utilizate pentru redarea numerelor ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un jucător metafișier ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Pentru mai multe detalii, consultați [Manipularea Windows Metafile](/words/java/handling-windows-metafiles/) articolul.
- O rată de calitate pentru recomprimarea imaginilor JPEG, a căror valoare poate diferi ușor, în funcție de formatul de salvare selectat ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimizarea graficelor vectoriale în Aspose.Words Ieșire ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opțiuni grafice la salvarea în formate Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Salvarea documentului în tonuri de gri ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Comutarea între redarea formelor DrawingML și a formelor de rezervă ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Comutarea între modurile de redare a efectelor DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Exemplul de mai jos demonstrează cum să salvați un document în format JPEG folosind metoda `Save` și opțiunile de redare:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
