---
title: Extrageți Conținutul Între Nodurile Documentului
second_title: Aspose.Words pentru Python
articleTitle: Extrageți conținutul între nodurile dintr-un Document
linktitle: Extrageți Conținutul Între Noduri
description: "Cum să extrageți conținut specific dintr-un interval din document folosind cu ușurință Python."
type: docs
weight: 140
url: /ro/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Pentru a extrage conținutul din documentul dvs., trebuie să apelați metoda **extract_content** de mai jos și să treceți parametrii corespunzători. Baza de bază a acestei metode implică găsirea nodurilor la nivel de bloc (paragrafe și tabele) și clonarea acestora pentru a crea copii identice. Dacă nodurile de marcare trecute sunt la nivel de bloc, atunci metoda este capabilă să copieze pur și simplu conținutul de la acel nivel și să-l adauge la matrice.

Cu toate acestea, dacă nodurile marker sunt inline (un copil al unui paragraf), atunci situația devine mai complexă, deoarece este necesar să se împartă paragraful la nodul inline, fie că este vorba de o rulare, câmpuri de marcaj etc. Conținutul din nodurile părinte clonate care nu sunt prezente între markeri este eliminat. Acest proces este utilizat pentru a se asigura că nodurile inline vor păstra în continuare formatarea paragrafului părinte. Metoda va rula, de asemenea, verificări asupra nodurilor trecute ca parametri și aruncă o excepție dacă oricare dintre noduri este nevalid. Parametrii care trebuie transmiși acestei metode sunt::

