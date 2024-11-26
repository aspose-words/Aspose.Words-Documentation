---
title: Mail Merge șablon în Java
second_title: Aspose.Words pentru Java
articleTitle: Mail Merge șablon
linktitle: Mail Merge șablon
type: docs
description: "Creați un șablon Mail Merge pentru a defini conținutul fix în documentele de ieșire, apoi generați documente de îmbinare folosind câmpurile de îmbinare din Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /ro/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Este obișnuit să se utilizeze un șablon de îmbinare ca document de bază pentru o operație Mail Merge fie dacă este un simplu Mail Merge sau Mail Merge cu regiuni. Mail merge cu regiuni este mai puternic și mai popular decât simplul mail merge. Un simplu Mail Merge este considerat ca un caz particular al Mail Merge cu regiuni în care regiunea este întregul document. Totul este explicat în articolul următor " tipuri de operații Mail Merge" mai detaliat.

Șablonul asigură că textul din documentul îmbinat de ieșire este formatat corect, iar operația Mail Merge garantează că textul din sursa de date este introdus corect în șablonul de îmbinare.

Aspose.Words oferă posibilitatea de a crea un șablon Mail Merge pentru a defini conținut fix și apoi pentru a genera documente de îmbinare folosind câmpurile de îmbinare. Astfel, șablonul de îmbinare va avea textul necesar, care este același în toate documentele de ieșire, și câmpurile de îmbinare pentru a completa conținutul în schimbare. Ca rezultat, informațiile din sursa de date specificată vor fi adăugate la șablonul de îmbinare prin aceste câmpuri în timpul generării documentului îmbinat.

## Ce este un șablon Mail Merge

Un șablon Mail Merge este un document personalizat care conține datele fixe și câmpurile îmbinate unde doriți să fie textul variabil. Un șablon de îmbinare poate fi în orice format care acceptă câmpuri, de exemplu, DOC, DOCX, DOT, DOTX, RTF. În plus, puteți utiliza și șablonul mustache Care este explicat în articolul "Mustache sintaxa șablonului" mai detaliat.

Puteți crea un șablon de îmbinare pentru a fi un model pentru documente noi și ar trebui să includă textul principal care trebuie să fie același pentru fiecare versiune a documentului îmbinat. Adăugarea câmpurilor de îmbinare în interiorul șablonului va reprezenta datele de personalizare, cum ar fi numele sau adresele care sunt preluate dintr-o sursă de date. O operație Mail Merge va insera automat datele de personalizare din sursa de date în documentul șablon de îmbinare.

În plus, puteți adăuga o regiune Mail Merge în șablonul dvs. introducând două câmpuri Mail Merge pentru a marca începutul și sfârșitul regiunii de e-mail. Următorul articol" tipuri de operații Mail Merge " explică acest lucru mai detaliat.

## Creați un șablon Mail Merge

Puteți crea un șablon și adăugați câmpuri de îmbinare specifice, care vor fi înlocuite cu valorile din sursa de date fie manual, de exemplu, folosind Microsoft Word, fie programatic folosind Aspose.Words. În acest articol, vom analiza modul programatic de creare a unui șablon.

Utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) pentru a crea șablonul de îmbinare necesar folosind Aspose.Words. Puteți include un text, un câmp de îmbinare și o întrerupere de linie într-un astfel de șablon folosind [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), și [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) metode.

Următorul exemplu de cod arată cum se creează un șablon mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

Imaginea de mai jos prezintă șablonul creat:

<img src="mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## Personalizați proprietățile șablonului Mail Merge

Aspose.Words vă permite să personalizați șablonul prin mai multe proprietăți. Personalizarea șabloanelor va fi descrisă mai jos printr-un exemplu de personalizare a unor proprietăți ale imaginilor și textului.

### Personalizați Proprietățile Imaginii

Puteți specifica proprietățile imaginii folosind clasa [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/). Rețineți că puteți insera o imagine dintr-o bază de date așa cum este descrisă în [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

Următorul exemplu de cod arată cum să specificați numele fișierului imagine și dimensiunea imaginii:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### Personalizați Proprietățile Textului

Puteți utiliza clasele [Text]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text) property to insert text into the document for the current merge field. Also, you can change the formatting of texts and paragraphs inside your template using [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) și [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/). Puteți gestiona textul care urmează să fie inserat înainte sau după câmpul de îmbinare utilizând proprietățile [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) și [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) care sunt incluse în clasa [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/).

Următorul exemplu de cod arată cum să inserați casetele de selectare sau HTML în timpul funcționării mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

De asemenea, puteți verifica implementarea clasei `HandleMergeField` din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## Vezi Și

* Pentru mai multe detalii despre cum să creați șabloane în Microsoft Word manual, vă rugăm să verificați [Creați un șablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articol din documentația Microsoft
