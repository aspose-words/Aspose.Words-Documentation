---
title: Beperk Dokument Redigering in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Beperk Dokument Redigering
linktitle: Beperk Dokument Redigering
description: "Beperk redigering van'n dokument deur die opstel van'n beperking tipe met behulp van Python. U kan ook beskerming verwyder en onbeperkte bewerkbare streke maak."
type: docs
weight: 30
url: /af/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Soms moet jy dalk die vermoë om'n dokument te wysig beperk en slegs sekere aksies daarmee toelaat. Dit kan nuttig wees om te verhoed dat ander mense sensitiewe en vertroulike inligting in u dokument redigeer.

Aspose.Words laat jou toe om die redigering van'n dokument te beperk deur'n beperking tipe te stel. Daarbenewens stel Aspose.Words jou ook in staat om skryfbeskermingsinstellings vir'n dokument te spesifiseer.

Hierdie artikel verduidelik hoe om Aspose.Words te gebruik om'n beperking tipe te kies, hoe om beskerming by te voeg of te verwyder, en hoe om onbeperkte bewerkbare streke te maak.

## Kies Redigeer Beperking Tipe

Aspose.Words laat jou toe om die manier waarop jy die inhoud beperk te beheer deur die [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) opsommingsparameter te gebruik. Dit sal jou in staat stel om'n presiese tipe beskerming soos die volgende te kies:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Alle tipes is wagwoordbeveilig, en as hierdie wagwoord nie korrek ingevoer word nie, sal'n gebruiker nie die inhoud van u dokument wettiglik kan verander nie. As u dokument dus aan u terugbesorg word sonder dat u die nodige wagwoord moet verskaf, is dit'n teken dat iets verkeerd is.

As u nie'n wagwoord gestel het by die keuse van die sekuriteitstipe nie, kan ander gebruikers eenvoudig die beskerming van u dokument ignoreer.

{{% alert color="primary" %}}

Let daarop dat die wagwoord wat gestel word net'n eienskap in'n dokument is wat verwyder kan word as toegang tot die dokument eienskappe verkry word. Gevolglik is so'n wagwoord nie'n waarborg vir die dokument sekuriteit nie. Die [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) metode toon net dit.

{{% /alert %}}

## Voeg Dokumentbeskerming By

Om beskerming by u dokument te voeg, is'n eenvoudige proses, aangesien u net een van die beskermingsmetodes wat in hierdie afdeling uiteengesit word, moet toepas.

Aspose.Words laat jou toe om jou dokumente teen veranderinge te beskerm deur die [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) metode te gebruik. Hierdie metode is nie'n sekuriteitsfunksie nie en enkripteer nie'n dokument nie.

{{% alert color="primary" %}}

In Microsoft Word, kan jy redigering beperk in'n soortgelyke manier met behulp van beide:

* Beperk Redigering (Lêer)
* Alternatiewe funksie - "Beperk Redigering" (Resensie)

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om wagwoord beskerming te voeg tot jou dokument:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Die volgende kode voorbeeld toon hoe om redigering in'n dokument te beperk sodat slegs redigering in vorm velde moontlik is:

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

## Verwyder Dokumentbeskerming

Aspose.Words laat jou toe om beskerming van'n dokument te verwyder met eenvoudige en direkte dokumentwysiging. U kan die dokumentbeskerming verwyder sonder om die werklike wagwoord te ken of die korrekte wagwoord verskaf om die dokument te ontsluit deur die [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) - metode te gebruik. Beide verwyder maniere het geen verskil nie.

Die volgende kode voorbeeld toon hoe om beskerming uit jou dokument te verwyder:

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

## Spesifiseer Onbeperkte Bewerkbare Streke

U kan die redigering van u dokument beperk en terselfdertyd veranderinge aan geselekteerde dele daarvan toelaat. Dus, enigiemand wat jou dokument oopmaak, sal toegang tot hierdie onbeperkte dele kan kry en veranderinge aan die inhoud kan aanbring.

Aspose.Words laat jou toe om die dele wat verander kan word in jou dokument te merk met behulp van die [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) en [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) metodes.

Die volgende kode voorbeeld toon hoe om die hele dokument as lees-alleen te merk en spesifiseer bewerkbare streke in dit:

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

Jy kan ook kies verskillende dokument redigering beperkings vir verskillende afdelings.

Die volgende kode voorbeeld toon hoe om'n beperking vir die hele dokument by te voeg, en dan verwyder die beperking vir een van die afdelings:

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
