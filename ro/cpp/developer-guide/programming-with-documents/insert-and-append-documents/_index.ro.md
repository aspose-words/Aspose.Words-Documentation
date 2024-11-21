---
title: Inserați și adăugați documente în C++
second_title: Aspose.Words pentru C++
articleTitle: Inserați și adăugați documente
linktitle: Inserați și adăugați documente
description: "Combinați documentele într-unul singur: inserați sau adăugați un document într-unul nou sau existent folosind găsiți și înlocuiți, combinați câmpul, marcați sau pur și simplu la sfârșitul documentului."
type: docs
weight: 80
url: /ro/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să combinați mai multe documente într-unul singur. Puteți face acest lucru manual sau puteți utiliza Aspose.Words inserare sau Adăugare caracteristică.

Operația insert vă permite să inserați conținutul documentelor create anterior într-unul nou sau existent.

La rândul său, caracteristica Adăugare vă permite să adăugați un document numai la sfârșitul altui document.

Acest articol explică modul de inserare sau adăugare a unui document la altul în moduri diferite și descrie proprietățile comune pe care le puteți aplica în timp ce inserați sau adăugați documente.

## Inserarea unui Document

După cum sa menționat mai sus, în Aspose.Words un document este reprezentat ca un arbore de noduri, iar operația de inserare a unui document în altul este copierea nodurilor din primul arbore de documente în al doilea.

Puteți insera documente într-o varietate de locații în moduri diferite. De exemplu, puteți insera un document printr-o operație de înlocuire, un câmp de îmbinare în timpul unei operații de îmbinare sau printr-un marcaj.

De asemenea, puteți utiliza metoda [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), care este similară cu inserarea unui document în Microsoft Word, pentru a insera un document întreg în poziția curentă a cursorului fără importuri anterioare.

Următorul exemplu de cod arată cum să inserați un document folosind metoda `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Următoarele subsecțiuni descriu opțiunile în timpul cărora puteți insera un document în altul.

### Introduceți un Document în timpul operației Găsire și înlocuire {#insert-a-document-during-find-and-replace-operation}

Puteți insera documente în timp ce efectuați operațiuni de găsire și înlocuire. De exemplu, un document poate conține paragrafe cu textul [INTRODUCTION] și [CONCLUSION]. Dar în documentul final, trebuie să înlocuiți acele paragrafe cu conținutul obținut dintr-un alt document extern. Pentru a realiza acest lucru, va trebui să creați un handler pentru evenimentul replace.

Următorul exemplu de cod arată cum să creați un handler pentru evenimentul de înlocuire pentru a-l utiliza mai târziu în procesul de inserare:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Următorul exemplu de cod arată modul în care introduceți conținutul unui document în altul în timpul unei operații de găsire și înlocuire:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Introduceți un Document în timpul operației Mail Merge {#insert-a-document-during-mail-merge-operation}

Puteți insera un document într-un câmp de îmbinare în timpul unei operații mail merge. De exemplu, un șablon mail merge poate conține un câmp de îmbinare, cum ar fi [rezumat]. Dar în documentul final, trebuie să inserați conținut obținut dintr-un alt document extern în acest câmp de îmbinare. Pentru a realiza acest lucru, va trebui să creați un handler pentru evenimentul de îmbinare.

Următorul exemplu de cod arată cum să creați un handler pentru evenimentul de fuziune pentru a-l utiliza mai târziu în procesul de inserare:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Următorul exemplu de cod arată cum să inserați un document în câmpul de îmbinare utilizând handler-ul creat:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Introduceți un Document la marcaj

Puteți importa un fișier text într-un document și îl puteți insera imediat după un marcaj pe care l-ați definit în document. Pentru a face acest lucru, creați un paragraf marcat în care doriți să fie inserat documentul.

Următorul exemplu de codificare arată cum să inserați conținutul unui document într - un marcaj dintr-un alt document:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Rețineți că marcajul nu trebuie să includă mai multe paragrafe sau text pe care doriți să le apară în documentul final rezultat.

{{% /alert %}}

## Adăugați un Document

Este posibil să aveți un caz de utilizare în care trebuie să includeți pagini suplimentare dintr-un document până la sfârșitul unui document existent. Pentru a face acest lucru, trebuie doar să apelați metoda [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) pentru a adăuga un document la sfârșitul altuia.

{{% alert color="primary" %}}

Rețineți că [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) este o metodă la nivel de nod într-un document. De exemplu, puteți crea un paragraf, puteți seta proprietăți de formatare și apoi îl puteți adăuga ca copil la corp folosind metoda **AppendChild**.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați un document la sfârșitul unui alt document:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Importați și inserați manual nodurile {#import-and-insert-nodes-manually}

Aspose.Words vă permite să inserați și să adăugați documente automat fără cerințe anterioare de import. Cu toate acestea, dacă trebuie să inserați sau să adăugați un anumit nod al documentului dvs., cum ar fi o secțiune sau un paragraf, atunci mai întâi trebuie să importați manual acest nod.

Când trebuie să inserați sau să adăugați o secțiune sau un paragraf la altul, trebuie în esență să importați nodurile primului arbore de noduri de document în cel de-al doilea folosind metoda [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). După importarea nodurilor, trebuie să utilizați metoda [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) pentru a insera un nou nod după / înainte de nodul de referință. Acest lucru vă permite să personalizați procesul de inserare importând noduri dintr-un document și inserându-l în poziții date.

De asemenea, puteți utiliza metoda [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) pentru a adăuga un nou nod specificat la sfârșitul listei de noduri copil, de exemplu, dacă doriți să adăugați conținut la nivel de paragraf în loc de la nivel de secțiune.

Următorul exemplu de cod arată cum să importați manual noduri și să le inserați după un anumit nod folosind metoda **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Importul creează un nou nod care este o copie a nodului original și adecvat pentru inserarea în documentul de destinație.

{{% /alert %}}

Conținutul este importat în documentul de destinație secțiune cu secțiune, ceea ce înseamnă că setările, cum ar fi configurarea paginii și anteturile sau subsolurile, sunt păstrate în timpul importului. De asemenea, este util să rețineți că puteți defini setările de formatare atunci când inserați sau adăugați un document pentru a specifica modul în care două documente sunt unite.

## Proprietăți comune pentru Inserare și Adăugare documente {#common-properties-for-insert-and-append-documents}

Ambele [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) și [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) metodele acceptă [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) și [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) ca parametri de intrare. **ImportFormatMode** Vă permite să controlați modul în care formatarea documentului este îmbinată atunci când importați conținut dintr-un document în altul selectând diferite moduri de format, cum ar fi [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) și [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** Vă permite să selectați diferite opțiuni de import, cum ar fi [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), și [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words vă permite să ajustați vizualizarea unui document rezultat atunci când două documente sunt adăugate împreună într-o operație de inserare sau Adăugare utilizând proprietățile [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) și [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Proprietatea **PageSetup** conține toate atributele unei secțiuni, cum ar fi [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), și altele. Cel mai frecvent caz de utilizare este să setați proprietatea **SectionStart** pentru a defini dacă conținutul adăugat va apărea pe aceeași pagină sau va fi împărțit într-unul nou.

{{% alert color="primary" %}}

Rețineți că proprietățile **Section** și **PageSetup** nu controlează modul în care două documente sunt inserate/anexate împreună. Acestea vă permit doar să schimbați aspectul documentului de rezultat.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați un document la altul, păstrând în același timp conținutul să nu se împartă pe două pagini:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
