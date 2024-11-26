---
title: Restricționați editarea documentelor în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Restricționați Editarea Documentelor
linktitle: Restricționați Editarea Documentelor
description: "Restricționați editarea unui document prin setarea unui tip de restricție folosind Python. De asemenea, puteți elimina protecția și puteți crea regiuni editabile fără restricții."
type: docs
weight: 30
url: /ro/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Uneori poate fi necesar să limitați capacitatea de a edita un document și să permiteți doar anumite acțiuni cu acesta. Acest lucru poate fi util pentru a împiedica alte persoane să editeze informații sensibile și confidențiale din documentul dvs.

Aspose.Words vă permite să restricționați editarea unui document prin setarea unui tip de restricție. În plus, Aspose.Words vă permite, de asemenea, să specificați setările de protecție la scriere pentru un document.

Acest articol explică cum să utilizați Aspose.Words pentru a selecta un tip de restricție, cum să adăugați sau să eliminați protecția și cum să creați regiuni editabile fără restricții.

## Selectați Tipul De Restricție De Editare

Aspose.Words vă permite să controlați modul în care restricționați conținutul folosind parametrul de enumerare [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Acest lucru vă va permite să selectați un tip exact de protecție, cum ar fi următoarele:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Toate tipurile sunt securizate prin parolă și, dacă această parolă nu este introdusă corect, un utilizator nu va putea modifica legal conținutul documentului dvs. Astfel, dacă documentul dvs. vă este returnat fără cerința de a furniza parola necesară, acesta este un semn că ceva nu este în regulă.

Dacă nu ați setat o parolă atunci când alegeți tipul de securitate, alți utilizatori pot ignora pur și simplu protecția documentului dvs.

{{% alert color="primary" %}}

Rețineți că parola setată este doar o proprietate dintr-un document care poate fi eliminată dacă sunt accesate proprietățile documentului. În consecință, o astfel de parolă nu este o garanție a securității documentului. Metoda [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) arată exact asta.

{{% /alert %}}

## Adăugați Protecție Pentru Documente

Adăugarea de protecție la documentul dvs. este un proces simplu, deoarece tot ce trebuie să faceți este să aplicați una dintre metodele de protecție detaliate în această secțiune.

Aspose.Words vă permite să vă protejați documentele de modificări folosind metoda [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Această metodă nu este o caracteristică de securitate și nu criptează un document.

{{% alert color="primary" %}}

În Microsoft Word, puteți restricționa editarea într-un mod similar folosind ambele:

* Restricționați Editarea (Fișier Info Document Protejat)
* Caracteristică alternativă – "restricționați editarea" (revizuiți protecția pentru a restricționa editarea)

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați protecție prin parolă la documentul dvs:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Următorul exemplu de cod arată cum să restricționați editarea într-un document, astfel încât este posibilă numai editarea în câmpurile de formular:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Eliminați Protecția Documentelor

Aspose.Words vă permite să eliminați protecția dintr-un document cu o modificare simplă și directă a documentului. Puteți fie să eliminați protecția documentului fără a cunoaște parola reală, fie să furnizați parola corectă pentru a debloca documentul utilizând metoda [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Ambele moduri de eliminare nu au nicio diferență.

Următorul exemplu de cod arată cum să eliminați protecția din document:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Specificați Regiuni Editabile Fără Restricții

Puteți restricționa editarea documentului dvs. și, în același timp, puteți permite modificări ale părților selectate ale acestuia. Deci, oricine vă deschide documentul va putea accesa aceste părți nerestricționate și poate modifica conținutul.

Aspose.Words vă permite să marcați părțile care pot fi modificate în documentul dvs. folosind metodele [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) și [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

Următorul exemplu de cod arată cum să marcați întregul document ca doar pentru citire și să specificați regiuni editabile în el:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

De asemenea, puteți alege diferite restricții de editare a documentelor pentru diferite secțiuni.

Următorul exemplu de cod arată cum să adăugați o restricție pentru întregul document, apoi să eliminați restricția pentru una dintre secțiuni:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
