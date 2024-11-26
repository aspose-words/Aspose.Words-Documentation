---
title: Lucrul cu marcaje în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu marcaje
linktitle: Lucrul cu marcaje
description: "Cum să inserați, să obțineți, să mutați, să afișați sau să ascundeți marcajele folosind Python."
type: docs
weight: 180
url: /ro/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Marcajele identifică într-un document Microsoft Word locațiile sau fragmentele pe care le denumiți și le identificați pentru referințe viitoare. De exemplu, este posibil să utilizați un marcaj pentru a identifica textul pe care doriți să îl revizuiți ulterior. În loc să derulați documentul pentru a localiza textul, puteți accesa acesta utilizând caseta de dialog marcaj.

Acțiunile care pot fi efectuate cu marcaje folosind Aspose.Words sunt aceleași cu cele pe care le puteți efectua folosind Microsoft Word. Puteți introduce un marcaj nou, șterge, muta la un marcaj, obține sau seta un nume de marcaj, obține sau seta textul inclus în ea. Cu Aspose.Words, puteți utiliza, de asemenea, marcaje în rapoarte sau documente pentru a insera unele date în marcaj sau pentru a aplica formatare specială conținutului acestuia. De asemenea, puteți utiliza marcaje pentru a prelua text dintr-o anumită locație din document.

## Introduceți un marcaj

Utilizați [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) și [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) pentru a crea un marcaj marcând începutul și respectiv sfârșitul acestuia. Nu uitați să transmiteți același nume de marcaj la ambele metode. Marcajele dintr-un document se pot suprapune și se pot întinde pe orice interval. Marcajele sau marcajele formate prost cu nume duplicate vor fi ignorate atunci când documentul este salvat.

{{% alert color="primary" %}}

Toate spațiile albe din marcaje au fost înlocuite cu subliniere. Această restricție a venit din formatele de cuvinte MS, deoarece marcajele în formatele de cuvinte MS, cum ar fi DOCX sau DOC, nu pot avea spații albe. Cu toate acestea, PDF permite astfel de marcaje. Deci, acum, dacă trebuie să utilizați marcaje în contururi PDF sau XPS, le puteți folosi cu spații albe.

{{% /alert %}}

Următorul exemplu de cod arată cum să creați un marcaj nou:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Obțineți Marcaje

Uneori este necesar să obțineți o colecție de marcaje pentru a repeta prin marcaje sau în alte scopuri. Utilizați proprietatea [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) expusă de orice nod de document care returnează un obiect [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) reprezentând porțiunea documentului conținută în acest nod. Utilizați acest obiect pentru a prelua un [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) și apoi utilizați indexatorul de colectare pentru a obține un marcaj specific.

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestor exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Următorul exemplu de cod arată cum să obțineți marcaje dintr-o colecție de marcaje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Următorul exemplu de cod arată cum să obțineți sau să setați un nume de marcaj și un text:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Următorul exemplu de cod arată cum să marcați un tabel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Dacă schimbați numele unui marcaj într-un nume care există deja în document, nu va fi generată nicio eroare și numai primul marcaj va fi stocat atunci când salvați documentul.

Rețineți că unele marcaje din document sunt atribuite câmpurilor de formular. Trecerea la un astfel de marcaj și introducerea textului acolo introduce textul în codul câmpului formularului. Deși acest lucru nu va invalida câmpul Formular, textul inserat nu va fi vizibil deoarece devine parte a codului câmpului.

Următorul exemplu de cod arată cum să accesați coloanele tabelului marcat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Trecerea la un marcaj

Dacă trebuie să inserați conținut bogat (nu doar text simplu) într-un marcaj, ar trebui să utilizați [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) pentru a muta cursorul la marcaj și apoi să utilizați [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Metode și proprietăți pentru a insera conținut.

## Afișați Conținutul De Ascundere A Marcajelor

Întregul marcaj (*including the bookmarked content*) poate fi încapsulat în partea adevărată a câmpului `IF` Folosind Aspose.Words. Poate fi în așa fel încât câmpul `IF` să conțină un câmp de îmbinare imbricat în Expresie (*Left of Operator*) și în funcție de valoarea câmpului de îmbinare, câmpul `IF` arată sau ascunde conținutul marcajului în documentul Word.

Următorul exemplu de cod arată cum să afișați / ascundeți marcajele:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
