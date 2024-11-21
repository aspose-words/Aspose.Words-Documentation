---
title: Conversia în format fix-pagina în C#
second_title: Aspose.Words pentru .NET
articleTitle: Conversia în format cu pagini fixe
linktitle: Conversia în format cu pagini fixe
description: "Salvează documente în formate PDF, XPS, HTML, XAML, PostScript și PCL folosind C#."
type: docs
weight: 10
url: /ro/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words" implementează propriul motor de aranjare a paginii. Înainte de a ne adânci în specificațiile sale, merită să discutăm mai întâi despre document la un nivel înalt. Când gândeşti la un document, utilizatorii îşi imaginează de obicei o serie de foi de hârtie care conţin cuvinte, imagini, tabele şi diagrame. Documentele pot fi de diferite tipuri, cum ar fi text, foi de calcul, diapozitive, desene CAD, diagrame și, prin urmare, pot avea în esență diferite aranjamente. Cele mai multe aplicații permit trimiterea documentelor către o imprimantă; acesta este momentul în care un utilizator poate vedea cu adevărat aspectul final al documentului.

## "Afișarea unui document în diverse aplicații"

Diverse aplicații de vizualizare sau publicare a documentelor permit utilizatorilor să deschidă ( Adobe Acrobat, XPS Viewer ), iar uneori să editeze documente ale unor formate specifice. Aceste aplicații produc, în mod tipic, documente cu un format "fix pagină". Un astfel de format de document descrie, în mod exact, unde este amplasat conținutul unui document pe fiecare pagină. În mod intern, PDF-ul sau XPS format conține o descriere a fiecărei pagini, precum și instrucțiuni de desenare, specificând dispunerea conținutului pe pagină. Acest lucru este similar cu formate de imagini, descriind unde conținutul este afișat fie în formă raster sau vector.

În schimb, unele aplicații de editare a textului nu suportă vizualizarea paginilor unui document." De exemplu, Microsoft Notepad suportă foarte puține funcții altele decât afișarea simplă, editarea și imprimarea textului. Observaţia importantă aici este că astfel de aplicaţii nici nu pot afişa pagini ale documentului, nici să-i spună unui utilizator câte pagini ar fi tipărite, permiţând doar vizualizarea conţinutului documentului. Documentul poate fi salvat în format simplu de text și poate fi deschis de multe alte aplicații. Folosind o aplicaţie care permite vizualizarea conţinutului binar al unui fișier arbitrare unul poate vedea ce este stocat în fișierul document – este doar text simplu, nu există nimic altceva în el.

Aplicatiile mult mai sofisticate de editare a textului, cum ar fi Microsoft WordPad, salveaza documentul ca fișier Rich Text (RTF) care suportă funcții de formatare mai multe, cum ar fi inserarea imaginilor, formatarea caracterelor, margini de paragraf și spațiere. Cu toate acestea, formatul RTF conține numai conținutul documentului, având nici o informație despre pagini.

"Microsoft Word este cea mai avansată aplicație de editare a textului în Windows astăzi." Formatează fișiere în formatul DOCX, care descrie conținutul documentului flexibil și extensiv, permițând utilizatorilor să specifice dimensiunea paginii, orientarea pentru o secțiune de document și, fiind o aplicație WYSIWYG, chiar să afișeze pagini de documente pe ecran. Cu toate acestea, nu există încă nici o informație cu privire la modul în care conținutul documentului este afișat pe paginile disponibile din fișierul documentului. Fișierul de document descrie doar conținutul în sine și relația obiectelor documentului unul față de celălalt, împreună cu unele constrângeri geometrice. Ca rezultat, înainte de afișarea unui document, Microsoft Word calculează informațiile în sine. Aceasta este locul în care intră un design de pagină.

## Ce este un "Page Layout"?

Un aranjament de pagină a unui document este o structură de date care descrie locul unde un anumit obiect se află pe pagini pentru toate obiectele din document. În plus, deoarece obiectele au proprietăți care le afectează aspectul, cum ar fi mărimea fontului, umbrirea sau efectele de trasare, trebuie să nu știi doar unde se află obiectul, dar și ce zone ale paginii ocupă, și dacă acestea vor aplica pe mai multe pagini, astfel încât alte obiecte să nu se suprapună în aceleași zone.

