---
title: Convertiţi un document la Markdown în C#
second_title: Aspose.Words pentru .NET
articleTitle: Convertează un document la Markdown
linktitle: Convertează un document la Markdown
type: docs
description: "Converti un document în orice format acceptat la Markdown și viceversa folosind C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /ro/net/convert-a-document-to-markdown/
---

Markdown este un format popular utilizat pentru marcarea textului și transformarea ulterioară în HTML, PDF, DOCX sau alte formate. Mulți dezvoltatori aleg acest format pentru scrierea documentației, pregătirea articolelor de publicat pe bloguri, descrierea proiectelor și așa mai departe.

Markdown este atât de populară deoarece este ușor de lucrat cu acest format, precum și poate fi destul de simplu convertit la alte formate. Din acest motiv, Aspose.Words oferă capacitatea de a converti un document în [any supported load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) pentru Markdown, și invers - Aspose.Words acceptă, de asemenea, majoritatea dintre cele mai populare [save formats](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Acum funcționalitatea pentru a lucra cu formatul Markdown este în curs de dezvoltare activă pentru a vă oferi mai multe oportunități pentru o muncă convenabilă și confortabilă cu documente.

## Converteste un document

Pentru a converti un document în Markdown aveți nevoie doar să încărcați un document într-un format acceptat sau pentru a crea unul nou programatic. Atunci ai nevoie să salvezi documentul în Markdown format.

Exemplul de cod următor arată cum să convertiți DOCX la Markdown:

**.NET**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "docx-to-markdown.cs" >}}

Puteți specifica, de asemenea, dosarul fizic în care doriți să salvați imaginile atunci când exportați un document la formatul Markdown. În mod implicit, Aspose.Words salvează imaginile în acelaşi dosar unde este salvat fişierul de document, dar puteţi schimba acest comportament folosind proprietatea [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Specificarea unui folder prin **ImagesFolder** este și utilă dacă salvezi un document într-un flux și Aspose.Words nu are un folder pentru salvarea imaginilor.

Dacă **ImagesFolder** specificat nu există, acesta va fi creat automat.

Exemplul de cod următor arată cum să se specifice un dosar pentru imagini atunci când se salvează un document într-un flux:

**.Net**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "images-folder.cs" >}}

## Specificați Opțiuni de Salvare atunci când Convertiți la Markdown

Aspose.Words oferă posibilitatea de a utiliza clasa [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) pentru a lucra cu opțiuni avansate atunci când se salvează un document în formatul Markdown. Cele mai multe proprietăți sunt moștenite sau suprascriu proprietățile care deja există în clase din alte [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Spații de nume. Pe lângă acestea, au fost adăugate și un număr de proprietăți specifice pentru formatul Markdown. De exemplu, proprietatea [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) pentru controlul alinierii conținutului în tabele, sau [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) și [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) pentru controlul modului în care sunt salvate imaginile la convertirea unui document în format Markdown.

## Caracteristici suportate Markdown

Aspose.Words suportă în prezent următoarele Markdown caracteristici, care urmează în mare parte specificația `CommonMark` din Aspose.Words API și sunt reprezentate ca stiluri adecvate sau formatare directă:

* Titlurile sunt paragrafe cu stiluri de tipul Heading 1 – Heading 6
* Blocurile de citat sunt paragrafe cu "Citat" în numele stilului
* Cod indentat are paragrafe cu "Cod indentat" în numele stilului
* FencedCode are paragrafe cu "FencedCode" în numele stilului
* InlineCode are rulete cu InlineCode în `Font` stilul numelui
* Reguli orizontale sunt paragrafele cu forma `HorizontalRule`
:* Emfaza bold
* Accentul italic
* Formattarea strike-through
* Listele sunt numerotate sau paragrafuri marcate cu puncte de suspensie
* Tabelele sunt reprezentate cu clasa `Table`
* Link-urile sunt reprezentate ca clasa `FieldHyperlink`

Exemplul următor arată cum să creezi un document cu unele stiluri și să-l salveze la Markdown:

**.Net**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "supported-features.cs" >}}

Rezultatul acestui exemplu de cod este prezentat mai jos.

![markdown-example-aspose-words-net](markdown-example.png)

## Sfaturi utile

Există câteva nuanțe și cazuri interesante, învățându-le pe acestea poți lucra cu Markdown fișiere mai flexibil și mai convenabil. De exemplu, există capacitatea de a folosi:

* SetextHeading vă permite să creați anteturi pe mai multe linii în Markdown, în timp ce antetele obișnuite din Markdown pot fi doar pe o singură linie. SetextHeading se bazează pe un stil de tip "Heading N", și nivelul său poate fi doar 1 sau 2. Dacă N în "Antet N" este mai mare sau egală cu 2, atunci antetul corespunzător SetextHeading se bazează pe "Antet 2", altfel pe "Antet 1.
* Marcatori diferiți pentru primul nivel al listelor cu marcatori ( "- ", "+ " sau "*", marcatorul implicit este "- ". ) și tipuri diferite de numărare pentru liste ordonate ( "." sau ") ", marcatorul implicit este "." ).
