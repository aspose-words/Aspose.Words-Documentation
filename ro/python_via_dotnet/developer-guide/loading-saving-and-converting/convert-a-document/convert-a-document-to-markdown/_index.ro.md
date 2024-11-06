---
title: Conversia unui Document în Markdown
second_title: Aspose.Words pentru Python via .NET
articleTitle: Conversia unui Document în Markdown
linktitle: Conversia unui Document în Markdown
type: docs
description: "Convertiți un document în orice format de încărcare acceptat în Markdown și invers folosind Python."
keywords: how to convert a document to markdown python
weight: 40
url: /ro/python-net/convert-a-document-to-markdown/
---

Markdown este un format popular folosit pentru marcarea textului și conversia sa ulterioară în HTML, PDF, DOCX, sau alte formate. Mulți dezvoltatori aleg acest format pentru scrierea documentației, pregătirea articolelor pentru publicare pe bloguri, descrierea proiectelor și așa mai departe.

Markdown este atât de popular, deoarece este ușor să lucrați cu acest format, precum și poate fi pur și simplu convertit în alte formate. Din acest motiv, Aspose.Words oferă posibilitatea de a converti un document în [any supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) în Markdown și invers – Aspose.Words acceptă și cele mai populare [save formats](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Acum, funcționalitatea de lucru cu formatul Markdown este dezvoltată activ pentru a vă oferi mai multe oportunități de lucru convenabil și confortabil cu documente.

## Conversia unui Document

Pentru a converti un document în Markdown, trebuie doar să încărcați un document în orice format acceptat sau să creați unul nou programatic. Apoi, trebuie să salvați documentul în format Markdown.

Următorul exemplu de cod arată cum se convertește DOCX în Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

De asemenea, puteți specifica folderul fizic în care doriți să salvați imagini atunci când exportați un document în format Markdown. În mod implicit, Aspose.Words Salvează imagini în același folder în care este salvat fișierul document, dar puteți suprascrie acest comportament folosind proprietatea [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Specificarea unui folder prin [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) este utilă și dacă salvați un document într-un flux și Aspose.Words nu are un folder pentru salvarea imaginilor.

Dacă [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) specificat nu există, acesta va fi creat automat.

Următorul exemplu de cod arată cum să specificați un folder pentru imagini atunci când salvați un document într-un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Specificați opțiunile de salvare la conversia în Markdown

Aspose.Words oferă posibilitatea de a utiliza clasa [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) pentru a lucra cu opțiuni avansate atunci când salvați un document în format Markdown. Majoritatea proprietăților sunt proprietăți moștenitoare sau supraîncărcate care există deja în cadrul altor clase [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). Pe lângă acestea, au fost adăugate și o serie de proprietăți specifice formatului Markdown. De exemplu, proprietatea [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) pentru a controla alinierea conținutului în tabele sau [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) pentru a controla unde sunt salvate imaginile la conversia unui document în format Markdown.

## Caracteristici Suportate Markdown

Aspose.Words acceptă în prezent următoarele caracteristici Markdown, care urmează în mare parte specificația `CommonMark` Din Aspose.Words API și sunt reprezentate ca stiluri adecvate sau formatare directă:

* Titlurile sunt paragrafe cu Heading 1 - Heading 6 stiluri
* Blockquotes sunt paragrafe cu "citat" în numele stilului
* IndentedCode sunt paragrafe cu "IndentedCode " în numele stilului
* FencedCode sunt paragrafe cu "FencedCode " în numele stilului
* InlineCode sunt rulări cu "InlineCode " în numele stilului `Font`
* Regulile orizontale sunt paragrafe cu forma `HorizontalRule`
* Accent îndrăzneț
* Accent cursiv
* StrikeThrough formatare
* Listele sunt paragrafe numerotate sau cu marcatori
* Tabelele sunt reprezentate cu clasa [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Linkurile sunt reprezentate ca clasa [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

Următorul exemplu arată cum să creați un document cu unele stiluri și să îl salvați în Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Rezultatul acestui exemplu de cod este prezentat mai jos.

![markdown-example-aspose-words-net](markdown-example.png)

## Sfaturi Utile

Există mai multe nuanțe și cazuri interesante, după ce ați aflat care puteți lucra cu fișiere Markdown mai flexibil și mai convenabil. De exemplu, există capacitatea de a utiliza:

* SetextHeading care vă permite să creați titluri cu mai multe linii în Markdown, în timp ce titlurile obișnuite din Markdown pot fi doar cu o singură linie. SetextHeading se bazează pe un stil" Heading N", iar nivelul său poate fi doar 1 sau 2. Dacă N din " titlul N "este mai mare sau egal cu 2, atunci SetextHeading corespunzător se bazează pe" Heading 2", altfel pe"Heading 1".
* Markeri diferiți pentru primul nivel de liste cu marcatori ("-", "+" sau "*", markerul implicit este "-".) și diferite tipuri de numerotare pentru listele ordonate ("." sau ")", markerul implicit este ".").
