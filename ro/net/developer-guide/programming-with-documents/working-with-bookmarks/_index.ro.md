---
title: Lucrând cu semne de carte în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrând cu Marcaje
linktitle: Lucrând cu Marcaje
description: "Înțelegerea conceptelor de marcaje de carte și modul în care un marcaj de carte poate fi utilizat în programul dvs. utilizând C#."
type: docs
weight: 180
url: /ro/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Semnele de carte identifică în Microsoft Word documente locațiile sau fragmente pe care le numiți și identificați pentru referințe ulterioare. Spre exemplu, ai putea folosi un semn de carte pentru a identifica textul pe care vrei să-l revii mai târziu. În loc să derulezi prin document pentru a găsi textul, poți ajunge la el folosind caseta de dialog marcaj.

Acţiunile care pot fi efectuate cu marcaje folosind Aspose.Words sunt aceleaşi ca şi cele pe care le poţi efectua folosind Microsoft Word. Puteți insera un nou semn de carte, șterge, muta la un semn de carte, obține sau seta un nume de semn de carte, obține sau seta textul cuprins în acesta.

## Introduce un semn de carte

Utilizați [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) și [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) pentru a crea o semnă de carte prin marcarea începutului și sfârșitului său, respectiv. Nu uitaţi să treci aceeaşi nume de semn de carte la ambele metode. Semnele de carte dintr-un document pot suprapune și cuprinde orice interval. Semnele de carte prost formate sau semne de carte cu nume duplicate vor fi ignorate atunci când documentul este salvat.

{{% alert color="primary" %}}

Toate spațiile albe din marcaje au fost înlocuite cu liniuțe. Această restricție provine din Microsoft Word formate, deoarece marcajele de carte în formate Word precum DOCX sau DOC nu pot avea spații albe. Însă PDF permite astfel de semne de carte. Deci acum, dacă ai nevoie să folosești marcaje în PDF sau XPS schițe, poți folosi cu spații albe.

{{% /alert %}}

Exemplul următor de cod arată cum să creăm un nou semn de carte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Obținerea marcajelor

Uneori este necesar să obţinem o colecţie de marcaje pentru a parcurge marcajele sau pentru alte scopuri. Utilizați proprietatea [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) expusă de orice nod de document care returnează un obiect [Range](https://reference.aspose.com/words/net/aspose.words/range/), reprezentând partea documentului conținută în acest nod. Foloseşte acest obiect pentru a recupera o [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) şi apoi foloseşte indexatorul de colecţie pentru a obţine un anumit bookmark.

Exemplul următor de cod arată cum se obțin semne de carte dintr-o colecție de semne de carte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Exemplul de cod următor arată cum să obții sau să setezi un nume de semn de carte și text:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Exemplul de cod următor arată cum să marchezi o tabelă:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Dacă schimbi numele unui semn de carte într-unul care există deja în document, nu se va genera o eroare și doar primul semn de carte va fi salvat când salvezi documentul.

Rețineți că unele semne de carte din document sunt atribuite câmpurilor formularului. Mutarea către o astfel de marcă și inserarea unui text în ea inserează textul în codul câmpului formularului. Deși acest lucru nu va invalida câmpul formularului, textul inserat nu va fi vizibil deoarece devine parte din codul câmpului.

Exemplul de cod următor arată cum se accesează coloane din tabelul marcat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Mutare către Semn de carte

Dacă ai nevoie să introduci conținut bogat (nu doar text simplu) într-un semn de carte, ar trebui să folosești [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) pentru a muta cursorul la semnul de carte și apoi metodele și proprietățile [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pentru a introduce conținut.

## Arată Ascunde Marcaj Conținut

Toate marcajele (*inclusiv conținutul marcat*) pot fi încapsulate într-o parte adevărată a câmpului `IF` folosind Aspose.Words. Poate fi în felul acesta încât câmpul `IF` să conțină un câmp de fuziune încorporat în expresia (*Stânga operatorului*) și în funcție de valoarea câmpului de fuziune, câmpul `IF` arată sau ascunde conținutul marcajului în documentul Word.

Exemplul de cod de mai jos arată cum să arătați/ ascundeți semnele de carte

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
