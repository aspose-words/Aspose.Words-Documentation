---
title: Mail Merge șablon în C++
second_title: Aspose.Words pentru C++
articleTitle: Mail Merge șablon
linktitle: Mail Merge șablon
type: docs
description: "Creați un șablon mail merge pentru a defini conținutul fix în documentele de ieșire, apoi generați documente de îmbinare utilizând câmpurile de îmbinare."
keywords: "create mail merge template с++"
weight: 10
url: /ro/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Este obișnuit să se utilizeze un șablon de îmbinare ca document de bază pentru o operație mail merge fie dacă este un simplu mail merge sau mail merge cu regiuni. Mail merge cu regiuni este mai puternic și mai popular decât simplul mail merge. Simplu mail merge este considerat ca un caz particular de mail merge cu regiuni în care regiunea este întregul document. Totul este explicat în articolul următor " tipuri de operații Mail Merge" mai detaliat.

Șablonul asigură că textul din documentul îmbinat de ieșire este formatat corect, iar operația mail merge garantează că textul din sursa de date este introdus corect în șablonul de îmbinare.

Aspose.Words oferă posibilitatea de a crea un șablon mail merge pentru a defini conținut fix și apoi pentru a genera documente de îmbinare folosind câmpurile de îmbinare. Astfel, șablonul de îmbinare va avea textul necesar, care este același în toate documentele de ieșire, și câmpurile de îmbinare pentru a completa conținutul în schimbare. Ca rezultat, informațiile din sursa de date specificată vor fi adăugate la șablonul de îmbinare prin aceste câmpuri în timpul generării documentului îmbinat.

## Ce este un șablon Mail Merge

Un șablon mail merge este un document personalizat care conține datele fixe și câmpurile îmbinate unde doriți să fie textul variabil. Un șablon de îmbinare poate fi în orice format care acceptă câmpuri, de exemplu, DOC, DOCX, DOT, DOTX, RTF. În plus, puteți utiliza și șablonul mustache Care este explicat în articolul "Mustache sintaxa șablonului" mai detaliat.

Puteți crea un șablon de îmbinare pentru a fi un model pentru documente noi și ar trebui să includă textul principal care trebuie să fie același pentru fiecare versiune a documentului îmbinat. Adăugarea câmpurilor de îmbinare în interiorul șablonului va reprezenta datele de personalizare, cum ar fi numele sau adresele care sunt preluate dintr-o sursă de date. O operație mail merge va insera automat datele de personalizare din sursa de date în documentul șablon de îmbinare.

În plus, puteți adăuga o regiune mail merge în șablonul dvs. introducând două câmpuri mail merge pentru a marca începutul și sfârșitul regiunii de e-mail. Următorul articol" tipuri de operații Mail Merge " explică acest lucru mai detaliat.

## Creați un șablon Mail Merge

Puteți crea un șablon și adăugați câmpuri de îmbinare specifice, care vor fi înlocuite cu valorile din sursa de date fie manual, de exemplu, folosind Microsoft Word, fie programatic folosind Aspose.Words. În acest articol, vom analiza modul programatic de creare a unui șablon.

Utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pentru a crea șablonul de îmbinare necesar folosind Aspose.Words. Puteți include un text, un câmp de îmbinare și o întrerupere de linie într-un astfel de șablon folosind metodele [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) și [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

Următorul exemplu de cod arată cum se creează un șablon mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Imaginea de mai jos prezintă șablonul creat:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Personalizați proprietățile șablonului Mail Merge

Aspose.Words vă permite să personalizați șablonul prin mai multe proprietăți. Personalizarea șabloanelor va fi descrisă mai jos printr-un exemplu de personalizare a unor proprietăți ale imaginilor și textului.

### Personalizați Proprietățile Imaginii

Puteți specifica proprietățile imaginii folosind clasa [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

Următorul exemplu de cod arată cum să specificați numele fișierului imagine și dimensiunea imaginii:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Personalizați Proprietățile Textului

Puteți utiliza proprietatea [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) pentru a insera text în document pentru câmpul de îmbinare curent. De asemenea, puteți modifica formatarea textelor și paragrafelor din șablonul dvs. folosind clasele [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) și [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Puteți gestiona textul care urmează să fie inserat înainte sau după câmpul de îmbinare utilizând proprietățile [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) și [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) care sunt incluse în clasa [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

Următorul exemplu de cod arată cum să inserați casetele de selectare sau HTML în timpul funcționării mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

De asemenea, puteți verifica implementarea clasei `HandleMergeField` din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Vezi Și

* Pentru mai multe detalii despre cum să creați șabloane în Microsoft Word manual, vă rugăm să verificați [Creați un șablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articol din documentația Microsoft
