---
title: Cum se extrage conținutul între nodurile documentului
second_title: Aspose.Words pentru C++
articleTitle: Extrageți conținutul între nodurile dintr-un Document
linktitle: Extrageți Conținutul Între Noduri
type: docs
description: "Extragerea conținutului documentului în diferite folosind C++."
weight: 140
url: /ro/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Când lucrați cu documente, este important să puteți extrage cu ușurință conținut dintr-un anumit interval dintr-un document. Cu toate acestea, conținutul poate consta din elemente complexe, cum ar fi paragrafe, tabele, imagini etc.

Indiferent de conținutul care trebuie extras, metoda de extragere a conținutului va fi întotdeauna determinată de nodurile selectate pentru a extrage conținutul între ele. Acestea pot fi corpuri de text întregi sau rulări simple de text.

Există multe situații posibile și, prin urmare, multe tipuri diferite de noduri de luat în considerare la extragerea conținutului. De exemplu, poate doriți să extrageți conținut între:

- Două paragrafe specifice
- Runde specifice de text
- Câmpuri de diferite tipuri, cum ar fi câmpuri de îmbinare
- Începutul și sfârșitul intervalelor unui marcaj sau comentariu
- Diverse corpuri de text conținute în secțiuni separate

În unele situații, poate fi necesar să combinați diferite tipuri de noduri, cum ar fi extragerea conținutului între un paragraf și un câmp sau între o rulare și un marcaj.

Acest articol oferă implementarea codului pentru extragerea textului între diferite noduri, precum și exemple de scenarii comune.

{{% alert color="primary" %}}

Aceste exemple sunt doar câteva demonstrații ale numeroaselor posibilități. Planificăm ca funcționalitatea de extragere a textului să facă parte din public API în viitor și nu va fi necesar niciun cod suplimentar. Între timp, nu ezitați să postați solicitările dvs. cu privire la această funcționalitate pe [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## De Ce Extrageți Conținutul

Adesea, scopul extragerii conținutului este duplicarea sau salvarea acestuia separat într-un document nou. De exemplu, puteți extrage conținut și:

- Copiați-l într-un document separat
- Convertiți o anumită parte a unui document în PDF sau imagine
- Duplicați conținutul din document de mai multe ori
- Lucrați cu conținut extras separat de restul documentului

Acest lucru poate fi realizat cu ușurință folosind Aspose.Words și implementarea codului de mai jos.

## Extragerea Algoritmului De Conținut

Codul din această secțiune abordează toate situațiile posibile descrise mai sus cu o metodă generalizată și reutilizabilă. Schița generală a acestei tehnici implică:

1. Adunarea nodurilor care dictează zona de conținut care va fi extrasă din documentul dvs. Recuperarea acestor noduri este gestionată de utilizator în codul său, pe baza a ceea ce doresc să fie extras.
1. Trecerea acestor noduri la metoda **ExtractContent** furnizată mai jos. De asemenea, trebuie să treceți un parametru boolean care afirmă dacă aceste noduri, care acționează ca markeri, ar trebui incluse sau nu în extracție.
1. Preluarea unei liste de conținut clonat (noduri copiate) specificate pentru a fi extrase. Puteți utiliza această listă de noduri în orice mod aplicabil, de exemplu, creând un document nou care conține doar conținutul selectat.

## Cum să extrageți conținut

Pentru a extrage conținutul din documentul dvs., trebuie să apelați metoda `ExtractContent` de mai jos și să treceți parametrii corespunzători. Baza de bază a acestei metode implică găsirea nodurilor la nivel de bloc (paragrafe și tabele) și clonarea acestora pentru a crea copii identice. Dacă nodurile de marcare trecute sunt la nivel de bloc, atunci metoda este capabilă să copieze pur și simplu conținutul de la acel nivel și să-l adauge la matrice.

Cu toate acestea, dacă nodurile marker sunt inline (un copil al unui paragraf), atunci situația devine mai complexă, deoarece este necesar să împărțiți paragraful la nodul inline, fie că este vorba de o rulare, câmpuri de marcaj etc. Conținutul din nodurile părinte clonate care nu sunt prezente între markeri este eliminat. Acest proces este utilizat pentru a se asigura că nodurile inline vor păstra în continuare formatarea paragrafului părinte. Metoda va rula, de asemenea, verificări asupra nodurilor trecute ca parametri și aruncă o excepție dacă oricare dintre noduri este nevalid. Parametrii care trebuie transmiși acestei metode sunt::

1. **StartNode** și **EndNode**. Primii doi parametri sunt nodurile care definesc unde trebuie să înceapă și să se termine extragerea conținutului. Aceste noduri pot fi atât la nivel de bloc (paragraf, tabel), cât și la nivel de linie (de exemplu Run, FieldStart, BookmarkStart etc.).):
   1. Pentru a trece un câmp, trebuie să treceți obiectul **FieldStart** corespunzător.
   1. Pentru a trece marcajele, nodurile **BookmarkStart** și BookmarkEnd trebuie trecute.
   1. Pentru a transmite comentarii, ar trebui utilizate nodurile CommentRangeStart și CommentRangeEnd.
