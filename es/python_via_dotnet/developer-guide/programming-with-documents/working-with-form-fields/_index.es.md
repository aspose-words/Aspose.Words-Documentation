---
title: Trabajar con campos de formulario en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con campos de formulario
linktitle: Trabajar con campos de formulario
description: "Insertar, obtener o formatear un campo de formulario en un documento usando Python."
type: docs
weight: 380
url: /es/python-net/working-with-form-fields/
---

Un documento que contiene espacios en blanco (campos) para completar se conoce como formulario. Por ejemplo, puede crear un formulario de registro en Microsoft Word que utilice listas desplegables desde las cuales los usuarios pueden seleccionar entradas. El campo `Form` es una ubicación donde se almacena un tipo particular de datos, como un nombre o una dirección. Los campos de formulario en Microsoft Word incluyen entrada de texto, cuadro combinado y casilla de verificación.

Puede utilizar campos de formulario en su proyecto para "comunicarse" con sus usuarios. Por ejemplo, crea un documento cuyo contenido está protegido, pero solo se pueden editar los campos del formulario. Los usuarios pueden ingresar los datos en los campos del formulario y enviar el documento. Su aplicación que utiliza Aspose.Words puede recuperar datos de los campos del formulario y procesarlos.

Colocar campos de formulario en el documento mediante código es fácil. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) tiene métodos especiales para insertarlos, uno para cada tipo de campo de formulario. Cada uno de los métodos acepta un parámetro de cadena que representa el nombre del campo del formulario. El nombre puede ser una cadena vacía. Sin embargo, si especifica un nombre para el campo del formulario, se crea automáticamente un marcador con el mismo nombre.

## Insertar campos de formulario

Los campos de formulario son un caso particular de los campos de Word que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadros de texto, cuadros combinados y casillas de verificación.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) proporciona métodos especiales para insertar cada tipo de campo de formulario en el documento: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) y [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Tenga en cuenta que si especifica un nombre para el campo del formulario, se crea automáticamente un marcador con el mismo nombre.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de cuadro combinado en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Insertar una entrada de texto

Utilice el método [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) para insertar un cuadro de texto en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Insertar una casilla de verificación

Llame a [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) para insertar una casilla de verificación en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de casilla de verificación en un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Insertar un cuadro combinado

Llame a [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) para insertar un cuadro combinado en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario Combobox en un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Obtener campos de formulario

Una colección de campos de formulario está representada por la clase [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) que se puede recuperar mediante la propiedad [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Esto significa que puede obtener campos de formulario contenidos en cualquier nodo del documento, incluido el documento mismo.

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Puede obtener un campo de formulario particular por su índice o nombre.

El siguiente ejemplo de código muestra cómo acceder a los campos del formulario:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Las propiedades [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) le permiten trabajar con el nombre, el tipo y el resultado del campo del formulario.

El siguiente ejemplo de código muestra cómo trabajar con el nombre, el tipo y el resultado del campo del formulario:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Dar formato a los campos del formulario

La propiedad [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) de [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) permite aplicar formato de fuente al [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) en su conjunto, incluido el valor del campo.

El siguiente ejemplo de código muestra cómo aplicar formato de fuente al **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
