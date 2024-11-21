---
title: Inserte Checkbox es, Entrada de texto o Imágenes durante Mail Merge
second_title: Aspose.Words para C++
articleTitle: Insertar Checkbox es, Entrada de texto o Imágenes
linktitle: Insertar Checkbox es, Entrada de texto o Imágenes
description: "Inserte casillas de verificación o campos de entrada de texto durante Mail Merge usando C++. También inserte imágenes de una base de datos durante Mail Merge en C++."
type: docs
weight: 40
url: /es/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

El motor de combinación toma un documento como entrada, busca los campos `MERGEFIELD` en él y los reemplaza con los datos obtenidos del origen de datos. Normalmente, se insertan texto sin formato y HTML, pero Aspose.Words los usuarios también pueden generar un documento que maneje escenarios más inusuales para mail merge campos.

La potente funcionalidad Aspose.Words le permite extender el proceso mail merge:

- inserte casillas de verificación y campos de formulario de entrada de texto en el documento durante un mail merge
- inserte imágenes desde cualquier almacenamiento personalizado (archivos, campos BLOB, etc.)

## Inserte Checkbox es y entrada de texto durante Mail Merge

A veces es necesario realizar una operación mail merge para que no se sustituya texto en el campo de combinación, sino una casilla de verificación o un campo de entrada de texto. Aunque este no es el escenario más común, es muy útil para algunas tareas.

La siguiente captura de pantalla de un documento de Word muestra una plantilla con campos de combinación:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Esta captura de pantalla del documento de Word a continuación muestra el documento ya generado:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Tenga en cuenta que algunos campos se reemplazaron con texto sin formato, algunos campos se reemplazaron con campos de formulario de casilla de verificación y el campo `Subject` se reemplazó con un campo de entrada de texto.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar casillas de verificación e ingresar campos de texto en un documento durante un mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Insertar imágenes durante Mail Merge

Al realizar una operación mail merge, puede insertar imágenes de la base de datos en el documento utilizando campos especiales de image mail merge. El campo image mail merge es un campo de combinación denominado Image:MyFieldName.

### Insertar imágenes desde una base de datos

Durante un mail merge, cuando se encuentra un campo image mail merge en un documento, se activa el evento [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/). Puede responder a este evento para devolver un nombre de archivo, secuencia u objeto de imagen al motor mail merge para que pueda insertarse en el documento.

El siguiente ejemplo de código muestra cómo insertar imágenes almacenadas en un campo BLOB de la base de datos en un informe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Establecer Propiedades de imagen durante Mail Merge

Al combinar un campo de combinación de imágenes, a veces es posible que deba controlar varias propiedades de la imagen, como [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Actualmente, al usar [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) solo puede establecer las propiedades de ancho o alto de la imagen, respectivamente. Para superar este problema, Aspose.Words proporciona la propiedad [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/), que facilita obtener un control total sobre la imagen insertada o cualquier otra forma.

El siguiente ejemplo de código muestra cómo establecer varias propiedades de imagen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
