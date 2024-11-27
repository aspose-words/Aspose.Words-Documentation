---
title: Inserte Checkbox es, Entrada de texto o Imágenes durante Mail Merge
second_title: Aspose.Words por .NET
articleTitle: Insertar Checkbox es, Entrada de texto o Imágenes
linktitle: Insertar Checkbox es, Entrada de texto o Imágenes
description: "Inserte checkbox es o campos de entrada de texto durante Mail Merge usando C#. También inserte imágenes de una base de datos durante Mail Merge en C#."
type: docs
weight: 40
url: /es/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

El motor de combinación toma un documento como entrada, busca los campos `MERGEFIELD` en él y los reemplaza con los datos obtenidos del origen de datos. Normalmente, se insertan texto sin formato y HTML, pero Aspose.Words los usuarios también pueden generar un documento que maneje escenarios más inusuales para Mail Merge campos.

La potente funcionalidad Aspose.Words le permite extender el proceso Mail Merge:

- inserte checkbox es y campos de formulario de entrada de texto en el documento durante un mail merge
- inserte imágenes desde cualquier almacenamiento personalizado (archivos, campos BLOB, etc.)

## Inserte Checkbox es y entrada de texto durante Mail Merge

A veces es necesario realizar una operación Mail Merge para que no se sustituya texto en el campo de combinación, sino un checkbox o un campo de entrada de texto. Aunque este no es el escenario más común, es muy útil para algunas tareas.

La siguiente captura de pantalla de un documento Word muestra una plantilla con campos de combinación:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Esta captura de pantalla del documento Word a continuación muestra el documento ya generado:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Tenga en cuenta que algunos campos se reemplazaron con texto sin formato, algunos campos se reemplazaron con campos de formulario checkbox y el campo `Subject` se reemplazó con un campo de entrada de texto.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar checkbox es e ingresar campos de texto en un documento durante un mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Insertar imágenes durante Mail Merge

Al realizar una operación Mail Merge, puede insertar imágenes de la base de datos en el documento utilizando campos especiales de image Mail Merge. El campo image Mail Merge es un campo de combinación denominado Image:MyFieldName.

### Insertar imágenes desde una base de datos

Durante un mail merge, cuando se encuentra un campo image Mail Merge en un documento, se activa el evento [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/). Puede responder a este evento para devolver un nombre de archivo, secuencia u objeto de imagen al motor Mail Merge para que pueda insertarse en el documento.

El siguiente ejemplo de código muestra cómo insertar imágenes almacenadas en un campo BLOB de la base de datos en un informe:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Establecer Propiedades de imagen durante Mail Merge

Al combinar un campo de combinación de imágenes, a veces es posible que deba controlar varias propiedades de la imagen, como [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Actualmente, al usar [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) solo puede establecer las propiedades de ancho o alto de la imagen, respectivamente. Para superar este problema, Aspose.Words proporciona la propiedad [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), que facilita obtener un control total sobre la imagen insertada o cualquier otra forma.

El siguiente ejemplo de código muestra cómo establecer varias propiedades de imagen:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
