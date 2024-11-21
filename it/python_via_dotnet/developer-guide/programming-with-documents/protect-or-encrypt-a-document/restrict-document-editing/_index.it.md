---
title: Limita la modifica dei documenti in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Limita la modifica dei documenti
linktitle: Limita la modifica dei documenti
description: "Limita la modifica di un documento impostando un tipo di restrizione utilizzando Python. Puoi anche rimuovere la protezione e creare aree modificabili senza restrizioni."
type: docs
weight: 30
url: /it/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario limitare la possibilità di modificare un documento e consentire solo determinate azioni con esso. Ciò può essere utile per impedire ad altre persone di modificare informazioni sensibili e riservate nel documento.

Aspose.Words consente di limitare la modifica di un documento impostando un tipo di restrizione. Inoltre, Aspose.Words consente anche di specificare le impostazioni di protezione da scrittura per un documento.

Questo articolo spiega come utilizzare Aspose.Words per selezionare un tipo di restrizione, come aggiungere o rimuovere la protezione e come creare aree modificabili senza restrizioni.

## Seleziona Tipo di restrizione di modifica

Aspose.Words ti consente di controllare il modo in cui limiti il contenuto utilizzando il parametro di enumerazione [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Ciò ti consentirà di selezionare un tipo esatto di protezione come il seguente:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Tutti i tipi sono protetti da password e, se la password non viene inserita correttamente, un utente non sarà in grado di modificare legalmente il contenuto del documento. Pertanto, se il tuo documento ti viene restituito senza l'obbligo di fornire la password necessaria, questo è un segno che qualcosa non va.

Se non hai impostato una password quando scegli il tipo di sicurezza, gli altri utenti potranno semplicemente ignorare la protezione del tuo documento.

{{% alert color="primary" %}}

Tieni presente che la password impostata è semplicemente una proprietà in un documento che può essere rimossa se si accede alle proprietà del documento. Di conseguenza, tale password non è una garanzia della sicurezza del documento. Il metodo [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) mostra proprio questo.

{{% /alert %}}

## Aggiungi la protezione del documento

Aggiungere protezione al tuo documento è un processo semplice, poiché tutto ciò che devi fare è applicare uno dei metodi di protezione descritti in questa sezione.

Aspose.Words ti consente di proteggere i tuoi documenti dalle modifiche utilizzando il metodo [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Questo metodo non è una funzionalità di sicurezza e non crittografa un documento.

{{% alert color="primary" %}}

In Microsoft Word, puoi limitare la modifica in modo simile utilizzando entrambi:

* Limita la modifica (File → Informazioni → Proteggi documento)
* Funzionalità alternativa – "Limita modifica" (Rivedi → Proteggi → Limita modifica)

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere la protezione tramite password al documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

Il seguente esempio di codice mostra come limitare la modifica in un documento in modo che sia possibile solo la modifica nei campi del modulo:

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

## Rimuovi la protezione del documento

Aspose.Words ti consente di rimuovere la protezione da un documento con una modifica semplice e diretta del documento. Puoi rimuovere la protezione del documento senza conoscere la password effettiva oppure fornire la password corretta per sbloccare il documento utilizzando il metodo [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Entrambi i modi di rimozione non hanno alcuna differenza.

Il seguente esempio di codice mostra come rimuovere la protezione dal documento:

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

## Specificare regioni modificabili senza restrizioni

Puoi limitare la modifica del tuo documento e allo stesso tempo consentire modifiche a parti selezionate di esso. Pertanto, chiunque apra il tuo documento potrà accedere a queste parti senza restrizioni e apportare modifiche al contenuto.

Aspose.Words ti consente di contrassegnare le parti che possono essere modificate nel tuo documento utilizzando i metodi [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) e [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

Il seguente esempio di codice mostra come contrassegnare l'intero documento come di sola lettura e specificarne le aree modificabili:

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

Puoi anche scegliere diverse restrizioni di modifica del documento per le diverse sezioni.

L'esempio di codice seguente mostra come aggiungere una restrizione per l'intero documento e quindi rimuovere la restrizione per una delle sezioni:

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
