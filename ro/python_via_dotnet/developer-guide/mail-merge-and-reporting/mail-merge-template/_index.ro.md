---
title: Mail Merge șablon în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Mail Merge șablon
linktitle: Mail Merge șablon
type: docs
description: "Creați un șablon Mail Merge pentru a defini conținutul fix în documentele de ieșire, apoi generați documente de îmbinare folosind câmpurile de îmbinare din Python."
keywords: "create Mail Merge template python"
weight: 10
url: /ro/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

Utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) pentru a crea șablonul de îmbinare necesar folosind Aspose.Words. Puteți include un text, un câmp de îmbinare și o întrerupere de linie într-un astfel de șablon folosind metodele [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) și [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Următorul exemplu de cod arată cum se creează un șablon mail merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Imaginea de mai jos prezintă șablonul creat:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizați proprietățile șablonului Mail Merge

Aspose.Words vă permite să personalizați șablonul prin mai multe proprietăți. Personalizarea șabloanelor va fi descrisă mai jos printr-un exemplu de personalizare a unor proprietăți ale imaginilor și textului.

## Vezi Și

* Pentru mai multe detalii despre cum să creați șabloane în Microsoft Word manual, vă rugăm să verificați [Creați un șablon](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) articol din documentația Microsoft
