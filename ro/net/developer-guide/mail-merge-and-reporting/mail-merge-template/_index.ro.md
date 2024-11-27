---
title: Mail Merge șablon în C#
second_title: Aspose.Words pentru .NET
articleTitle: Mail Merge șablon
linktitle: Mail Merge șablon
type: docs
description: "Creați un șablon Mail Merge pentru a defini conținutul fix în documentele de ieșire, apoi generați documente de îmbinare folosind câmpurile de îmbinare din C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /ro/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Este obișnuit să se utilizeze un șablon de îmbinare ca document de bază pentru o operație Mail Merge fie dacă este un simplu Mail Merge sau Mail Merge cu regiuni. Mail merge cu regiuni este mai puternic și mai popular decât simplul mail merge. Simplu Mail Merge este considerat ca un caz particular de Mail Merge cu regiuni în care regiunea este întregul document. Totul este explicat în articolul următor " tipuri de operații Mail Merge" mai detaliat.

Șablonul asigură că textul din documentul îmbinat de ieșire este formatat corect, iar operația Mail Merge garantează că textul din sursa de date este introdus corect în șablonul de îmbinare.

Aspose.Words oferă posibilitatea de a crea un șablon Mail Merge pentru a defini conținut fix și apoi pentru a genera documente de îmbinare folosind câmpurile de îmbinare. Astfel, șablonul de îmbinare va avea textul necesar, care este același în toate documentele de ieșire, și câmpurile de îmbinare pentru a completa conținutul în schimbare. Ca rezultat, informațiile din sursa de date specificată vor fi adăugate la șablonul de îmbinare prin aceste câmpuri în timpul generării documentului îmbinat.

## Ce este un șablon Mail Merge

Un șablon Mail Merge este un document personalizat care conține datele fixe și câmpurile îmbinate unde doriți să fie textul variabil. Un șablon de îmbinare poate fi în orice format care acceptă câmpuri, de exemplu, DOC, DOCX, DOT, DOTX, RTF. În plus, puteți utiliza și șablonul mustache Care este explicat în articolul "Mustache sintaxa șablonului" mai detaliat.

Puteți crea un șablon de îmbinare pentru a fi un model pentru documente noi și ar trebui să includă textul principal care trebuie să fie același pentru fiecare versiune a documentului îmbinat. Adăugarea câmpurilor de îmbinare în interiorul șablonului va reprezenta datele de personalizare, cum ar fi numele sau adresele care sunt preluate dintr-o sursă de date. O operație Mail Merge va insera automat datele de personalizare din sursa de date în documentul șablon de îmbinare.

În plus, puteți adăuga o regiune Mail Merge în șablonul dvs. introducând două câmpuri Mail Merge pentru a marca începutul și sfârșitul regiunii de e-mail. Următorul articol" tipuri de operații Mail Merge " explică acest lucru mai detaliat.

## Creați un șablon Mail Merge

Puteți crea un șablon și adăugați câmpuri de îmbinare specifice, care vor fi înlocuite cu valorile din sursa de date fie manual, de exemplu, folosind Microsoft Word, fie programatic folosind Aspose.Words. În acest articol, vom analiza modul programatic de creare a unui șablon.

Utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pentru a crea șablonul de îmbinare necesar folosind Aspose.Words. Puteți include un text, un câmp de îmbinare și o întrerupere de linie într-un astfel de șablon folosind metodele [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) și [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Următorul exemplu de cod arată cum se creează un șablon Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Imaginea de mai jos prezintă șablonul creat:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizați proprietățile șablonului Mail Merge

Aspose.Words vă permite să personalizați șablonul prin mai multe proprietăți. Personalizarea șabloanelor va fi descrisă mai jos printr-un exemplu de personalizare a unor proprietăți ale imaginilor și textului.

### Personalizați Proprietățile Imaginii

Puteți specifica proprietățile imaginii folosind clasa [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Rețineți că puteți insera o imagine dintr-o bază de date așa cum este descrisă în [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Următorul exemplu de cod arată cum să specificați numele fișierului imagine și dimensiunea imaginii:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Personalizați Proprietățile Textului

Puteți utiliza proprietatea [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) pentru a insera text în document pentru câmpul de îmbinare curent. De asemenea, puteți modifica formatarea textelor și paragrafelor din șablonul dvs. folosind clasele [Font](https://reference.aspose.com/words/net/aspose.words/font/) și [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Puteți gestiona textul care urmează să fie inserat înainte sau după câmpul de îmbinare utilizând proprietățile [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) și [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) care sunt incluse în clasa [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Următorul exemplu de cod arată cum să inserați casetele de selectare sau HTML în timpul funcționării Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

De asemenea, puteți verifica implementarea clasei `HandleMergeField` din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Vezi Și

* Pentru mai multe detalii despre cum să creați șabloane în Microsoft Word manual, vă rugăm să verificați [Creați un șablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articol din documentația Microsoft
