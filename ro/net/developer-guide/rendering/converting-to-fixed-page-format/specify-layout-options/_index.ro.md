---
title: Specifica opţiuni de dispunere în C#
second_title: Aspose.Words pentru .NET
articleTitle: Specificaţi opţiuni de aranjare
linktitle: Specificaţi opţiuni de aranjare
description: "Specificaţi opţiuni de aranjare pentru diferite aranjamente de documente folosind C#."
type: docs
weight: 10
url: /ro/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words îți permite să creezi documente de ieșire cu diferite dispoziții, în funcție de parametrii specificați în proprietățile clasei [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). Unele dintre aceste proprietăți seamănă cu unele dintre opțiunile Microsoft Word interfeței utilizatorului – ele vor fi descrise în acest articol.

Pentru o listă completă de parametri precum [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) pentru calcularea numerelor paginilor într-o secțiune continuă care relansează numerotarea paginilor, sau [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) pentru a ignora opțiunea "Utilizați metricile imprimantei pentru configurarea documentului", vedeți pagina de clasă [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## Marcaje de formatare

Aspose.Words permite gestionarea marcilor de formatare folosind următoarele proprietăți:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – un `Boolean` valoare, care specifică dacă textul ascuns este redat.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) - un `Boolean` valor, care specifică dacă caracterele de marcaj de paragraf sunt redat.

Pagina descrisă în exemplul de mai jos conține trei paragrafe. A doua e ascunsă. Utilizatorul poate schimba opțiunea **ShowHiddenText** pentru a afișa acest text ascuns pe pagină. De asemenea, fiecare paragraf are un semn de paragraf la sfârșit. Semnul de paragraful în mod normal nu este vizibil decât dacă proprietatea **ShowParagraphMarks** este setată pentru a-l redarea.

![specify-layout-options_1](specify-layout-options-1.png)

În Microsoft Word aceste parametri sunt setaţi folosind caseta de dialog "Fișier → Opțiuni → Afișare" după cum urmează:

![specify-layout-options_2](specify-layout-options-2.jpg)

## Comentarii și Revizuiri

Cu Aspose.Words, puteți să prezentați comentarii de document care vor arăta același lucru ca în Microsoft Word. Pentru a specifica dacă comentariile sunt randate, folosiți proprietatea [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

În Microsoft Word acest parametru este setat folosind caseta de dialog "Opțiuni Urmărire Modificări", așa cum se vede mai jos:

![specify-layout-options_3](specify-layout-options-3.jpg)

De asemenea, Aspose.Words îți permite să afișezi reviziile într-un document. Utilizaţi proprietatea [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) a clasei **LayoutOptions** pentru a defini dacă reviziile documentului sunt afişate. Pentru a controla aspectul lor (colora revizuire evidențiere, culoarea barei de revizuire, etc.), utilizați clasa [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

De asemenea poți să ai revizuirile afișate ca comentarii la conținut. Pentru acest scop folosiți proprietatea [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) și valoarea [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

Exemplul de cod următor arată cum să particularizeze afişarea reviziilor:

{{< gist "aspose-words-gists" "ce015d9bade4e0294485ffb47462ded4" "show-revisions-in-balloons.cs" >}}

Imaginea de mai jos prezintă modul în care Aspose.Words redă comentariile și șterge reviziile:

<img src="specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper pentru randare de tipografie avansată

Proprietatea [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) îți permite să setezi funcționalitatea de modelare a textului, precum și suportul pentru caracteristicile `OpenType`.

Folosirea textului pentru prelucrarea documentelor în următoarele cazuri principale:

"- Un document utilizează Kerning-ul, Modelarea numerelor, Formele numerelor sau Ligaturile."
- Un document folosește Scripturi complexe, cum ar fi: arabă, khmer, thailandeză, etc.

{{% alert color="primary" %}}

Formatarea textului va fi activată doar atunci când exportați un document la PDF sau XPS.

{{% /alert %}}
