---
title: Cum să extragi conținut între noduri de document
second_title: Aspose.Words pentru .NET
articleTitle: Extrage conținutul dintre noduri într-un document
linktitle: Extrage conținutul dintre noduri
description: "Extragerea conținutului documentului în diferite folosind C#."
type: docs
weight: 140
url: /ro/net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

"Când lucrezi cu documente este important să poți extrage cu ușurință conținut dintr-un domeniu specific din cadrul unui document." Însă conținutul poate consta din elemente complexe precum paragrafe, tabele, imagini, etc.

Indiferent de ceea ce conținut trebuie extras, metoda pentru extragerea acestui conținut va fi întotdeauna determinată de care noduri sunt selectate pentru a extrage conținut între. Acestea pot fi întregi corpuri de text sau rânduri simple de text.

Există multe situații posibile și, prin urmare, multe tipuri de noduri diferite de luat în considerare atunci când se extrage conținutul. De exemplu, ai putea dori să extragi conținut între:

"- Două paragrafe specifice"
- Rânduri specifice de text
"- Câmpuri de diferite tipuri, cum ar fi câmpuri de fuziune"
- Intervalul de pornire și de încheiere al unei marcaje sau comentarii
- Diverse tipuri de text conținute în secțiuni separate

În unele situații, s-ar putea să fie necesar să combinați tipuri de noduri diferite, cum ar fi extragerea conținutului dintre un paragraf și un câmp sau între o cursă și o semnătură.

Acest articol oferă implementarea codului pentru extragerea textului între noduri diferite, precum și exemple de scenarii comune.

{{% alert color="primary" %}}

