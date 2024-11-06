---
title: Specificați opțiunile de aspect în C++
second_title: Aspose.Words pentru C++
articleTitle: Specificați Opțiunile De Aspect
linktitle: Specificați Opțiunile De Aspect
description: "Specificați opțiunile de aspect pentru diferite machete de documente."
type: docs
weight: 20
url: /ro/cpp/specify-layout-options/
---

Aspose.Words vă permite să creați documente de ieșire cu diferite machete, în funcție de parametrii specificați în proprietatea [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) a **Document**. Această proprietate seamănă cu unele dintre opțiunile de meniu ale interfeței cu utilizatorul Microsoft Word descrise în acest articol.

Pentru o listă completă de parametri, cum ar fi [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) pentru a calcula numerele de pagină într-o secțiune continuă care repornește numerotarea paginilor sau [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) pentru a ignora opțiunea de compatibilitate "utilizați valorile imprimantei pentru a stabili documentul", consultați pagina clasei [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Formatarea Mărcilor

Aspose.Words permite gestionarea marcajelor de formatare folosind următoarele proprietăți:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - o valoare `Boolean`, care specifică dacă textul ascuns este redat.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - o valoare `Boolean`, care specifică dacă sunt redate caracterele marcajului de paragraf.

Pagina descrisă în exemplul de mai jos conține trei paragrafe. Al doilea este ascuns. Un utilizator poate schimba opțiunea **ShowHiddenText** pentru a afișa acest text ascuns pe pagină. De asemenea, fiecare paragraf are un semn de paragraf la sfârșit. Marca de paragraf nu este de obicei vizibilă decât dacă proprietatea **ShowParagraphMarks** este setată să o redea.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

În Microsoft Word, acești parametri sunt setați utilizând caseta de dialog" Fișier Opțiuni pentru numărul de opțiuni pentru numărul de opțiuni pentru numărul de opțiuni pentru numărul de opțiuni", după cum urmează:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Comentarii și revizuiri

Cu Aspose.Words, puteți reda comentariile documentelor care vor arăta la fel ca în Microsoft Word. Pentru a specifica dacă comentariile sunt redate, utilizați proprietatea [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

În Microsoft Word, acest parametru este setat folosind caseta de dialog" Track Changes Options", așa cum se arată mai jos:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

De asemenea, Aspose.Words vă permite să afișați revizuiri într-un document. Utilizați proprietatea [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) a clasei **LayoutOptions** pentru a defini dacă sunt afișate revizuirile documentului. Pentru a controla aspectul lor (culoarea evidențierii revizuirii, culoarea barei de revizuire etc.).), utilizați clasa [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

De asemenea, puteți afișa revizuiri ca comentarii la conținut. În acest scop, utilizați proprietatea [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) și valoarea [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Următorul exemplu de cod arată cum să personalizați afișarea reviziilor:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Imaginea de mai jos arată cum Aspose.Words redă comentariile și revizuirile de ștergere:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Text Shaper pentru redare tipografie avansată

Proprietatea [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) vă permite să setați funcționalitatea de modelare a textului, precum și suportul caracteristicilor `OpenType`.

Utilizați modelarea textului pentru procesarea documentelor în următoarele cazuri principale:

- Un document folosește Kerning, modelare numerică, forme numerice sau ligaturi.
- Un document folosește scripturi complexe, cum ar fi arabă, Khmer, Thailandeză etc.

{{% alert color="primary" %}}

Modelarea textului va fi activată numai atunci când exportați un document în PDF sau XPS.

{{% /alert %}}
