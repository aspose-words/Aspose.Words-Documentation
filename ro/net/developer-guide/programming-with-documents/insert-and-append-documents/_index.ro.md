---
title: Inserează şi adaugă documente în C#
second_title: Aspose.Words pentru .NET
articleTitle: Inserare și Anexare Documente
linktitle: Inserare și Anexare Documente
description: "Combinați documentele în una: inserați sau atașați un document într-unul nou sau existent folosind găsirea și înlocuirea, câmpul de fuziune, semnul de carte sau pur și simplu la sfârșitul documentului în C #."
type: docs
weight: 80
url: /ro/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să combinați mai multe documente într-unul singur. Poţi să faci asta manual sau poţi folosi caracteristica Aspose.Words inserare sau apendere.

Operația de inserare îți permite să introduci conținutul documentelor anterior create într-unul nou sau existent.

În schimb, caracteristica de atașare îți permite să adaugi un document numai la sfârșitul unui alt document.

Acest articol explica cum să inserați sau să adăugați un document la altul în diferite moduri și descrie proprietățile comune pe care le puteți aplica atunci când introduceți sau adăugați documente.

## Inseraţi un document {#insert-a-document}

După cum am menționat mai sus, în Aspose.Words un document este reprezentat ca un copac de noduri și operația de inserare a unui document într-altul este copierea nodurilor din primul copac de documente către cel de-al doilea.

Puteți insera documente într-o varietate de locații în diferite moduri. "De exemplu, poți insera un document printr-o operație de înlocuire, un câmp de fuziune în timpul unei operații de fuziune sau prin intermediul unui semn de carte".

"De asemenea, poți folosi metoda [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) sau metoda [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), care este asemănătoare cu inserarea unui document în Microsoft Word, pentru a insera întreg un document la poziția cursorului curent fără vreun import anterior."

Exemplul următor de cod arată cum să inserezi un document folosind metoda **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Exemplul de cod următor arată cum să inserați un document folosind metoda **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Subsecțiunile următoare descriu opțiunile prin care puteți insera un document în altul.

### Inserează un document în timpul operaţiei de găsire şi înlocuire {#insert-a-document-during-find-and-replace-operation}

Puteți insera documente în timp ce efectuați operațiuni de căutare și înlocuire. De exemplu, un document poate conține paragrafe cu textul [INTRODUCERE] și [CONCLUZIE]. Însă în documentul final trebuie să înlocuiţi acele paragrafe cu conţinutul obținut din alt document extern. Pentru asta, va trebui să creezi un manipulator pentru evenimentul "replace".

