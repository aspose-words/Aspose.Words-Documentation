---
title: Inserați și adăugați documente
second_title: Aspose.Words pentru Python via .NET
articleTitle: Inserați și adăugați documente
linktitle: Inserați și adăugați documente
description: "Combinați documentele într-unul singur: inserați sau adăugați un document într-unul nou sau existent folosind găsiți și înlocuiți, combinați câmpul, marcați sau pur și simplu la sfârșitul documentului în Python."
type: docs
weight: 80
url: /ro/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Uneori este necesar să combinați mai multe documente într-unul singur. Puteți face acest lucru manual sau puteți utiliza Aspose.Words inserare sau Adăugare caracteristică.

Operația insert vă permite să inserați conținutul documentelor create anterior într-unul nou sau existent.

La rândul său, caracteristica Adăugare vă permite să adăugați un document numai la sfârșitul altui document.

Acest articol explică modul de inserare sau adăugare a unui document la altul în moduri diferite și descrie proprietățile comune pe care le puteți aplica în timp ce inserați sau adăugați documente.

## Inserarea unui Document

După cum sa menționat mai sus, în Aspose.Words un document este reprezentat ca un arbore de noduri, iar operația de inserare a unui document în altul este copierea nodurilor din primul arbore de documente în al doilea.

Puteți insera documente într-o varietate de locații în moduri diferite. De exemplu, puteți insera un document printr-o operație de înlocuire, un câmp de îmbinare în timpul unei operații de îmbinare sau printr-un marcaj.

De asemenea, puteți utiliza metoda [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) sau [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), care este similară cu inserarea unui document în Microsoft Word, pentru a insera un document întreg în poziția curentă a cursorului fără importuri anterioare.

Următorul exemplu de cod arată cum să inserați un document folosind metoda **insert_document**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Următorul exemplu de cod arată cum să inserați un document folosind metoda **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Următoarele subsecțiuni descriu opțiunile în timpul cărora puteți insera un document în altul.

### Introduceți un Document la marcaj

Puteți importa un fișier text într-un document și îl puteți insera imediat după un marcaj pe care l-ați definit în document. Pentru a face acest lucru, creați un paragraf marcat în care doriți să fie inserat documentul.

Următorul exemplu de codificare arată cum să inserați conținutul unui document într - un marcaj dintr-un alt document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Rețineți că marcajul nu trebuie să includă mai multe paragrafe sau text pe care doriți să le apară în documentul final rezultat.

{{% /alert %}}

## Adăugați un Document

Este posibil să aveți un caz de utilizare în care trebuie să includeți pagini suplimentare dintr-un document până la sfârșitul unui document existent. Pentru a face acest lucru, trebuie doar să apelați metoda [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) pentru a adăuga un document la sfârșitul altuia.

{{% alert color="primary" %}}

Rețineți că [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) este o metodă la nivel de nod într-un document. De exemplu, puteți crea un paragraf, puteți seta proprietăți de formatare și apoi îl puteți adăuga ca copil la corp folosind metoda [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați un document la sfârșitul unui alt document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importați și inserați manual nodurile

Aspose.Words vă permite să inserați și să adăugați documente automat fără cerințe anterioare de import. Cu toate acestea, dacă trebuie să inserați sau să adăugați un anumit nod al documentului dvs., cum ar fi o secțiune sau un paragraf, atunci mai întâi trebuie să importați manual acest nod.

Când trebuie să inserați sau să adăugați o secțiune sau un paragraf la altul, trebuie în esență să importați nodurile primului arbore de noduri de document în cel de-al doilea folosind metoda [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). După importarea nodurilor, trebuie să utilizați metoda [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) pentru a insera un nou nod după / înainte de nodul de referință. Acest lucru vă permite să personalizați procesul de inserare importând noduri dintr-un document și inserându-l în poziții date.

De asemenea, puteți utiliza metoda [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) pentru a adăuga un nou nod specificat la sfârșitul listei de noduri copil, de exemplu, dacă doriți să adăugați conținut la nivel de paragraf în loc de la nivel de secțiune.

Următorul exemplu de cod arată cum să importați manual noduri și să le inserați după un anumit nod folosind metoda [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Importul creează un nou nod care este o copie a nodului original și adecvat pentru inserarea în documentul de destinație.

{{% /alert %}}

Conținutul este importat în documentul de destinație secțiune cu secțiune, ceea ce înseamnă că setările, cum ar fi configurarea paginii și anteturile sau subsolurile, sunt păstrate în timpul importului. De asemenea, este util să rețineți că puteți defini setările de formatare atunci când inserați sau adăugați un document pentru a specifica modul în care două documente sunt unite.

## Proprietăți comune pentru inserarea și adăugarea documentelor

Ambele metode [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) și [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) acceptă [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) și [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) ca parametri de intrare. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) vă permite să controlați modul în care formatarea documentului este îmbinată atunci când importați conținut dintr-un document în altul selectând diferite moduri de format, cum ar fi [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) și [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) vă permite să selectați diferite opțiuni de import, cum ar fi [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), și [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words vă permite să ajustați vizualizarea unui document rezultat atunci când două documente sunt adăugate împreună într-o operație de inserare sau Adăugare utilizând [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) și [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Proprietatea [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) conține toate atributele unei secțiuni, cum ar fi [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), și altele. Cel mai frecvent caz de utilizare este să setați proprietatea [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) pentru a defini dacă conținutul adăugat va apărea pe aceeași pagină sau va fi împărțit într-unul nou.

{{% alert color="primary" %}}

Rețineți că [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) și [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) nu controlează modul în care două documente sunt inserate/anexate împreună. Acestea vă permit doar să schimbați aspectul documentului de rezultat.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați un document la altul, păstrând în același timp conținutul să nu se împartă pe două pagini:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