1. **startNode** și **endNode**. Primii doi parametri sunt nodurile care definesc unde trebuie să înceapă și să se termine extragerea conținutului. Aceste noduri pot fi atât la nivel de bloc ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) sau la nivel de linie (de exemplu [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) etc.):
   1. Pentru a trece un câmp, trebuie să treceți obiectul [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) corespunzător.
   1. Pentru a trece marcajele, nodurile [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) și [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) trebuie trecute.
   1. Pentru a transmite comentarii, ar trebui utilizate nodurile [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) și [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **isInclusive**. Definește dacă markerii sunt incluși în extracție sau nu. Dacă această opțiune este setată la false și același nod sau noduri consecutive sunt transmise, atunci o listă goală va fi returnată:
   1. Dacă un nod [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) este trecut, atunci această opțiune definește dacă întregul câmp trebuie inclus sau exclus.
   1. Dacă este trecut un nod [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) sau [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), Această opțiune definește dacă marcajul este inclus sau doar conținutul dintre intervalul de marcaje.
   1. Dacă un nod [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) sau [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) este trecut, această opțiune definește dacă comentariul în sine trebuie inclus sau doar conținutul din intervalul de comentarii.

Implementarea metodei **extract_content** Puteți găsi [aici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Această metodă va fi menționată în scenariile din acest articol.

De asemenea, vom defini o metodă personalizată pentru a genera cu ușurință un document din nodurile extrase. Această metodă este utilizată în multe dintre scenariile de mai jos și creează pur și simplu un document nou și importă conținutul extras în acesta.

Următorul exemplu de cod arată cum să luați o listă de noduri și să le inserați într-un document nou:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extrageți Conținutul Între Paragrafe

Acest lucru demonstrează modul de utilizare a metodei de mai sus pentru a extrage conținut între paragrafe specifice. În acest caz, dorim să extragem corpul scrisorii găsite în prima jumătate a documentului. Putem spune că acest lucru este între 7 Th și 11 TH paragraf.

Codul de mai jos îndeplinește această sarcină. Paragrafele corespunzătoare sunt extrase folosind metoda [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) din document și trecând indicii specificați. Apoi trecem aceste noduri la metoda **extract_content** și afirmăm că acestea trebuie incluse în extracție. Această metodă va returna conținutul copiat între aceste noduri care sunt apoi inserate într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținutul între paragrafe specifice folosind metoda **extract_content** de mai sus:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți conținutul între diferite tipuri de noduri

Putem extrage conținut între orice combinații de noduri la nivel de bloc sau inline. În acest scenariu de mai jos vom extrage conținutul dintre primul paragraf și tabelul din a doua secțiune inclusiv. Obținem nodurile markerilor apelând metoda [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) și [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) din a doua secțiune a documentului pentru a prelua nodurile corespunzătoare [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Pentru o ușoară variație, să duplicăm conținutul și să-l introducem sub original.

Următorul exemplu de cod arată cum să extrageți conținutul dintre un paragraf și un tabel folosind metoda **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți conținutul între paragrafe pe baza stilului

Poate fi necesar să extrageți conținutul între paragrafe de același stil sau diferite, cum ar fi între paragrafe marcate cu stiluri de titlu.

Codul de mai jos arată cum se poate realiza acest lucru. Este un exemplu simplu care va extrage conținutul dintre prima instanță a stilurilor "Heading 1" și "Header 3" fără a extrage și titlurile. Pentru a face acest lucru, setăm ultimul parametru la false, care specifică faptul că nodurile marker nu ar trebui incluse.

Într-o implementare corectă, aceasta ar trebui să fie executată într-o buclă pentru a extrage conținut între toate paragrafele acestor stiluri din document. Conținutul extras este copiat într-un document nou.

Următorul exemplu de cod arată cum să extrageți conținut între paragrafe cu stiluri specifice folosind metoda **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți Conținutul Între Anumite Rulări

Puteți extrage conținut între noduri inline, cum ar fi un [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), de asemenea. Rulările din diferite paragrafe pot fi transmise ca markeri. Codul de mai jos arată cum să extrageți text specific între același nod [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

Următorul exemplu de cod arată cum să extrageți conținut între anumite runde ale aceluiași paragraf folosind metoda **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți conținut folosind un câmp

Pentru a utiliza un câmp ca marker, nodul [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ar trebui să fie trecut. Ultimul parametru al metodei **extract_content** va defini dacă întregul câmp trebuie inclus sau nu. Să extragem conținutul dintre câmpul de îmbinare "FullName " și un paragraf din document. Folosim metoda [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) a clasei [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Aceasta va returna nodul [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) din numele câmpului de îmbinare transmis acestuia.

În cazul nostru, să setăm ultimul parametru trecut la metoda **extract_content** la `False` pentru a exclude câmpul din extracție. Vom reda conținutul extras la PDF.

Următorul exemplu de cod arată cum să extrageți conținut între un anumit câmp și paragraf din document folosind metoda **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți conținut dintr-un marcaj

Într-un document conținutul care este definit într-un marcaj este încapsulat de nodurile [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) și [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Conținutul găsit între aceste două noduri alcătuiesc marcajul. Puteți trece oricare dintre aceste noduri ca orice marker, chiar și cele din marcaje diferite, atâta timp cât marcatorul de pornire apare înainte de marcatorul de încheiere din document. Vom extrage acest conținut într-un document nou folosind codul de mai jos. Opțiunea parametru **isInclusive** arată cum să păstrați sau să renunțați la marcaj.

Următorul exemplu de cod arată cum se extrage conținutul la care se face referire la un marcaj folosind metoda **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extrageți conținut dintr-un comentariu

Un comentariu este format din nodurile [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) și [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Toate aceste noduri sunt în linie. Primele două noduri încapsulează conținutul din document la care se face referire prin comentariu, așa cum se vede în captura de ecran de mai jos. Nodul [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) în sine este un [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) care poate conține paragrafe și rulează. Reprezintă mesajul comentariului văzut ca un balon de comentarii în panoul de revizuire. Deoarece acest nod este inline și descendent al unui corp, puteți extrage și conținutul din interiorul acestui mesaj.

Comentariul cuprinde titlul, primul paragraf și tabelul din a doua secțiune. Să extragem acest comentariu într-un document nou. Opțiunea **isInclusive** dictează dacă comentariul în sine este păstrat sau eliminat.

Următorul exemplu de cod arată cum se face acest lucru:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cum se extrage doar Text

Modalitățile de recuperare a textului din document sunt::

- Utilizați [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) pentru a salva ca text simplu într-un fișier sau flux
- Utilizați [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) și treceți parametrul [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Intern, aceasta invocă salvare ca text într-un flux de memorie și returnează șirul rezultat
- Utilizați [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) pentru a prelua text cu toate Microsoft Word caractere de control, inclusiv coduri de câmp

### Folosind Nod.get_text și Node. to_string

Un document Word poate conține caractere de control care desemnează elemente speciale, cum ar fi câmpul, sfârșitul celulei, sfârșitul secțiunii etc. Lista completă a caracterelor posibile de control al cuvintelor este definită în clasa [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Metoda [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) returnează text cu toate caracterele caracterelor de control prezente în nod.

Apelarea [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) returnează reprezentarea textului simplu a documentului numai fără caractere de control. Pentru informații suplimentare privind exportul ca text simplu, a se vedea utilizarea [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text).

Următorul exemplu de cod arată diferența dintre apelarea metodelor [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) și [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) pe un nod:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Folosind `SaveFormat.Text`

Acest exemplu salvează documentul după cum urmează:

- Filtrează caracterele de câmp și codurile de câmp, forma, nota de subsol, nota finală și referințele la comentarii
- Înlocuiește sfârșitul paragrafului **ControlChar.Cr** caractere cu **ControlChar.CrLf** combinații
- Folosește codificarea UTF8

Următorul exemplu de cod arată cum să salvați un document în format TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extrageți imagini din forme

Poate fi necesar să extrageți imagini de document pentru a efectua unele sarcini. Aspose.Words vă permite să faceți și acest lucru.

Următorul exemplu de cod arată cum să extrageți imagini dintr-un document:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
