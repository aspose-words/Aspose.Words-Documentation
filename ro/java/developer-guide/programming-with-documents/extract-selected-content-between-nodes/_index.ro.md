---
title: Extrageți conținutul selectat între nodurile din Java
second_title: Aspose.Words pentru Java
articleTitle: Extrageți conținutul între nodurile dintr-un Document
linktitle: Extrageți Conținutul Între Noduri
type: docs
description: "Extragerea conținutului documentului în diferite folosind Java."
weight: 140
url: /ro/java/extract-selected-content-between-nodes/
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

Vom lucra cu documentul de mai jos în acest articol. După cum puteți vedea, conține o varietate de conținut. De asemenea, rețineți că documentul conține o a doua secțiune care începe în mijlocul primei pagini. Un marcaj și un comentariu sunt, de asemenea, prezente în document, dar nu sunt vizibile în captura de ecran de mai jos.

![extract-content-aspose-words-java](extract-content-from-comment-aspose-words-java-1.png)

Pentru a extrage conținutul din documentul dvs., trebuie să apelați metoda `ExtractContent` de mai jos și să treceți parametrii corespunzători.

Baza de bază a acestei metode implică găsirea nodurilor la nivel de bloc (paragrafe și tabele) și clonarea acestora pentru a crea copii identice. Dacă nodurile de marcare trecute sunt la nivel de bloc, atunci metoda este capabilă să copieze pur și simplu conținutul de la acel nivel și să-l adauge la matrice.

Cu toate acestea, dacă nodurile marker sunt inline (un copil al unui paragraf), atunci situația devine mai complexă, deoarece este necesar să împărțiți paragraful la nodul inline, fie că este vorba de o rulare, câmpuri de marcaj etc. Conținutul din nodurile părinte clonate care nu sunt prezente între markeri este eliminat. Acest proces este utilizat pentru a se asigura că nodurile inline vor păstra în continuare formatarea paragrafului părinte.

Metoda va rula, de asemenea, verificări asupra nodurilor trecute ca parametri și aruncă o excepție dacă oricare dintre noduri este nevalid. Parametrii care trebuie transmiși acestei metode sunt::

1. **StartNode** și **EndNode**. Primii doi parametri sunt nodurile care definesc unde trebuie să înceapă și să se termine extragerea conținutului. Aceste noduri pot fi atât la nivel de bloc ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)), fie la nivel de linie (de exemplu [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) etc.):
   1. Pentru a trece un câmp, trebuie să treceți obiectul **FieldStart** corespunzător.
   1. Pentru a trece marcajele, nodurile **BookmarkStart** și [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) trebuie trecute.
   1. Pentru a transmite comentarii, ar trebui utilizate nodurile [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/).
1. **IsInclusive**. Definește dacă markerii sunt incluși în extracție sau nu. Dacă această opțiune este setată la false și același nod sau noduri consecutive sunt transmise, atunci o listă goală va fi returnată:

      1. Dacă un nod **FieldStart** este trecut, atunci această opțiune definește dacă întregul câmp trebuie inclus sau exclus.
      1. Dacă este trecut un nod **BookmarkStart** sau **BookmarkEnd**, Această opțiune definește dacă marcajul este inclus sau doar conținutul dintre intervalul de marcaje.
      1. Dacă un nod **CommentRangeStart** sau **CommentRangeEnd** este trecut, această opțiune definește dacă comentariul în sine trebuie inclus sau doar conținutul din intervalul de comentarii.