Următorul exemplu de cod arată cum să creezi un gestionar pentru evenimentul înlocuirii pentru a-l utiliza mai târziu în procesul de inserare:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Exemplul următor de cod arată cum să inserezi conținutul unui document în altul în timpul unei operații de căutare și înlocuire:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Inserare document în timpul Mail Merge operațiune {#insert-a-document-during-mail-merge-operation}

Puteţi introduce un document într-un câmp de fuziune în timpul unei mail merge operaţii. De exemplu, un șablon mail merge poate conține un câmp de fuziune cum ar fi [Rezumat]. "Dar în documentul final, trebuie să inserați conținut obținut dintr-un alt document extern în acest câmp de fuziune." Pentru asta, vei avea nevoie să creezi un mânuitor pentru evenimentul de fuziune.

Exemplul următor de cod arată cum să creezi un gestionar pentru evenimentul de fuziune pentru a-l utiliza mai târziu în procesul de inserare:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Exemplul de cod următor arată cum se poate introduce un document în câmpul de fuziune folosind manipulatorul creat:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Inseraţi un document la marcaj {#insert-a-document-at-bookmark}

Puteți importa un fișier text într-un document și să îl inserați imediat după un semn de carte pe care l-ați definit în document. Pentru asta, creați un paragraf marcat unde doriți ca documentul să fie inserat.

Exemplul de cod următor arată cum să inserezi conținutul unui document într-un semn de carte în alt document:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Notă că semnul de carte nu ar trebui să înconjoare mai multe paragrafe sau text pe care doriți să le apară în documentul dvs. rezultat.

{{% /alert %}}

## Adaugă un document {#append-a-document}

S-ar putea să aveți un caz de utilizare în care aveți nevoie să includeți pagini suplimentare dintr-un document la sfârșitul unui document existent. Pentru asta, trebuie doar să apelezi metoda [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) pentru a adăuga un document la sfârșitul altuia.

{{% alert color="primary" %}}

Notă că [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) este o metodă la nivel de nod într-un document. De exemplu, poți crea un paragraf, seta proprietățile de formatare și apoi atașa ca fiu al corpului folosind metoda **AppendChild**.

{{% /alert %}}

Exemplul următor de cod arată cum să atașați un document la sfârșitul unui alt document:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Import și Inserează Noduri Manual {#import-and-insert-nodes-manually}

Aspose.Words vă permite să inseraţi şi să lipiţi documente automat fără nici-un cerinţă de importare anterioară. Cu toate acestea, dacă aveți nevoie să inserați sau să atașați un anumit nod din documentul dvs., cum ar fi o secțiune sau un paragraf, atunci mai întâi trebuie să importați acest nod manual.

Când trebuie să inserezi sau să adaugi o secțiune sau un paragraf la altul, în esență ai nevoie să imporți nodurile din arborele de noduri al primului document în cel de-al doilea folosind metoda [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). După importarea nodurilor tale, trebuie să folosești metoda [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) pentru a insera un nou nod după/înainte de nodul referință. Acest lucru îți permite să personalizezi procesul de inserare prin importul nodurilor dintr-un document și inserarea acestora în anumite poziții.

Poţi folosi, de asemenea, metoda [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) pentru a adăuga un nod nou specificat la sfârşitul listei de noduri secundare, de exemplu, dacă doreşti să adaugi conţinut la nivel de paragraf în loc de la nivel de secţiune.

Exemplul de cod următor arată cum se importă manual noduri și se introduc după un anumit nod folosind metoda **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Importul creează un nod nou care este o copie a nodului inițial și potrivit pentru inserarea în documentul de destinație.

{{% /alert %}}

Conținutul este importat în secțiunea documentului de destinație pe rânduri, ceea ce înseamnă că setările precum formatarea paginii și antetele sau subsolurile sunt păstrate în timpul importului. Este de asemenea util să observaţi că puteţi defini setările de formatare atunci când inseraţi sau adăugaţi un document pentru a specifica cum două documente sunt combinate.

## Proprietăți comune pentru Inserare și Adăugare Documente {#common-properties-for-insert-and-append-documents}

Ambele [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) și [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) metode acceptă [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) și [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) ca parametri de intrare. Funcția **ImportFormatMode** vă permite să controlați cum se unifică formatarea documentului atunci când importați conținut dintr-un document în altul prin selectarea diferitelor moduri de formatare, cum ar fi [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) și [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). The **ImportFormatOptions** vă permite să selectați diferite opțiuni de import, cum ar fi [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) și [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words îți permite să ajustezi vizualizarea unui document rezultat atunci când două documente sunt adăugate împreună într-o operație de inserare sau suprapunere folosind proprietățile [Section](https://reference.aspose.com/words/net/aspose.words/section/) și [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). Proprietatea **PageSetup** conține toate atributele unei secțiuni, cum ar fi [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), și altele. Cazul de utilizare cel mai comun este să setați **SectionStart** proprietatea pentru a defini dacă conținutul adăugat va apărea pe aceeași pagină sau se va despărți într-una nouă.

{{% alert color="primary" %}}

Observă că proprietățile **Section** și **PageSetup** nu controlează modul în care două documente sunt inserate/apendate împreună. Ei îți permit doar să modifici aspectul documentului tău rezultat.

{{% /alert %}}

Exemplul următor de cod arată cum să atașați un document la altul, păstrând conținutul fără a se împărți pe două pagini:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
