---
title: Cerințe De Memorie
second_title: Aspose.Words pentru Java
articleTitle: Cerințe De Memorie
linktitle: Cerințe De Memorie
description: "Câtă memorie face Aspose.Words pentru Java solicitați să lucrați cu documente? Aflați detaliile."
type: docs
weight: 10
url: /ro/java/memory-requirements/
---

Aspose.Words oferă o gamă largă de caracteristici pentru a lucra cu documente în diferite formate. Este important să rețineți că nu există nicio limită pentru dimensiunea maximă a unui fișier document pe care Aspose.Words îl poate procesa sau reda. Singura limitare este cantitatea de RAM (memorie) disponibilă de partea dvs.

## Câtă Memorie Aspose.Words Are Nevoie

De obicei, Aspose.Words are nevoie de mai multe ori mai multă memorie decât dimensiunea documentului pentru a construi un model al documentului în memorie. De exemplu, dacă dimensiunea documentului este 1 MB, Aspose.Words nevoi 10-20 MB de RAM pentru a-și construi modelul de obiect Document (DOM) în memorie. Multiplicatorul depinde de format, deoarece unele formate sunt mai compacte decât altele. De exemplu, DOCX este mai compact decât DOC și RTF, iar DOC este mai compact decât RTF.

Nu există o modalitate exactă de a estima câtă memorie Aspose.Words consumă efectiv în timpul procesării unui anumit fișier de document. După cum probabil știți Java stochează date în clase, fiecare instanță de clasă folosește o anumită memorie pentru scopuri interne JVM (Java mașină virtuală). Deci, orice paragraf sau text formatat (chiar și acesta constă dintr-un singur caracter) necesită o memorie suplimentară după încărcarea în DOM. Mai mult, motorul de colectare a gunoiului Java utilizează un algoritm complex pentru a determina cel mai bun moment pentru a efectua o colectare de memorie, ceea ce face dificilă determinarea consumului real de memorie.

## Cum se calculează cantitatea de memorie

Să luăm în considerare două documente:

1. DOCX "A" document - 0.35 MB Dimensiune (2 mii de pagini), numai text
2. DOCX "B" document - 0.35 MB Dimensiune (doar 1 pagină), cu PNG imagine în interior

După cum știți, o mulțime de formate moderne precum DOCX, ODT etc. sunt simple ZIP arhive. Deci, obținem următorul algoritm de calcul:
1. Desfaceți fermoarul. Documentul dezarhivat "A" are 20 MB Dimensiune, documentul "B" are 0.4 MB Dimensiune
2. Încărcarea documentului în model (construirea modelului obiectului Document – DOM):
* Crearea DOM a primului document "A" necesită 49 MB Dimensiune
* Crearea DOM a celui de-al doilea document "B" necesită doar 2 MB Dimensiune.
3. Măsurarea cantității necesare de memorie pentru a reda aceste documente la PDF. Pentru această operație, Aspose.Words necesită:
  *  294 MB pentru document "A"
  * 7 MB Pentru document "B"

Deci, după cum puteți vedea, nu există o dependență liniară de dimensiunea documentului de intrare. Există mulți factori care pot afecta dimensiunea necesară RAM – formatul documentului, complexitatea și structura acestuia, numărul de imagini și formatul acestora și o mulțime de alți factori.

## Cum se calculează cel mai precis multiplicatorul de memorie

Experimentele cu mii de documente reale arată că, de obicei, Aspose.Words necesită de câteva ori mai multă memorie decât dimensiunea medie a documentului pentru a construi un model de document în memorie și pentru a efectua operații simple, cum ar fi conversia între formatele de flux, mail merge, analiza, înlocuirea și așa mai departe. Uneori vorbim despre un multiplicator de 2, iar alteori 20.

Operațiuni mai complexe, cum ar fi redarea (conversia în formate de pagină fixe), actualizarea câmpurilor, împărțirea paginii și altele, pentru unele documente necesită 20 ori mai multe resurse decât memoria alocată de documentul încărcat în Aspose.Words DOM.

Dacă rezultatele profilării dvs. indică o posibilă problemă de memorie în Aspose.Words, Vă rugăm să contactați [Echipa De Suport](/words/java/technical-support/) și includeți toate informațiile de diagnosticare.

## Vezi Și

* [Redare](/words/java/rendering/)
* [Mail Merge și raportare](/words/java/mail-merge-and-reporting/)
* [Lucrul cu câmpuri](/words/java/working-with-fields/)