Implementarea metodei **ExtractContent** Puteți găsi [aici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Această metodă va fi menționată în scenariile din acest articol.

De asemenea, vom defini o metodă personalizată pentru a genera cu ușurință un document din nodurile extrase. Această metodă este utilizată în multe dintre scenariile de mai jos și creează pur și simplu un document nou și importă conținutul extras în acesta.

Următorul exemplu de cod arată cum să luați o listă de noduri și să le inserați într-un document nou:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extrageți Conținutul Între Paragrafe

Acest lucru demonstrează modul de utilizare a metodei de mai sus pentru a extrage conținut între paragrafe specifice. În acest caz, dorim să extragem corpul scrisorii găsite în prima jumătate a documentului. Putem spune că aceasta este între paragrafele 7 și 11.

Codul de mai jos îndeplinește această sarcină. Paragrafele corespunzătoare sunt extrase folosind metoda [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) din document și trecând indicii specificați. Apoi trecem aceste noduri la metoda **ExtractContent** și afirmăm că acestea trebuie incluse în extracție. Această metodă va returna conținutul copiat între aceste noduri care sunt apoi inserate într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținutul între paragrafe specifice folosind metoda `ExtractContent` de mai sus:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Documentul de ieșire conține cele două paragrafe care au fost extrase.

![extract-content-result-aspose-words-java](extract-content-from-comment-aspose-words-java-2.png)

## Extrageți conținutul între diferite tipuri de noduri

Putem extrage conținut între orice combinații de noduri la nivel de bloc sau inline. În acest scenariu de mai jos vom extrage conținutul dintre primul paragraf și tabelul din a doua secțiune inclusiv. Obținem nodurile markerilor apelând metoda [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) și [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) din a doua secțiune a documentului pentru a prelua nodurile corespunzătoare **Paragraph** și **Table**. Pentru o ușoară variație, să duplicăm conținutul și să-l introducem sub original.

Următorul exemplu de cod arată cum să extrageți conținutul dintre un paragraf și un tabel folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Conținutul dintre paragraf și tabel a fost duplicat mai jos este rezultatul.

![extract-content-between-paragraphs-aspose-words-java](extract-content-from-comment-aspose-words-java-3.png)

## Extrageți conținutul între paragrafe pe baza stilului

Poate fi necesar să extrageți conținutul între paragrafe de același stil sau diferite, cum ar fi între paragrafe marcate cu stiluri de titlu.

Codul de mai jos arată cum se poate realiza acest lucru. Este un exemplu simplu care va extrage conținutul dintre prima instanță a stilurilor "Heading 1" și "Header 3" fără a extrage și titlurile. Pentru a face acest lucru, setăm ultimul parametru la false, care specifică faptul că nodurile marker nu ar trebui incluse.

Într-o implementare corectă, aceasta ar trebui să fie executată într-o buclă pentru a extrage conținut între toate paragrafele acestor stiluri din document. Conținutul extras este copiat într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținut între paragrafe cu stiluri specifice folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Mai jos este rezultatul operației anterioare.

![extract-content-between-paragraph-style-aspose-words-java](extract-content-from-comment-aspose-words-java-4.png)

## Extrageți Conținutul Între Anumite Rulări

Puteți extrage conținut între noduri inline, cum ar fi un **Run**, de asemenea. **Runs** din paragrafe diferite pot fi transmise ca markeri. Codul de mai jos arată cum să extrageți text specific între același nod **Paragraph**.

Următorul exemplu de cod arată cum să extrageți conținut între anumite runde ale aceluiași paragraf folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Textul extras este afișat pe consolă.

![extract-content-between-runs-aspose-words-java](extract-content-from-comment-aspose-words-java-5.png)

## Extrageți conținut folosind un câmp

Pentru a utiliza un câmp ca marker, nodul `FieldStart` ar trebui trecut. Ultimul parametru al metodei `ExtractContent` va defini dacă întregul câmp trebuie inclus sau nu. Să extragem conținutul dintre câmpul de îmbinare "FullName " și un paragraf din document. Folosim metoda [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) a clasei [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Aceasta va returna nodul **FieldStart** din numele câmpului de îmbinare transmis acestuia.

În cazul nostru, să setăm ultimul parametru trecut la metoda **ExtractContent** la false pentru a exclude câmpul din extracție. Vom reda conținutul extras la PDF.

Următorul exemplu de cod arată cum să extrageți conținut între un anumit câmp și paragraf din document folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Conținutul extras între câmp și paragraf, fără nodurile markerului de câmp și paragraf redate la PDF.

![extract-content-using-field-aspose-words-java](extract-content-from-comment-aspose-words-java-6.png)

## Extrageți conținut dintr-un marcaj

Într-un document, conținutul definit într-un marcaj este încapsulat de nodurile `BookmarkStart` și BookmarkEnd. Conținutul găsit între aceste două noduri alcătuiesc marcajul. Puteți trece oricare dintre aceste noduri ca orice marker, chiar și cele din marcaje diferite, atâta timp cât marcatorul de pornire apare înainte de marcatorul de încheiere din document.

În documentul nostru de probă, avem un marcaj, numit "Bookmark1". Conținutul acestui marcaj este evidențiat conținut în documentul nostru:

![extract-content-from-bookmark-aspose-words-java-1](extract-content-from-comment-aspose-words-java-7.png)

Vom extrage acest conținut într-un document nou folosind codul de mai jos. Opțiunea parametru **IsInclusive** arată cum să păstrați sau să renunțați la marcaj.

Următorul exemplu de cod arată cum se extrage conținutul la care se face referire la un marcaj folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Ieșirea extrasă cu parametrul `IsInclusive` setat la true. Copia va păstra și marcajul.

![extract-content-from-bookmark-aspose-words-java-2](extract-content-from-comment-aspose-words-java-8.png)

Ieșirea extrasă cu parametrul **IsInclusive** setat la false. Copia conține conținutul, dar fără marcaj.

![extract-content-from-bookmark-aspose-words-java-3](extract-content-from-comment-aspose-words-java-9.png)

## Extrageți conținut dintr-un comentariu

Un comentariu este format din nodurile CommentRangeStart, CommentRangeEnd și comentariu. Toate aceste noduri sunt în linie. Primele două noduri încapsulează conținutul din document la care se face referire prin comentariu, așa cum se vede în captura de ecran de mai jos.

Nodul **Comment** în sine este un [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) care poate conține paragrafe și rulări. Reprezintă mesajul comentariului văzut ca un balon de comentarii în panoul de revizuire. Deoarece acest nod este inline și descendent al unui corp, puteți extrage și conținutul din interiorul acestui mesaj.

În documentul nostru avem un comentariu. Să-l afișăm afișând marcajul în fila Revizuire:

![extract-content-from-comment-aspose-words-java-1](extract-content-from-comment-aspose-words-java-10.png)

Comentariul cuprinde titlul, primul paragraf și tabelul din a doua secțiune. Să extragem acest comentariu într-un document nou. Opțiunea **IsInclusive** dictează dacă comentariul în sine este păstrat sau eliminat.

Următorul exemplu de cod arată cum să faceți acest lucru este mai jos:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Mai întâi ieșirea extrasă cu parametrul `IsInclusive` setat la true. Copia va conține și comentariul.

![extract-content-from-comment-aspose-words-java-2](extract-content-from-comment-aspose-words-java-11.png)

În al doilea rând, ieșirea extrasă cu **isInclusive** setată la false. Copia conține conținutul, dar fără comentariu.

![extract-content-from-comment-aspose-words-java-12](extract-content-from-comment-aspose-words-java-12.png)

## Extrageți conținut folosind DocumentVisitor

Aspose.Words poate fi folosit nu numai pentru crearea documentelor Microsoft Word prin construirea lor dinamică sau îmbinarea șabloanelor cu date, ci și pentru analizarea documentelor pentru a extrage elemente de document separate, cum ar fi anteturi, subsoluri, paragrafe, tabele, imagini și altele. O altă sarcină posibilă este de a găsi tot textul de formatare sau stil specific.

Utilizați clasa [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) pentru a implementa acest scenariu de utilizare. Această clasă corespunde binecunoscutului model de design al vizitatorilor. Cu [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), puteți defini și executa operații personalizate care necesită enumerare peste arborele de documente.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) oferă un set de **VisitXXX** metode care sunt invocate atunci când se întâlnește un anumit element de document (nod). De exemplu, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) este apelat când se găsește începutul unui paragraf text și [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) este apelat când se găsește sfârșitul unui paragraf text. Fiecare metodă **DocumentVisitor.VisitXXX** acceptă obiectul corespunzător pe care îl întâlnește, astfel încât să îl puteți utiliza după cum este necesar (de exemplu, recuperați formatarea), de exemplu, atât [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph), cât și [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) acceptă un obiect [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

Fiecare metodă **DocumentVisitor.VisitXXX** returnează o valoare **VisitorAction** care controlează enumerarea nodurilor. Puteți solicita fie să continuați enumerarea, săriți nodul curent (dar continuați enumerarea), fie să opriți enumerarea nodurilor.

Aceștia sunt pașii pe care trebuie să îi urmați pentru a determina și extrage programatic diferite părți ale unui document:

- Creați o clasă derivată din [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Suprascrieți și furnizați implementări pentru unele sau toate metodele **DocumentVisitor.VisitXXX** pentru a efectua unele operații personalizate.
- Apelați [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) pe nodul de unde doriți să începeți enumerarea. De exemplu, dacă doriți să enumerați întregul document, utilizați [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) oferă implementări implicite pentru toate metodele **DocumentVisitor.VisitXXX**. Acest lucru facilitează crearea de noi vizitatori de documente, deoarece numai metodele necesare pentru un anumit vizitator trebuie înlocuite. Nu este necesar să suprascrieți toate metodele vizitatorilor.

Următorul exemplu arată cum să utilizați modelul vizitator pentru a adăuga noi operațiuni la modelul de obiect Aspose.Words. În acest caz, creăm un simplu convertor de documente într-un format text:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Extrageți Numai Text

Modalitățile de recuperare a textului din document sunt::

- Utilizați [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) cu [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) pentru a salva ca text simplu într-un fișier sau flux
- Utilizați [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) și treceți parametrul `SaveFormat.Text`. Intern, aceasta invocă salvare ca text într-un flux de memorie și returnează șirul rezultat
- Utilizați [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) pentru a prelua text cu toate Microsoft Word caractere de control, inclusiv coduri de câmp
- Implementați un [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) personalizat pentru a efectua extragerea personalizată

### Folosind `Node.GetText` și `Node.ToString`

Un document Word poate conține caractere de control care desemnează elemente speciale, cum ar fi câmpul, sfârșitul celulei, sfârșitul secțiunii etc. Lista completă a caracterelor posibile de control al cuvintelor este definită în clasa **ControlChar**. Metoda [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) returnează text cu toate caracterele caracterelor de control prezente în nod.

Apelarea ToString returnează reprezentarea textului simplu a documentului numai fără caractere de control. Pentru informații suplimentare privind exportul ca text simplu, a se vedea **Using SaveFormat.Text**.

Următorul exemplu de cod arată diferența dintre apelarea metodelor **GetText** și [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) pe un nod:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Folosind `SaveFormat.Text`

Acest exemplu salvează documentul după cum urmează:

- Filtrează caracterele de câmp și codurile de câmp, forma, nota de subsol, nota finală și referințele la comentarii
- Înlocuiește sfârșitul paragrafului [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) caractere cu [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinații
- Folosește codificarea UTF8

Următorul exemplu de cod arată cum să salvați un document în format TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extrageți imagini din forme

Poate fi necesar să extrageți imagini de document pentru a efectua unele sarcini. Aspose.Words vă permite să faceți și acest lucru.

Următorul exemplu de cod arată cum să extrageți imagini dintr-un document:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}