1. **IsInclusive**. Definește dacă markerii sunt incluși în extracție sau nu. Dacă această opțiune este setată la false și același nod sau noduri consecutive sunt transmise, atunci o listă goală va fi returnată:

      1. Dacă un nod **FieldStart** este trecut, atunci această opțiune definește dacă întregul câmp trebuie inclus sau exclus.
      1. Dacă este trecut un nod **BookmarkStart** sau **BookmarkEnd**, Această opțiune definește dacă marcajul este inclus sau doar conținutul dintre intervalul de marcaje.
      1. Dacă un nod **CommentRangeStart** sau **CommentRangeEnd** este trecut, această opțiune definește dacă comentariul în sine trebuie inclus sau doar conținutul din intervalul de comentarii.

Implementarea metodei **ExtractContent** Puteți găsi [aici](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Această metodă va fi menționată în scenariile din acest articol.

De asemenea, vom defini o metodă personalizată pentru a genera cu ușurință un document din nodurile extrase. Această metodă este utilizată în multe dintre scenariile de mai jos și creează pur și simplu un document nou și importă conținutul extras în acesta.

Următorul exemplu de cod arată cum să luați o listă de noduri și să le inserați într-un document nou.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extrageți Conținutul Între Paragrafe

Acest lucru demonstrează modul de utilizare a metodei de mai sus pentru a extrage conținut între paragrafe specifice. În acest caz, dorim să extragem corpul scrisorii găsite în prima jumătate a documentului. Putem spune că aceasta este între paragrafele 7 și 11.

Codul de mai jos îndeplinește această sarcină. Paragrafele corespunzătoare sunt extrase folosind metoda [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) din document și trecând indicii specificați. Apoi trecem aceste noduri la metoda **ExtractContent** și afirmăm că acestea trebuie incluse în extracție. Această metodă va returna conținutul copiat între aceste noduri care sunt apoi inserate într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținutul între paragrafe specifice folosind metoda `ExtractContent` de mai sus:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extrageți conținutul între diferite tipuri de noduri

Putem extrage conținut între orice combinații de noduri la nivel de bloc sau inline. În acest scenariu de mai jos vom extrage conținutul dintre primul paragraf și tabelul din a doua secțiune inclusiv. Obținem nodurile markerilor apelând Metoda `Body.FirstParagraph` și [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) din a doua secțiune a documentului pentru a prelua nodurile paragrafului și tabelului corespunzător. Pentru o ușoară variație, să duplicăm conținutul și să-l introducem sub original.

Următorul exemplu de cod arată cum să extrageți conținutul dintre un paragraf și un tabel folosind metoda `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extrageți conținutul între paragrafe pe baza stilului

Poate fi necesar să extrageți conținutul între paragrafe cu stiluri identice sau diferite, cum ar fi între paragrafe marcate cu stiluri de titlu. Codul de mai jos arată cum se poate realiza acest lucru. Este un exemplu simplu care va extrage conținutul dintre prima instanță a stilurilor "Heading 1" și "Header 3" fără a extrage și titlurile. Pentru a face acest lucru, setăm ultimul parametru la false, care specifică faptul că nodurile marker nu ar trebui incluse.

Într-o implementare corectă, aceasta ar trebui să fie executată într-o buclă pentru a extrage conținut între toate paragrafele acestor stiluri din document. Conținutul extras este copiat într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținut între paragrafe cu stiluri specifice folosind metoda `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extrageți Conținutul Între Anumite Rulări

Puteți extrage conținut între noduri inline, cum ar fi un [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), de asemenea. **Runs** din paragrafe diferite pot fi transmise ca markeri. Codul de mai jos arată cum să extrageți text specific între același nod **Paragraph**.

Următorul exemplu de cod arată cum să extrageți conținut între anumite runde ale aceluiași paragraf folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extrageți conținut folosind un câmp

Pentru a utiliza un câmp ca marker, nodul `FieldStart` ar trebui să fie trecut. Ultimul parametru al metodei `ExtractContent` va defini dacă întregul câmp trebuie inclus sau nu. Să extragem conținutul dintre câmpul de îmbinare "FullName " și un paragraf din document. Folosim metoda [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) a clasei [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Aceasta va returna nodul **FieldStart** din numele câmpului de îmbinare transmis acestuia.

În cazul nostru, să setăm ultimul parametru trecut la metoda **ExtractContent** la false pentru a exclude câmpul din extracție. Vom reda conținutul extras la PDF.

Următorul exemplu de cod arată cum să extrageți conținut între un anumit câmp și paragraf din document folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Extrageți conținut dintr-un marcaj

Într-un document, conținutul definit într-un marcaj este încapsulat de nodurile `BookmarkStart` și BookmarkEnd. Conținutul găsit între aceste două noduri alcătuiesc marcajul. Puteți trece oricare dintre aceste noduri ca orice marker, chiar și cele din marcaje diferite, atâta timp cât marcatorul de pornire apare înainte de marcatorul de încheiere din document. Vom extrage acest conținut într-un document nou folosind codul de mai jos. Opțiunea parametru **IsInclusive** arată cum să păstrați sau să renunțați la marcaj.

Următorul exemplu de cod arată cum se extrage conținutul la care se face referire la un marcaj folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Extrageți conținut dintr-un comentariu

Un comentariu este format din nodurile CommentRangeStart, CommentRangeEnd și comentariu. Toate aceste noduri sunt în linie. Primele două noduri încapsulează conținutul din document la care se face referire prin comentariu, așa cum se vede în captura de ecran de mai jos.

Nodul **Comment** în sine este un InlineStory care poate conține paragrafe și rulări. Reprezintă mesajul comentariului văzut ca un balon de comentarii în panoul de previzualizare. Deoarece acest nod este inline și descendent al unui corp, puteți extrage și conținutul din interiorul acestui mesaj.

Comentariul cuprinde titlul, primul paragraf și tabelul din a doua secțiune. Să extragem acest comentariu într-un document nou. Opțiunea **IsInclusive** dictează dacă comentariul în sine este păstrat sau eliminat.

Următorul exemplu de cod arată cum se face acest lucru:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Cum se extrage conținut folosind DocumentVisitor

Utilizați clasa [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) pentru a implementa acest scenariu de utilizare. Această clasă corespunde binecunoscutului model de design al vizitatorilor. Cu **DocumentVisitor,** Puteți defini și executa operații personalizate care necesită enumerare peste arborele de documente.

**DocumentVisitor**

Fiecare metodă **DocumentVisitor.VisitXXX** returnează o valoare [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) care controlează enumerarea nodurilor. Puteți solicita fie să continuați enumerarea, săriți nodul curent (dar continuați enumerarea), fie să opriți enumerarea nodurilor.

Aceștia sunt pașii pe care trebuie să îi urmați pentru a determina și extrage programatic diferite părți ale unui document:

- Creați o clasă derivată din **DocumentVisitor**
- Suprascrieți și furnizați implementări pentru unele sau toate metodele **DocumentVisitor.VisitXXX** pentru a efectua unele operații personalizate
- Apelați `Node.Accept` pe nodul de unde doriți să începeți enumerarea. De exemplu, dacă doriți să enumerați întregul document, utilizați `Document.Accept`

**DocumentVisitor**

Acest exemplu arată cum să utilizați modelul vizitator pentru a adăuga noi operațiuni la modelul de obiect Aspose.Words. În acest caz, creăm un simplu convertor de documente într-un format text:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cum se extrage doar Text

Modalitățile de recuperare a textului din document sunt::

- Utilizați [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) cu [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) pentru a salva ca text simplu într-un fișier sau flux
- Utilizați [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) și treceți parametrul **SaveFormat.Text**. Intern, aceasta invocă salvare ca text într-un flux de memorie și returnează șirul rezultat
- Utilizați [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) pentru a prelua text cu toate Microsoft Word caractere de control, inclusiv coduri de câmp
- Implementați un [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) personalizat pentru a efectua extragerea personalizată

### Folosind `Node.GetText` și `Node.ToString`

Un document Word poate conține caractere de control care desemnează elemente speciale, cum ar fi câmpul, sfârșitul celulei, sfârșitul secțiunii etc. Lista completă a caracterelor posibile de control al cuvintelor este definită în clasa [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Metoda **Node.GetText** returnează text cu toate caracterele caracterelor de control prezente în nod.

Apelarea **ToString** returnează reprezentarea textului simplu a documentului numai fără caractere de control.

Următorul exemplu de cod arată diferența dintre apelarea metodelor **GetText** și **ToString** pe un nod:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Folosind `SaveFormat.Text`

Acest exemplu salvează documentul după cum urmează:

- Filtrează caracterele de câmp și codurile de câmp, forma, nota de subsol, nota finală și referințele la comentarii
- Înlocuiește sfârșitul paragrafului **ControlChar.Cr** caractere cu **ControlChar.CrLf** combinații
- Folosește codificarea UTF8

Următorul exemplu de cod arată cum să salvați un document în format TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Extrageți imagini din forme

Poate fi necesar să extrageți imagini de document pentru a efectua unele sarcini. Aspose.Words vă permite să faceți și acest lucru.

Următorul exemplu de cod arată cum să extrageți imagini dintr-un document:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
