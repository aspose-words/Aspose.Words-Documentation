---
title: Werk Met Vorm Velde in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Vorm Velde
linktitle: Werk Met Vorm Velde
description: "Voeg, kry, of formateer'n vorm veld in'n dokument met behulp van Python."
type: docs
weight: 380
url: /af/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

'n dokument wat vul-in blanks (velde) bevat, staan bekend as'n vorm. U kan byvoorbeeld'n registrasievorm in Microsoft Word skep wat aftreklyste gebruik waaruit gebruikers inskrywings kan kies. Die `Form` veld is'n plek waar'n spesifieke tipe data, soos'n naam of adres, gestoor word. Vorm velde in Microsoft Word sluit teks invoer, combobox en checkbox.

U kan vormvelde in u projek gebruik om met u gebruikers te "kommunikeer". Byvoorbeeld, jy skep'n dokument waarvan die inhoud beskerm word, maar slegs vormvelde is bewerkbaar. Die gebruikers kan die data in die vormvelde invoer en die dokument indien. Jou aansoek wat Aspose.Words gebruik kan data van die vorm velde te haal en verwerk dit.

Die plasing van vorm velde in die dokument via kode is maklik. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) het spesiale metodes om hulle in te voeg, een vir elke vorm veld tipe. Elk van die metodes aanvaar'n string parameter wat die naam van die vorm veld. Die naam kan'n leë string wees. As u egter'n naam vir die vormveld spesifiseer, word'n boekmerk outomaties met dieselfde naam geskep.

## Invoeging Van Vormvelde

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teks boks, combo boks en checkbox.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bied spesiale metodes om elke tipe vormveld in die dokument in te voeg: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), en [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Let daarop dat as u'n naam vir die vormveld spesifiseer, 'n boekmerk outomaties met dieselfde naam geskep word.

Die volgende kode voorbeeld toon hoe om'n combobox vorm veld in'n dokument in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Voeg By Teks Invoer

Gebruik die [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) metode om'n tekskassie in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n teks invoer vorm veld in'n dokument in te voeg:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Voeg'n Boks in

Bel [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) om'n checkbox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n checkbox vorm veld in'n dokument in te voeg:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Voeg'n Kombinasie Boks

Bel [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) om'n Combobox in die dokument in te voeg.

Die volgende kode voorbeeld toon hoe om'n Combobox vorm veld in'n dokument in te voeg:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Verkry Vorm Velde

'n versameling van vorm velde word verteenwoordig deur die [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) klas wat kan verkry word met behulp van die [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) eiendom. Dit beteken dat u vormvelde kan kry wat in enige dokumentknooppunt vervat is, insluitend die dokument self.

{{% alert color="primary" %}}

U kan die voorbeeldlêer van die volgende voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Jy kan'n spesifieke vorm veld kry deur sy indeks of naam.

Die volgende kode voorbeeld toon hoe om toegang tot vorm velde:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Die [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) eienskappe laat jou toe om te werk met vorm veld naam, tipe, en resultaat.

Die volgende kode voorbeeld toon hoe om te werk met vorm veld naam, tipe, en resultaat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formaat Vorm Velde

Die [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) eienskap van [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) laat toe om lettertipe te formateer op die [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) as geheel, insluitend die veldwaarde.

Die volgende kode voorbeeld toon hoe om lettertipe formatering toe te pas op die **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
