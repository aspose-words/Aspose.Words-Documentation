---
title: Conversia unui Document în Markdown în Java
second_title: Aspose.Words pentru Java
articleTitle: Conversia unui Document în Markdown
linktitle: Conversia unui Document în Markdown
type: docs
description: "Convertiți un document în orice format de încărcare acceptat în Markdown și invers folosind Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ro/java/convert-a-document-to-markdown/
---

Markdown este un format popular folosit pentru marcarea textului și se convertește în continuare la HTML, PDF, DOCX, sau alte formate. Mulți dezvoltatori aleg acest format pentru scrierea documentației, pregătirea articolelor pentru publicare pe bloguri, descrierea proiectelor și așa mai departe.

Markdown este atât de popular, deoarece este ușor să lucrați cu acest format, precum și poate fi pur și simplu convertit în alte formate. Din acest motiv, Aspose.Words oferă posibilitatea de a converti un document în [any supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) în Markdown și invers – Aspose.Words acceptă și cel mai popular [save formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Acum, funcționalitatea de lucru cu formatul Markdown este dezvoltată activ pentru a vă oferi mai multe oportunități de lucru convenabil și confortabil cu documente.

## Conversia unui Document în Markdown

Pentru a converti un document în Markdown, trebuie doar să încărcați un document în orice format acceptat sau să creați unul nou programatic. Apoi, trebuie să salvați documentul în format Markdown.

Următorul exemplu de cod arată cum se convertește DOCX în Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Specificați opțiunile de salvare la conversia în Markdown

Aspose.Words oferă posibilitatea de a utiliza clasa [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pentru a lucra cu opțiuni avansate atunci când salvați un document în format Markdown. Pe lângă alte proprietăți de moștenire sau supraîncărcare, au fost adăugate și o serie de proprietăți specifice pentru formatul Markdown. De exemplu, proprietatea [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) pentru a controla alinierea conținutului în tabele sau [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) și [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) pentru a controla modul în care imaginile sunt salvate la conversia unui document în format Markdown.

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
* Tabelele sunt reprezentate cu clasa `Table`
* Linkurile sunt reprezentate ca clasa `FieldHyperlink`

Următorul exemplu arată cum să creați un document cu unele stiluri și să îl salvați în Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Rezultatul acestui exemplu de cod este prezentat mai jos.

![markdown-example-aspose-words-java](markdown-example.png)

## Sfaturi Utile

Există mai multe nuanțe și cazuri interesante, după ce ați aflat care puteți lucra cu fișiere Markdown mai flexibil și mai convenabil. De exemplu, există capacitatea de a utiliza:

* SetextHeading care vă permite să creați titluri cu mai multe linii în Markdown, în timp ce titlurile obișnuite din Markdown pot fi doar cu o singură linie. SetextHeading se bazează pe un stil" Heading N", iar nivelul său poate fi doar 1 sau 2. Dacă N din " titlul N "este mai mare sau egal cu 2, atunci SetextHeading corespunzător se bazează pe" Heading 2", altfel pe"Heading 1".
* Markeri diferiți pentru primul nivel de liste cu marcatori ("-", "+" sau "*", markerul implicit este "-".) și diferite tipuri de numerotare pentru listele ordonate ("." sau ")", markerul implicit este ".").
