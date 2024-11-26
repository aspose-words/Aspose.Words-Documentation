---
title: Lavorare con i campi modulo in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i campi del modulo
linktitle: Lavorare con i campi del modulo
description: "Inserisci, ottieni o formatta un campo modulo in un documento utilizzando Python."
type: docs
weight: 380
url: /it/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un documento che contiene spazi vuoti (campi) è noto come modulo. Ad esempio, puoi creare un modulo di registrazione in Microsoft Word che utilizza elenchi a discesa da cui gli utenti possono selezionare le voci. Il campo `Form` è una posizione in cui viene archiviato un particolare tipo di dati, come un nome o un indirizzo. I campi del modulo in Microsoft Word includono input di testo, casella combinata e casella di controllo.

Puoi utilizzare i campi modulo nel tuo progetto per "comunicare" con i tuoi utenti. Ad esempio, crei un documento il cui contenuto è protetto, ma solo i campi del modulo sono modificabili. Gli utenti possono inserire i dati nei campi del modulo e inviare il documento. La tua applicazione che utilizza Aspose.Words può recuperare i dati dai campi del modulo ed elaborarli.

Inserire i campi del modulo nel documento tramite codice è semplice. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) dispone di metodi speciali per inserirli, uno per ciascun tipo di campo modulo. Ciascuno dei metodi accetta un parametro stringa che rappresenta il nome del campo del modulo. Il nome può essere una stringa vuota. Se tuttavia specifichi un nome per il campo modulo, verrà automaticamente creato un segnalibro con lo stesso nome.

## Inserimento di campi modulo

I campi modulo sono un caso particolare di campi Word che consentono l'"interazione" con l'utente. I campi del modulo in Microsoft Word includono casella di testo, casella combinata e casella di controllo.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornisce metodi speciali per inserire ogni tipo di campo modulo nel documento: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) e [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Tieni presente che se specifichi un nome per il campo modulo, verrà creato automaticamente un segnalibro con lo stesso nome.

L'esempio di codice seguente mostra come inserire un campo modulo casella combinata in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Inserisci un input di testo

Utilizza il metodo [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) per inserire una casella di testo nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo di input di testo in un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Inserisci una casella di controllo

Chiama [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) per inserire una casella di controllo nel documento.

L'esempio di codice seguente mostra come inserire un campo modulo casella di controllo in un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Inserisci una casella combinata

Chiama [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) per inserire una casella combinata nel documento.

Il seguente esempio di codice mostra come inserire un campo modulo Combobox in un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Ottieni campi modulo

Una raccolta di campi modulo è rappresentata dalla classe [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) che può essere recuperata utilizzando la proprietà [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Ciò significa che è possibile ottenere campi del modulo contenuti in qualsiasi nodo del documento compreso il documento stesso.

{{% alert color="primary" %}}

È possibile scaricare il file di esempio dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Puoi ottenere un particolare campo modulo tramite il suo indice o nome.

Il seguente esempio di codice mostra come accedere ai campi del modulo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Le proprietà [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) ti consentono di lavorare con il nome, il tipo e il risultato del campo modulo.

L'esempio di codice seguente mostra come utilizzare il nome, il tipo e il risultato del campo del modulo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formattare i campi del modulo

La proprietà [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) di [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) consente di applicare la formattazione del carattere all'intero [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/), incluso il valore del campo.

Il seguente esempio di codice mostra come applicare la formattazione dei caratteri al **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
