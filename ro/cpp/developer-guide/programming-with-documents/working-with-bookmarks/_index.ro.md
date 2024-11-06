---
title: Lucrul cu marcaje în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu marcaje
linktitle: Lucrul cu marcaje
description: "Înțelegerea conceptelor de marcaj și modul în care marcajul poate fi utilizat în programul dvs. folosind C++."
type: docs
weight: 180
url: /ro/cpp/working-with-bookmarks/
---

Marcajele identifică într-un document Microsoft Word locațiile sau fragmentele pe care le denumiți și le identificați pentru referințe viitoare. De exemplu, este posibil să utilizați un marcaj pentru a identifica textul pe care doriți să îl revizuiți ulterior. În loc să derulați documentul pentru a localiza textul, puteți accesa acesta utilizând caseta de dialog marcaj.

Acțiunile care pot fi efectuate cu marcaje folosind Aspose.Words sunt aceleași cu cele pe care le puteți efectua folosind Microsoft Word. Puteți introduce un marcaj nou, șterge, muta la un marcaj, obține sau seta un nume de marcaj, obține sau seta textul inclus în ea. Cu Aspose.Words, puteți utiliza, de asemenea, marcaje în rapoarte sau documente pentru a insera unele date în marcaj sau pentru a aplica formatare specială conținutului acestuia. De asemenea, puteți utiliza marcaje pentru a prelua text dintr-o anumită locație din document.

## Introduceți un marcaj

Utilizați [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) și [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) pentru a crea un marcaj marcând începutul și respectiv sfârșitul acestuia. Nu uitați să transmiteți același nume de marcaj la ambele metode. Marcajele dintr-un document se pot suprapune și se pot întinde pe orice interval. Marcajele sau marcajele formate prost cu nume duplicate vor fi ignorate atunci când documentul este salvat.

Următorul exemplu de cod arată cum să creați un marcaj nou:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Obțineți Marcaje

Uneori este necesar să obțineți o colecție de marcaje pentru a repeta prin marcaje sau în alte scopuri. Utilizați proprietatea [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) expusă de orice nod de document care returnează un obiect [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) reprezentând porțiunea documentului conținută în acest nod. Utilizați acest obiect pentru a prelua un [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) și apoi utilizați indexatorul de colectare pentru a obține un marcaj specific.

Următorul exemplu de cod arată cum să obțineți marcaje dintr-o colecție de marcaje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Următorul exemplu de cod arată cum să obțineți sau să setați un nume de marcaj și un text:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Următorul exemplu de cod arată cum să marcați un tabel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Dacă schimbați numele unui marcaj într-un nume care există deja în document, nu va fi generată nicio eroare și numai primul marcaj va fi stocat atunci când salvați documentul.

{{% alert color="primary" %}}

Rețineți că unele marcaje din document sunt atribuite câmpurilor de formular. Trecerea la un astfel de marcaj și introducerea textului acolo introduce textul în codul câmpului formularului. Deși acest lucru nu va invalida câmpul Formular, textul inserat nu va fi vizibil deoarece devine parte a codului câmpului.

{{% /alert %}}

## Trecerea la un marcaj

Dacă trebuie să inserați conținut bogat (nu doar text simplu) într-un marcaj, ar trebui să utilizați [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) pentru a muta cursorul la marcaj și apoi să utilizați metodele și proprietățile [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pentru a insera conținut.

## Afișați Conținutul De Ascundere A Marcajelor

Întregul marcaj (*including the bookmarked content*) poate fi încapsulat în partea adevărată a câmpului `IF` Folosind Aspose.Words. Poate fi în așa fel încât câmpul `IF` să conțină un câmp de îmbinare imbricat în Expresie (*Left of Operator*) și în funcție de valoarea câmpului de îmbinare, câmpul `IF` arată sau ascunde conținutul marcajului în documentul Word.

Următorul exemplu de cod arată cum să afișați / ascundeți marcajele:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
