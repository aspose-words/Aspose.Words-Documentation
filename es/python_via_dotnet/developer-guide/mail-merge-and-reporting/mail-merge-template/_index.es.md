---
title: Mail Merge Plantilla en Python
second_title: Aspose.Words por Python via .NET
articleTitle: Mail Merge Plantilla
linktitle: Mail Merge Plantilla
type: docs
description: "Cree una plantilla Mail Merge para definir contenido fijo en los documentos de salida y, a continuación, genere documentos combinados utilizando los campos combinados de Python."
keywords: "create Mail Merge template python"
weight: 10
url: /es/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Es común usar una plantilla de combinación como documento base para una operación Mail Merge, ya sea si es un Mail Merge simple o Mail Merge con regiones. Mail merge con regiones es más poderoso y popular que el simple mail merge. Simple Mail Merge se considera como un caso particular de Mail Merge con regiones donde la región es todo el documento. Todo se explica en el siguiente artículo "Tipos de operación Mail Merge" con más detalle.

La plantilla garantiza que el texto del documento combinado de salida tenga el formato correcto y la operación Mail Merge garantiza que el texto del origen de datos se ingrese correctamente en la plantilla de combinación.

Aspose.Words proporciona la capacidad de crear una plantilla Mail Merge para definir contenido fijo y luego generar documentos combinados utilizando los campos combinados. Por lo tanto, la plantilla de combinación tendrá el texto necesario, que es el mismo en todos los documentos de salida, y los campos de combinación para completar el contenido cambiante. Como resultado, la información de la fuente de datos especificada se agregará a la plantilla de combinación a través de estos campos durante la generación del documento combinado.

## Qué es una plantilla Mail Merge

Una plantilla Mail Merge es un documento personalizado que contiene los datos fijos y los campos combinados donde desea que esté el texto variable. Una plantilla de combinación puede tener cualquier formato que admita campos, por ejemplo, DOC, DOCX, DOT, DOTX, RTF. Además, también puede utilizar la plantilla mustache que se explica en el artículo "Sintaxis de la plantillaMustache" con más detalle.

Puede crear una plantilla de combinación para que sea un modelo para nuevos documentos, y debe incluir el texto principal que debe ser el mismo para cada versión del documento combinado. Agregar campos de combinación dentro de la plantilla representará los datos de personalización, como nombres o direcciones, que se obtienen de una fuente de datos. Una operación Mail Merge insertará automáticamente los datos de personalización de su fuente de datos en su documento de plantilla de combinación.

Además, puede agregar una región Mail Merge en su plantilla insertando dos campos Mail Merge para marcar el comienzo y el final de la región de correo. El siguiente artículo "Tipos de operación Mail Merge" explica eso con más detalle.

## Crear una plantilla Mail Merge

Puede crear una plantilla y agregarle campos de combinación específicos, que serán reemplazados por los valores de la fuente de datos manualmente, por ejemplo, usando Microsoft Word, o mediante programación usando Aspose.Words. En este artículo, veremos la forma programática de crear una plantilla.

Use la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para crear la plantilla de combinación requerida usando Aspose.Words. Puede incluir un texto, un campo de combinación y un salto de línea en dicha plantilla utilizando los métodos [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) y [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

El siguiente ejemplo de código muestra cómo crear una plantilla Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

La siguiente imagen muestra la plantilla creada:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizar las propiedades de una plantilla Mail Merge

Aspose.Words le permite personalizar su plantilla a través de muchas propiedades. La personalización de la plantilla se describirá a continuación a través de un ejemplo de personalización de algunas propiedades de imágenes y texto.

## Véase También

* Para obtener más detalles sobre cómo crear plantillas en Microsoft Word manualmente, consulte el [Crear una Plantilla](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artículo en la Documentación de Microsoft