Aceste exemple reprezintă doar câteva demonstrații ale posibilităților numeroase. Planificăm să facem din funcționalitatea de extragere a textului parte a API în viitor, iar nu va fi nevoie de cod suplimentar. Până atunci, simțiți-vă liber să postaţi solicitările dvs. cu privire la această funcţionalitate pe [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## De ce să extragi conținut

Adesea obiectivul de extragere a conținutului este să îl duplicăm sau să îl salvăm separat într-un nou document. De exemplu poţi extrage conţinutul şi:

- Copiază-l într-un document separat
- Convertează o parte specifică dintr-un document într-un fișier PDF sau imagine
- Duplica conținutul din document de multe ori
- Lucrează cu conținutul extras separat de restul documentului

Acest lucru se poate realiza ușor folosind Aspose.Words și implementarea codului de mai jos.

## Algoritmul de Extragere a Conținutului

Codul din această secțiune abordează toate situațiile posibile descrise mai sus cu un singur metod generalizat și reutilizabil. Conturul general al acestei tehnici implică:

1. Adunarea nodurilor care dictează zona de conținut care va fi extrasă din documentul tău. Recuperarea acestor noduri este gestionată de utilizator în codul lor, pe baza a ceea ce doresc să fie extrasă.
1. "Prin trecerea acestor noduri la metoda **ExtractContent** furnizată mai jos." Trebuie de asemenea să treceți un parametru boolean care indică dacă aceste noduri, care acționează ca marcatori, ar trebui sau nu incluse în extragere.
1. Recuperarea unui listă de conținut clonat (noduri copiate) specificate pentru a fi extrasă. Puteți utiliza această listă de noduri în orice mod aplicabil, de exemplu creând un nou document care conține doar conținutul selectat.

## Cum să Extragi Conținut

Pentru a extrage conținutul din document este necesar să apelați metoda **ExtractContent** de mai jos și să transmiteți parametrii potriviți. "Bazele acestei metode implică găsirea nodurilor de nivel bloc (paragraf și tabele) și clonarea lor pentru a crea copii identice." Dacă nodurile marcatoare trecute sunt de nivel bloc atunci metoda este capabilă să copieze pur și simplu conținutul la acel nivel și să îl adauge în matricea.

Cu toate acestea dacă nodurile marcatoare sunt în linie (un copil al unui paragraf) atunci situația devine mai complicată, deoarece este necesar să împarți paragraful la nodul în linie, fie el un rulare, câmpuri de marcaj etc. Conținutul din nodurile părinte clone care nu se află între marcatori este eliminat. Acest proces este utilizat pentru a se asigura că nodurile în linie vor păstra încă formatarea paragrafului părinte. Metoda va efectua, de asemenea, verificări asupra nodurilor trecute ca parametri și aruncă o excepție dacă oricare dintre noduri este invalidă. Parametrii care vor fi trecuți la acest metod sunt:

1. **StartNode** şi **EndNode**. Primul și al doilea parametru sunt nodurile care definesc unde începe și se termină, în mod corespunzător, extragerea conținutului. Aceste noduri pot fi atât de nivel bloc ( [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) ), cât și de nivel în linie ( e.g. [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) etc.):
   1. Pentru a trece un câmp, ar trebui să treci obiectul **FieldStart** corespunzător
   1. Pentru a trece bookmark-uri, nodurile **BookmarkStart** și [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) ar trebui trecute
   1. Pentru a trece comentariile, nodurile [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) ar trebui folosite
1. **IsInclusive**. Definiţionează dacă marcajele sunt incluse în extragere sau nu. Dacă această opțiune este setată la false și nodul (sau nodurile) același sau consecutive sunt trecute, atunci va fi returnat un șir gol:
   1. Dacă un **FieldStart** nod este trecut atunci această opțiune definește dacă întregul câmp trebuie inclus sau exclus
   1. Dacă un nod **BookmarkStart** sau **BookmarkEnd** este trecut, această opțiune definește dacă semnul de carte este inclus sau doar conținutul dintre intervalul de marcaj.
   1. Dacă un nod **CommentRangeStart** sau **CommentRangeEnd** este trecut, această opțiune definește dacă comentariul în sine este de inclus sau doar conținutul din domeniul de comentarii.

Implementarea metodei **ExtractContent** poate fi găsită la [on Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Acest metoda va fi menționat în scenariile din acest articol.

Vom defini, de asemenea, o metodă personalizată pentru a genera cu ușurință un document din nodurile extrase. Această metodă este utilizată în multe dintre scenariile de mai jos și pur și simplu creează un nou document și importă conținutul extras în acesta.

Exemplul următor de cod arată cum să se ia o listă de noduri și să le insereze într-un nou document:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Extrage conținut între paragrafe

Aceasta demonstrează cum să folosești metoda de mai sus pentru a extrage conținut între paragrafele specifice. În acest caz vrem să extragem corpul scrisorii găsit în prima jumătate a documentului. Putem să spunem că acesta este între al 7-lea și al 11-lea paragraf.

Codul de mai jos realizează această sarcină. Paragrafe adecvate sunt extrase folosind metoda [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) pe document și trecând indici specifici. Noi trecem apoi acești noduri la metoda **ExtractContent** și afirmăm că acestea sunt de inclus în extragere. Această metodă va returna conținutul copiat între aceste noduri care sunt apoi inserate într-un nou document.

Exemplul de cod următor arată cum să extragem conținutul dintre anumite paragrafe folosind metoda `ExtractContent` de mai sus:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrage conținut între tipuri diferite de noduri

Putem extrage conținutul între orice combinații de noduri la nivel de bloc sau în linie. În acest scenariu de mai jos, vom extrage conținutul dintre primul paragraf și tabelul din secțiunea a doua inclusiv. Obținem nodurile marcatoare prin apelarea metodelor [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) și [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) pe a doua secțiune a documentului pentru a recupera nodurile corespunzătoare **Paragraph** și **Table**. Pentru o variație ușoară haideți să duplicăm conținutul și să-l inserăm dedesubtul originalului.

Exemplul de cod următor arată cum să extrag conținutul dintre un paragraf și o masă folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fişierul model al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrăge conținutul dintre paragrafe pe baza stilului

Poate că va trebui să extrageţi conţinutul între paragrafe de acelaşi sau de alt stil, cum ar fi între paragrafele marcate cu stiluri de titluri. Codul de mai jos arată cum se poate face asta. Este un exemplu simplu care va extrage conținutul dintre prima instanță de stil "Heading 1" și "Header 3" fără a extrage antetele în sine. Pentru a face acest lucru, am stabilit ultimul parametru la false, care specifică că nodurile de marcaj nu trebuie incluse.

În implementarea corectă, aceasta ar trebui să fie rulată într-o buclă pentru a extrage conținutul dintre toate paragrafele acestui stil din document. Conținutul extras este copiat într-un nou document.

Exemplul următor de cod arată cum să extragi conținut între paragrafele cu stiluri specifice folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrage conținutul între rulări specifice

Puteți extrage conținut între noduri în linie, cum ar fi un [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** din diferite paragrafe pot fi trecute ca marcatori. Codul de mai jos arată cum să extragi text specific între același nod **Paragraph**.

Exemplul de cod următor arată cum să extrage conținut între rulări specifice ale aceluiași paragraf folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fişierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrage Conținut folosind un câmp

Pentru a folosi un câmp ca marcator, nodul `FieldStart` ar trebui transmis. Ultimul parametru al metodei `ExtractContent` va defini dacă întregul câmp este să fie inclus sau nu. "Să extragem conținutul dintre câmpul de fuziune "Nume complet" și un paragraf în document." Noi folosim metoda [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) a clasei [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Acest lucru va returna nodul **FieldStart** din numele câmpului de fuziune trecut la el.

În cazul nostru haideți să setăm ultimul parametru trecut la metoda **ExtractContent** la false pentru a exclude câmpul din extracție. Noi vom redarea conținutului extras în format PDF.

Exemplul următor de cod arată cum să extrageți conținutul dintre un anumit câmp și paragraf în document folosind metoda **ExtractContent**":

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrage conținut dintr-un semn de carte

În document, conținutul care este definit în interiorul unei insigne este încapsulat de nodurile `BookmarkStart` și BookmarkEnd. Conținutul găsit între acești doi noduri formează marcajul de carte. "Puteți trece unul din aceste noduri ca orice marcaj, chiar și cele din diferite marcaje, atâta timp cât marcajul de început apare înainte de marcajul final în document." Vom extrage acest conținut într-un nou document folosind codul de mai jos. Opțiunea parametrului **IsInclusive** arată cum să se păstreze sau să se abandoneze marcajul.

Exemplul de cod următor arată cum să se extragă conținutul referențiat la un semn de carte folosind metoda **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Puteţi descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrage conținut dintr-un comentariu

Un comentariu este format din nodurile CommentRangeStart, CommentRangeEnd și Comment. Toate aceste noduri sunt în linie. Cele două prime noduri încapsulează conținutul din document care este referit de comentariu, așa cum se vede în captura de ecran de mai jos.

Node-ul **Comment** în sine este un [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) care poate conţine paragrafe şi rânduri. Il reprezintă mesajul comentariului așa cum apare ca o bule de comentariu în panoul de revizuire. Pe măsură ce nodul este în linie și un descendent al unui corp, puteți extrage conținutul din interiorul acestui mesaj de asemenea.

Comentariul încapsulează titlul, primul paragraf și tabelul din secțiunea a doua. Să extragem acest comentariu într-un nou document. Opțiunea **IsInclusive** dictează dacă este păstrat sau eliminat comentariul însuși.

Exemplul de cod următor arată cum să faceţi acest lucru:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cum să extragi conținut folosind DocumentVisitor

Folosește clasa [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) pentru a implementa acest scenariu de utilizare. Această clasă corespunde modelului de proiectare "Visitor". Cu **DocumentVisitor** **,** poţi defini şi executa operaţii personalizate care necesită enumerarea peste arborele de documente.

**DocumentVisitor** oferă un set de **VisitXXX** metode care sunt invocate atunci când se întâlnește un anumit element de document (nod). De exemplu, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) este chemat când se găsește începutul unui paragraf și [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) este chemat când se găsește sfârșitul unui paragraf. Fiecare **DocumentVisitor.VisitXXX** metodă acceptă obiectul corespunzător pe care îl întâlnește, astfel încât să îl poți folosi după cum este necesar (să spui să recuperezi formatarea), de exemplu, atât **DocumentVisitor.VisitParagraphStart**, cât și **DocumentVisitor.VisitParagraphEnd** acceptă un [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) obiect.

Fiecare metodă **DocumentVisitor.VisitXXX** returnează o valoare [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) care controlează enumerarea nodurilor. Puteți solicita fie să continuați enumerarea, să săriți peste nodul curent (dar să continuați enumerarea) sau să opriți enumerarea nodurilor.

Acestea sunt pașii pe care ar trebui să îi urmezi pentru a determina și extrage diferitele părți ale unui document în mod programatic:

- Creează o clasă derivată din **DocumentVisitor**
"- Suprascrie și furnizează implementări pentru unele sau toate metodele **DocumentVisitor.VisitXXX** pentru a efectua operații personalizate"
- Apelați [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) la nodul din care doriți să începeți enumerarea, de exemplu, dacă doriți să enumerați întregul document, utilizați [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** furnizează implementări implicite pentru toate metodele **DocumentVisitor.VisitXXX**. Aceasta face crearea de noi vizitatori de documente mai ușoară, deoarece doar metodele necesare pentru un anumit vizitator trebuie să fie suprascrise. Nu este necesar să se suprascrie toate metodele vizitatorului.

Exemplul de mai jos arată cum se foloseşte modelul Visitor pentru a adăuga noi operaţii la modelul obiectelor Aspose.Words. În acest caz, creăm un convertor simplu de documente într-un format text:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cum să extragi textul doar

Calea de a recupera textul din document este:

"- Folosiți [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) cu [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) pentru a salva ca text simplu într-un fișier sau flux"
- Folosește [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) și transmite parametrul **SaveFormat.Text**. Internaţional, aceasta invocă salvarea ca text într-un flux de memorie şi returnează şirul rezultat
- Utilizați [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) pentru a obține text cu toate Microsoft Word caractere de control, inclusiv coduri de câmp
- Implementați un [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) personalizat pentru a efectua extragerea particularizată

### Folosind `Node.GetText` și `Node.ToString`

Un document Word poate conține caractere de control care desemnează elemente speciale precum câmp, sfârșit de celulă, sfârșit de secțiune, etc. Lista completă de posibile caractere de control Word este definită în clasa **ControlChar**. Metoda "The **Node.GetText**" returnează textul cu toți caracterele de control prezente în nod.

Apelarea **ToString** returnează reprezentarea text simplu a documentului fără caracterele de control. Pentru informații suplimentare privind exportul ca fișier text, vezi secțiunea următoare **Folosind "SaveFormat.Text"**.

Exemplul de cod următor arată diferența dintre apelarea metodei **GetText** și a metodei **ToString** pe un nod:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Folosind `SaveFormat.Text`

Acest exemplu salvează documentul după cum urmează:

- Filtrează caracterele de câmp și codurile de câmp, referințe de notă de subsol, note de subsol și comentarii
"- Înlocuiește sfârșitul paragrafului **ControlChar.Cr** caractere cu **ControlChar.CrLf** combinații"
- Folosește codificarea UTF8

Exemplul de cod următor arată cum să salveze un document în format .txt:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Extrage imagini din forme

Poate fi necesar să extragi imaginile de la document pentru a efectua anumite sarcini. Aspose.Words îți permite și asta.

Exemplul următor de cod arată cum se extrag imaginile dintr-un document:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
