---
title: Praca z polami formularzy w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z polami formularzy
linktitle: Praca z polami formularzy
description: "Wstaw, uzyskaj lub sformatuj pole formularza w dokumencie za pomocą Python."
type: docs
weight: 380
url: /pl/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Dokument zawierający puste pola (pola) do wypełnienia nazywany jest formularzem. Na przykład możesz utworzyć formularz rejestracyjny w Microsoft Word, który korzysta z list rozwijanych, z których użytkownicy mogą wybierać wpisy. Pole `Form` to miejsce, w którym przechowywany jest określony typ danych, taki jak imię i nazwisko lub adres. Pola formularzy w Microsoft Word obejmują wprowadzanie tekstu, pole kombi i pole wyboru.

Możesz używać pól formularzy w swoim projekcie do "komunikowania się" z użytkownikami. Na przykład tworzysz dokument, którego treść jest chroniona, ale edytowalne są tylko pola formularza. Użytkownicy mają możliwość wprowadzenia danych w polach formularza i przesłania dokumentu. Twoja aplikacja korzystająca z Aspose.Words może pobierać dane z pól formularza i je przetwarzać.

Umieszczanie pól formularzy w dokumencie za pomocą kodu jest łatwe. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) posiada specjalne metody ich wstawiania, po jednej dla każdego typu pola formularza. Każda z metod przyjmuje parametr string reprezentujący nazwę pola formularza. Nazwa może być pustym ciągiem znaków. Jeśli jednak podasz nazwę pola formularza, automatycznie utworzona zostanie zakładka o tej samej nazwie.

## Wstawianie pól formularza

Pola formularzy to szczególny przypadek pól programu Word, który umożliwia "interakcję" z użytkownikiem. Pola formularzy w Microsoft Word obejmują pole tekstowe, pole kombi i pole wyboru.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) udostępnia specjalne metody wstawiania każdego typu pola formularza do dokumentu: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) i [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Pamiętaj, że jeśli określisz nazwę pola formularza, automatycznie utworzona zostanie zakładka o tej samej nazwie.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza combobox do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Wstaw wprowadzany tekst

Użyj metody [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), aby wstawić pole tekstowe do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza wprowadzania tekstu do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Wstaw pole wyboru

Wywołaj [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), aby wstawić pole wyboru do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza pola wyboru do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Wstaw pole kombi

Wywołaj [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/), aby wstawić Combobox do dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić pole formularza Combobox do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Uzyskaj pola formularza

Zbiór pól formularzy jest reprezentowany przez klasę [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/), którą można pobrać za pomocą właściwości [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Oznacza to, że możesz uzyskać pola formularzy zawarte w dowolnym węźle dokumentu, łącznie z samym dokumentem.

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik z poniższymi przykładami z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Możesz uzyskać określone pole formularza według jego indeksu lub nazwy.

Poniższy przykład kodu pokazuje, jak uzyskać dostęp do pól formularza:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Właściwości [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) umożliwiają pracę z nazwą, typem i wynikiem pola formularza.

Poniższy przykład kodu pokazuje, jak pracować z nazwą, typem i wynikiem pola formularza:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formatuj pola formularza

Właściwość [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) umożliwia zastosowanie formatowania czcionki do całego [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/), łącznie z wartością pola.

Poniższy przykład kodu pokazuje, jak zastosować formatowanie czcionki do **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
