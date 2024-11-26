---
title: Specificați opțiunile de aspect în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Specificați Opțiunile De Aspect
linktitle: Specificați Opțiunile De Aspect
description: "Specificați opțiunile de aspect pentru diferite aspecte ale documentelor folosind Python."
type: docs
weight: 10
url: /ro/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vă permite să creați documente de ieșire cu diferite machete, în funcție de parametrii specificați în proprietățile clasei [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Unele dintre aceste proprietăți seamănă cu unele dintre opțiunile de meniu ale interfeței cu utilizatorul Microsoft Word - acestea vor fi descrise în acest articol.

Pentru o listă completă de parametri, cum ar fi [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) pentru a calcula numerele de pagină într-o secțiune continuă care repornește numerotarea paginilor sau [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) pentru a ignora opțiunea de compatibilitate "utilizați valorile imprimantei pentru a stabili documentul", consultați pagina clasei [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Formatarea Mărcilor

Aspose.Words permite gestionarea marcajelor de formatare folosind următoarele proprietăți:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) - o valoare `Boolean`, care specifică dacă textul ascuns este redat.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - o valoare `Boolean`, care specifică dacă sunt redate caracterele marcajului de paragraf.

Pagina descrisă în exemplul de mai jos conține trei paragrafe. Al doilea este ascuns. Un utilizator poate schimba opțiunea [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) pentru a afișa acest text ascuns pe pagină. De asemenea, fiecare paragraf are un semn de paragraf la sfârșit. Marca de paragraf nu este de obicei vizibilă decât dacă proprietatea [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) este setată să o redea.

![specify-layout-options_1](specify-layout-options-1.png)

În Microsoft Word, acești parametri sunt setați utilizând caseta de dialog" Fișier Opțiuni pentru numărul de opțiuni pentru numărul de opțiuni pentru numărul de opțiuni pentru numărul de opțiuni", după cum urmează:

![specify-layout-options_2](specify-layout-options-2.jpg)

## Comentarii și revizuiri

Cu Aspose.Words, puteți reda comentariile documentelor care vor arăta la fel ca în Microsoft Word. Pentru a specifica dacă comentariile sunt redate, utilizați proprietatea [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

În Microsoft Word, acest parametru este setat folosind caseta de dialog" Track Changes Options", așa cum se arată mai jos:

![specify-layout-options_3](specify-layout-options-3.jpg)

De asemenea, Aspose.Words vă permite să afișați revizuiri într-un document. Utilizați proprietatea [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) a clasei [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) pentru a defini dacă sunt afișate revizuirile documentului. Pentru a controla aspectul lor (culoarea evidențierii revizuirii, culoarea barei de revizuire etc.).), utilizați clasa [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

De asemenea, puteți afișa revizuiri ca comentarii la conținut. În acest scop, utilizați proprietatea [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) și valoarea [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

Următorul exemplu de cod arată cum să personalizați afișarea reviziilor:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Imaginea de mai jos arată cum Aspose.Words redă comentariile și revizuirile de ștergere:

<img src="specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
