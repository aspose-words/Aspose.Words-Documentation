---
title: Crearea unui aspect de pagină în C++
second_title: Aspose.Words pentru C++
articleTitle: Crearea unui aspect de pagină
linktitle: Crearea unui aspect de pagină
description: "Crearea unui aspect de pagină poate fi o procedură costisitoare. Aspose.Words va crea un aspect de pagină numai atunci când este necesar: pentru a reda pagini de document, pentru a obține o valoare de câmp, pentru a exporta un document în HTML etc."
type: docs
weight: 10
url: /ro/cpp/creating-a-page-layout/
---

Crearea unui aspect de pagină poate fi o procedură costisitoare, atât din punct de vedere al vitezei, cât și al memoriei. Acest lucru se datorează mai multor motive:

- Documentul poate avea o cantitate mare de conținut, care poate fi necesar să fie afișat pe mii de pagini. Geometria fiecărui obiect de pe fiecare pagină ar trebui descrisă, consumând resurse de memorie.
- Documentul poate avea multe reguli, punând constrângeri asupra geometriei. Se poate petrece un timp de calcul considerabil, asigurându-se că fiecare constrângere este satisfăcută.
- Unele caracteristici ale documentului, de exemplu, câmpul `NUMPAGES`, creează dependențe recursive pentru valorile viitoare ale proprietăților, care nu sunt disponibile la momentul calculului. Acest lucru duce la calcule repetitive și se adaugă în timpul de calcul.

Din motivele menționate mai sus, Aspose.Words va crea un aspect de pagină numai atunci când este necesar. Un motiv tipic pentru aceasta ar fi o cerere de a reda pagini de document sau de a obține o valoare de câmp care depinde de informațiile disponibile în aspectul paginii. Un motiv mai puțin evident ar putea fi exportul unui document în HTML. Chiar dacă HTML nu este un format de pagină fixă și nu descrie geometria obiectelor de conținut, totuși acceptă imagini. Astfel de imagini pot fi sub formă de forme create în Microsoft Word cu un text în interiorul lor. De exemplu, o diagramă cu etichete de axă poate fi exportată în HTML ca imagine, dar înainte de a putea face acest lucru, Aspose.Words trebuie să redea acea imagine și, prin urmare, trebuie să știe unde să afișeze eticheta. A se vedea exemplul grafic de mai jos:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Proprietăți Non-Geometrice

Pe lângă gestionarea informațiilor geometrice, un aspect al paginii este, de asemenea, responsabil pentru calcularea culorilor și a stilurilor de margine. În Microsoft Word, culoarea textului poate fi specificată ca automată, ceea ce înseamnă că selecția culorii trebuie să se bazeze pe culoarea de umbrire a celulei sau paragrafului sau pe culoarea paginii, unde apare textul.

Aspectul paginii calculează unde va apărea textul și ce conținut va fi redat în spatele acestuia, permițând calculul culorilor. Există și alte calcule specifice efectuate de aspectul paginii. De exemplu, o margine orizontală într-un tabel depinde dacă un rând de tabel este ultimul într-o coloană de text și dacă este rupt între coloane. Dacă un rând este redat ultimul într-o coloană, marginea de jos este utilizată în loc de orizontală.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

În Aspose.Words, Un utilizator poate solicita dacă să construiască un nou aspect de pagină sau să actualizeze unul existent. Ambele pot fi efectuate prin metoda [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), furnizată de clasa [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Dacă nu există un aspect de pagină, dar este nevoie de acesta (de exemplu, atunci când documentul este exportat într-un format de pagină fixă), Aspose.Words va apela automat această metodă. Cu toate acestea, dacă există deja un aspect de pagină, Aspose.Words îl va folosi pe cel existent, pentru a evita consumul resurselor necesare pentru actualizarea acestuia. În acest caz, utilizatorul trebuie să apeleze metoda `UpdatePageLayout`, pentru a se asigura că aspectul paginii este actualizat cu modelul documentului.

## Structura Dinamică

Procesul de creare a aspectului paginii cuprinde următoarele etape:

- *Conversion* - enumerarea conținutului modelului de document și pregătirea obiectelor de aspect corespunzătoare.
- *Build* - aranjarea obiectelor de aspect pentru a reprezenta conținutul documentului pe pagini.
- *Reflow* - actualizarea aranjamentului obiectelor pentru a satisface constrângerile geometrice.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - un pas necesar dacă documentul conține forme cu conținut text imbricat.

Rețineți că aspectul paginii este o structură dinamică, care poate fi parțial reconstruită. Acest lucru este necesar mai ales atunci când este imposibil să se calculeze valorile câmpului fără a reconstrui structura aspectului documentului. Câmpul poate face referire la locația unui obiect pe o pagină și, în același timp, valoarea câmpului în sine este redată și pe pagină, afectând locația obiectului la care se face referire. Un aspect de pagină nu poate fi construit dintr-o singură dată, deoarece este posibil ca valorile câmpului să nu fie încă disponibile în momentul poziționării pe o pagină.

Luați în considerare scenariul tipic atunci când câmpul `NUMPAGES` apare în subsolul primei pagini din document. Valoarea acestui câmp este numărul total de pagini. Pentru a poziționa câmpul pe o pagină, valoarea acestuia trebuie cunoscută. Dacă în prezent se construiește doar prima pagină, atunci numărul total de pagini nu este încă cunoscut. În acest caz, aspectul paginii trebuie să utilizeze valoarea implicită și mai târziu să revină la acel câmp și să-și schimbe valoarea în funcție de calculele reale. Cu toate acestea, modificarea valorii câmpului poate afecta conținutul altui document de pe o pagină și, în cele din urmă, poate provoca adăugarea unei noi pagini sau eliminarea unei pagini existente, ceea ce face ca valoarea calculată să fie depășită. Această problemă poate fi rezolvată făcând posibilă actualizarea aspectului paginii existente.

Când creați un aspect, este de asemenea posibil să configurați [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) proprietăți care afectează ieșirea documentului pe pagini.