Aspose.Words implementează funcționalitatea de aranjare a paginilor în mod intern, permițându-i să producă toate formate fixe ale paginii, cum ar fi PDF, XPS și diferite formate de imagine. Fără pagină de aranjare, informațiile stocate în fișierul document fix pagină nu ar fi disponibile și toate aceste formate nu ar fi acceptate.

Relația dintre un document și un layout de pagină este destul de simplă. Atunci când un document descrie conținutul, modelul de pagină corespunzător descrie geometria acestui conținut. "Notă că un plan de pagină nu poate exista fără un document deoarece nu ar exista conținut pentru calcularea geometriei, dar un document poate exista fără un plan de pagină." De exemplu, atunci când un fișier DOCX este convertit într-un fișier RTF, în mod tipic nu este necesar să se cunoască geometria, deoarece nici unul dintre formate nu o stochează.

## Crearea unui design de pagină

Crearea unui plan de pagină poate fi un procedeu costisitor, atât în ceea ce privește viteza cât și memoria. Aceasta se datorează mai multor motive:

- Documentul poate avea o cantitate mare de conținut, care ar putea trebui să fie afișată pe mii de pagini. Geometria oricărui obiect pe orice pagină ar trebui descrisă, consumând resursele de memorie.
- Documentul poate avea multe reguli, punând constrângeri asupra geometriei. Timp de calcul considerabil poate fi consumat, asigurându-se că fiecare constrângere este satisfăcută
Unele caracteristici ale documentelor, de exemplu, `NUMPAGES` câmp, creează dependențe recurente pentru valorile viitoare a proprietăților, care nu sunt disponibile în momentul calculului. Aceasta duce la calcule repetitive și adaugă timp de calcul.

Din motivele menționate mai sus, Aspose.Words va crea un aranjament de pagină numai atunci când este necesar. Un motiv tipic pentru asta ar fi o cerere de a reda pagini de documente sau de a obține o valoare de câmp care depinde de informațiile disponibile în layout-ul paginii. O altă cauză mai puțin evidentă ar putea fi exportul unui document la HTML. Chiar dacă HTML nu este un format cu pagină fixă și nici nu descrie geometria obiectelor de conținut, acesta sprijină încă imaginile. O astfel de imagini pot fi sub formă de forme create în Microsoft Word cu text în interiorul lor. Spre exemplu, un grafic cu etichete de axă poate fi exportat în HTML ca o imagine, dar înainte ca aceasta să poată fi realizată Aspose.Words trebuie să redea imaginea și, prin urmare, are nevoie să știe unde să afișeze eticheta. Vedeți exemplul de mai jos:

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### Proprietățile non-geometrice

Pe lângă gestionarea informațiilor geometrice, un layout de pagină este responsabil și pentru calcularea culorilor și stilurilor de margine. În Microsoft Word culoarea textului poate fi specificată ca fiind automată, implicând că selecția culorii ar trebui să se bazeze pe culoarea de umbrire a celulei sau paragrafului sau pe culoarea paginii în care apare textul.

Page layout calculează unde va apărea textul și ce conținut va fi redat în spatele acestuia, permițând calcularea culorii. Există și alte calcule specifice efectuate de aranjarea paginii. Spre exemplu, o margine orizontală într-o masă depinde de faptul dacă rândul de masă este ultimul într-o coloană de text și de faptul dacă acesta este întrerupt pe mai multe coloane. Dacă un rând este redat ultimul într-o coloană, limita inferioară este folosită în loc de cea orizontală.

![converting-to-fixed-page-format_2](converting-to-fixed-page-format-2.png)

