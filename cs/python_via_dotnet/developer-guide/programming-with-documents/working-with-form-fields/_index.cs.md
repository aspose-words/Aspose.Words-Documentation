---
title: Práce s polemi formuláře Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s polemi formuláře
linktitle: Práce s polemi formuláře
description: "Vložit, získat nebo formátovat pole formuláře v dokumentu pomocí Python."
type: docs
weight: 380
url: /cs/python-net/working-with-form-fields/
---

Dokument, který obsahuje vyplněné mezery (pole), je znám jako formulář. Například, můžete vytvořit registrační formulář v Microsoft Word který používá seznamy drop-down, ze kterých mohou uživatelé vybírat položky. • `Form` pole je místo, kde je uložen určitý typ údajů, jako je název nebo adresa. Forma polí v Microsoft Word obsahovat textový vstup, combobox a checkbox.

Ve vašem projektu můžete použít pole formuláře pro komunikaci s uživateli. Například vytvoříte dokument, jehož obsah je chráněn, ale pouze pole formuláře jsou editovatelná. Uživatelé mohou údaje zadat do polí formuláře a dokument předložit. Vaše aplikace, která používá Aspose.Words může získat data z polí formuláře a zpracovat je.

Vložení polí formuláře do dokumentu přes kód je snadné. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) má speciální metody pro jejich vložení, jeden pro každý typ formuláře. Každá z metod přijímá parametr řetězce představující název pole formuláře. Jméno může být prázdný řetězec. Pokud však zadáte název pro pole formuláře, pak je automaticky vytvořena záložka se stejným názvem.

## Vkládání polí formuláře

Formulářová pole jsou konkrétním případem polí Word, které umožňují "interakce" s uživatelem. Forma polí v Microsoft Word obsahovat textbox, combo box a checkbox.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) poskytuje zvláštní metody pro vložení každého typu formuláře do dokumentu: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), a [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Všimněte si, že pokud zadáte jméno pro pole formuláře, pak je automaticky vytvořena záložka se stejným názvem.

Následující příklad kódu ukazuje, jak vložit pole formuláře combobox do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Vložit textový vstup

Použijte [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) způsob vložení textového pole do dokumentu.

Následující příklad kódu ukazuje, jak vložit vstupní pole textu do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Vložit kontrolní rámeček

Volat [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) vložit checkbox do dokumentu.

Následující příklad kódu ukazuje, jak vložit pole formuláře checkbox do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Vložit Combo box

Volat [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) vložit do dokumentu Combobox.

Následující příklad kódu ukazuje, jak vložit pole formuláře Combobox do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Získat pole formuláře

Sbírka formulářových polí představuje [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) třída, kterou lze získat pomocí [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) majetek. To znamená, že můžete získat formulářová pole obsažená v každém uzelu dokumentu včetně samotného dokumentu.

{{% alert color="primary" %}}

Můžete si stáhnout ukázkový soubor následujících příkladů z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Můžete získat konkrétní pole formuláře podle jeho indexu nebo názvu.

Následující příklad kódu ukazuje, jak přistupovat k polím formuláře:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

• [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) vlastnosti umožňují pracovat s názvem pole formuláře, typu a výsledku.

Následující příklad kódu ukazuje, jak pracovat s názvem pole formuláře, typu a výsledku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Pole formuláře

• [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) vlastnictví [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) umožňuje aplikovat formátování písma na [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) jako celek včetně hodnoty pole.

Následující příklad kódu ukazuje, jak použít formátování písma na **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
