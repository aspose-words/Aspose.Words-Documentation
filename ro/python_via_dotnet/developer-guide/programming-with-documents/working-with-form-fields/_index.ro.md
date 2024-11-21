---
title: Lucrul cu câmpurile de formular în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu câmpurile de formular
linktitle: Lucrul cu câmpurile de formular
description: "Introduceți, Obțineți sau formatați un câmp de formular într-un document folosind Python."
type: docs
weight: 380
url: /ro/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document care conține spații libere de completare (câmpuri) este cunoscut sub numele de formular. De exemplu, puteți crea un formular de înregistrare în Microsoft Word care utilizează liste derulante din care utilizatorii pot selecta intrări. Câmpul `Form` este o locație în care este stocat un anumit tip de date, cum ar fi un nume sau o adresă. Câmpurile de formular din Microsoft Word includ introducerea textului, combobox și checkbox.

Puteți utiliza câmpurile de formular din proiectul dvs. pentru a" comunica " cu utilizatorii dvs. De exemplu, creați un document al cărui conținut este protejat, dar numai câmpurile de formular sunt editabile. Utilizatorii pot introduce datele în câmpurile formularului și pot trimite documentul. Aplicația dvs. care utilizează Aspose.Words poate prelua date din câmpurile formularului și le poate procesa.

Plasarea câmpurilor de formular în document prin cod este ușoară. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) are metode speciale pentru inserarea lor, câte una pentru fiecare tip de câmp de formular. Fiecare dintre metode acceptă un parametru șir care reprezintă numele câmpului de formular. Numele poate fi un șir gol. Dacă totuși specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

## Introducerea Câmpurilor De Formular

Câmpurile de formular sunt un caz particular de câmpuri de cuvinte care permite "interacțiunea" cu utilizatorul. Câmpurile de formular din Microsoft Word includ textbox, combo box și checkbox.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) oferă metode speciale pentru a insera fiecare tip de câmp de formular în document: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) și [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Rețineți că, dacă specificați un nume pentru câmpul Formular, atunci un marcaj este creat automat cu același nume.

Următorul exemplu de cod arată cum să inserați un câmp de formular combobox într-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Introduceți o introducere de Text

Utilizați metoda [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) pentru a insera o casetă de text în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular de introducere a textului într-un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Introduceți o casetă de selectare

Apelați [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) pentru a insera un checkbox în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular checkbox într-un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Introduceți o casetă combinată

Apelați [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) pentru a insera un Combobox în document.

Următorul exemplu de cod arată cum să inserați un câmp de formular Combobox într-un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Obțineți Câmpuri De Formular

O colecție de câmpuri de formular este reprezentată de clasa [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) care poate fi recuperată folosind proprietatea [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Aceasta înseamnă că puteți obține câmpuri de formular conținute în orice nod de document, inclusiv documentul în sine.

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion din următoarele exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Puteți obține un anumit câmp de formular după indexul sau numele acestuia.

Următorul exemplu de cod arată cum să accesați câmpurile formularului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Proprietățile [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) vă permit să lucrați cu numele, tipul și rezultatul câmpului de formular.

Următorul exemplu de cod arată cum să lucrați cu numele câmpului de formular, tipul și rezultatul:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formatați Câmpurile Formularului

Proprietatea [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) a [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) permite aplicarea formatării fontului la [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) în ansamblu, inclusiv valoarea câmpului.

Următorul exemplu de cod arată cum se aplică formatarea fontului la **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