În Aspose.Words, un utilizator poate solicita dacă să construiască o nouă dispoziție de pagină sau să actualizeze una existentă. Ambele pot fi realizate folosind metoda [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/), furnizată de clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/). Dacă un model de pagină nu există, dar este nevoie de el (de exemplu, atunci când documentul este exportat într-un format fix pe pagină), Aspose.Words va apela automat această metodă. Cu toate acestea, dacă o dispunere a paginii există deja, Aspose.Words va folosi cel existent, în scopul de a evita consumarea resurselor necesare pentru actualizarea acesteia. În acest caz utilizatorul trebuie să apeleze metoda `UpdatePageLayout`, pentru a asigura că pagina este la zi cu modelul de documente.

### Structură dinamică

Procesul de creație a paginii de aranjare constă în pașii următori:

- *Conversion* – enumerarea conținutului modelului document și pregătirea obiectelor de dispunere corespunzătoare.
- *Build* – aranjarea obiectelor de layout pentru a reprezenta conținutul documentului pe pagini.
- *Reflow* – actualizarea aranjamentului obiectelor pentru a satisface constrângerile geometrice.
- *Proiecția obiectelor de proiectare în prezentarea paginii fixe și finalizarea informațiilor despre culoare*.
- *Construirea și refluirea conținutului formei* – o etapă necesară dacă documentul conține forme cu conținut text încorporat.

Notă că structura paginii este o structură dinamică, care poate fi reconstruită parțial. Acest lucru este mai ales necesar atunci când este imposibil să calculezi valorile câmpurilor fără a reconstrui structura de aspect a documentului. Câmpul poate să facă referire la locația unui obiect pe o pagină, și în același timp valoarea câmpului este afișată și ea pe pagină, afectând locația obiectului referit. Un layout de pagină nu poate fi construit dintr-o dată, deoarece valorile câmpului pot să nu fie disponibile încă la momentul poziționării pe o pagină.

Ia în considerare scenariul tipic, când `NUMPAGES` câmp apare în subsol al primei pagini din document. Valoarea acestui câmp este numărul total de pagini. Pentru a poziționa câmpul pe o pagină, valoarea sa ar trebui cunoscută. Dacă se construiește doar prima pagină, numărul total de pagini nu este cunoscut încă. În acest caz, dispunerea paginii trebuie să folosească valoarea implicită și mai târziu să se întoarcă la acel câmp și să-i schimbe valoarea în funcție de calculele efective. "Cu toate acestea, schimbarea valorii câmpului poate afecta și alte conținuturi ale documentului pe o pagină și în final poate cauza ca o nouă pagină să fie atașată sau că o pagină existentă să fie eliminată, făcând astfel ca valoarea calculată să devină depășită." Această problemă poate fi rezolvată făcând posibilă actualizarea șablonului de pagină existent.

Când creezi un layout, este posibil de asemenea să stabilești [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) proprietăți care afectează ieșirea documentului pe pagini.

## Salvare în format pe pagini fixe

După ce este construită structura paginii și se calculează geometria obiectelor și poziția lor pe pagină, documentul poate fi salvat într-un format cu pagină fixă acceptat de Aspose.Words. Când salvezi documente în formate cu pagini fixe, opțiunile de redare comune pentru toate aceste formate pot fi utilizate. Ei permit controlul:

- Numărul și intervalul paginilor conținut în documentul de ieșire ([PageCount](https://reference.aspose.com/words/net/aspose.words/document/pagecount/)).
- Progresul salvării pe pagini ale documentului ([PageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
Un set de caractere care sunt folosite pentru a reprezenta numere [NumeralFormat](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/).
- Un player de meta-fişiere ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Pentru mai multe detalii vezi articolul [Handling Windows Metafiles](/words/net/handling-windows-metafiles/).
- O rată de calitate pentru recompresia imaginilor JPEG, valoarea căreia poate diferi ușor, în funcție de formatul de salvare selectat ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)).
"- Optimizarea graficelor vectoriale în Aspose.Words ieșire ([OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) )."
Opțiuni grafice atunci când se salvează în formatul Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Salvarea documentului în monocrom [ColorMode](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/colormode/).
- Comutarea între redarea formelor DrawingML și a formelor de cădere ([DmlRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Comutarea între modul de redare a efectelor DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

Exemplul de mai jos demonstrează cum se salvează un document în format JPEG folosind metoda `Save` și opțiunile de redare:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
