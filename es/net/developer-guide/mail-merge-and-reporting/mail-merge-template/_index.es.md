---
title: Mail Merge Plantilla en C#
second_title: Aspose.Words por .NET
articleTitle: Mail Merge Plantilla
linktitle: Mail Merge Plantilla
type: docs
description: "Cree una plantilla Mail Merge para definir contenido fijo en los documentos de salida y, a continuación, genere documentos combinados utilizando los campos combinados de C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /es/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
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

Use la clase [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para crear la plantilla de combinación requerida usando Aspose.Words. Puede incluir un texto, un campo de combinación y un salto de línea en dicha plantilla utilizando los métodos [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) y [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

El siguiente ejemplo de código muestra cómo crear una plantilla Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

La siguiente imagen muestra la plantilla creada:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizar las propiedades de una plantilla Mail Merge

Aspose.Words le permite personalizar su plantilla a través de muchas propiedades. La personalización de la plantilla se describirá a continuación a través de un ejemplo de personalización de algunas propiedades de imágenes y texto.

### Personalizar las Propiedades de la Imagen

Puede especificar las propiedades de la imagen utilizando la clase [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Tenga en cuenta que puede insertar una imagen desde una base de datos como se describe en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

El siguiente ejemplo de código muestra cómo especificar el nombre del archivo de imagen y el tamaño de la imagen:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Personalizar Propiedades de Texto

Puede usar la propiedad [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) para insertar texto en el documento para el campo de combinación actual. Además, puede cambiar el formato de los textos y párrafos dentro de su plantilla usando las clases [Font](https://reference.aspose.com/words/net/aspose.words/font/) y [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Puede controlar el texto que se insertará antes o después del campo de combinación utilizando las propiedades [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) y [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) que se incluyen en la clase [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

El siguiente ejemplo de código muestra cómo insertar casillas de verificación o HTML durante la operación Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

También puede consultar la implementación de la clase `HandleMergeField` desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Véase También

* Para obtener más detalles sobre cómo crear plantillas en Microsoft Word manualmente, consulte el [Crear una Plantilla](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artículo en la Documentación de Microsoft
