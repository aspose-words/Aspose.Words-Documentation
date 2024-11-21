---
title: Trabalhando com campos de formulário em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com campos de formulário
linktitle: Trabalhando com campos de formulário
description: "Insira, obtenha ou formate um campo de formulário em um documento usando Python."
type: docs
weight: 380
url: /pt/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Um documento que contém espaços em branco (campos) de preenchimento é conhecido como formulário. Por exemplo, você pode criar um formulário de registro em Microsoft Word que usa listas suspensas nas quais os usuários podem selecionar entradas. O campo `Form` é um local onde um tipo específico de dados, como nome ou endereço, é armazenado. Os campos de formulário no Microsoft Word incluem entrada de texto, caixa de combinação e caixa de seleção.

Você pode usar campos de formulário em seu projeto para "se comunicar" com seus usuários. Por exemplo, você cria um documento cujo conteúdo é protegido, mas apenas os campos do formulário são editáveis. Os usuários podem inserir os dados nos campos do formulário e enviar o documento. Seu aplicativo que usa Aspose.Words pode recuperar dados dos campos do formulário e processá-los.

Colocar campos de formulário no documento por meio de código é fácil. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) possui métodos especiais para inseri-los, um para cada tipo de campo do formulário. Cada um dos métodos aceita um parâmetro string que representa o nome do campo do formulário. O nome pode ser uma string vazia. Se, no entanto, você especificar um nome para o campo do formulário, um marcador será criado automaticamente com o mesmo nome.

## Inserindo campos de formulário

Os campos de formulário são um caso particular de campos do Word que permitem a "interação" com o usuário. Os campos de formulário no Microsoft Word incluem caixa de texto, caixa de combinação e caixa de seleção.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornece métodos especiais para inserir cada tipo de campo de formulário no documento: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) e [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Observe que se você especificar um nome para o campo do formulário, um marcador será criado automaticamente com o mesmo nome.

O exemplo de código a seguir mostra como inserir um campo de formulário combobox em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Insira uma entrada de texto

Use o método [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) para inserir uma caixa de texto no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário de entrada de texto em um documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Insira uma caixa de seleção

Chame [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) para inserir uma caixa de seleção no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário de caixa de seleção em um documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Insira uma caixa de combinação

Chame [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) para inserir uma Combobox no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário Combobox em um documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Obtenha campos de formulário

Uma coleção de campos de formulário é representada pela classe [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) que pode ser recuperada usando a propriedade [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Isso significa que você pode obter campos de formulário contidos em qualquer nó do documento, incluindo o próprio documento.

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra dos exemplos a seguir em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Você pode obter um campo de formulário específico por seu índice ou nome.

O exemplo de código a seguir mostra como acessar campos de formulário:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

As propriedades [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) permitem trabalhar com nome, tipo e resultado do campo do formulário.

O exemplo de código a seguir mostra como trabalhar com nome, tipo e resultado do campo de formulário:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formatar campos de formulário

A propriedade [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) do [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) permite aplicar a formatação da fonte ao [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) como um todo, incluindo o valor do campo.

O exemplo de código a seguir mostra como aplicar a formatação de fonte ao **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
