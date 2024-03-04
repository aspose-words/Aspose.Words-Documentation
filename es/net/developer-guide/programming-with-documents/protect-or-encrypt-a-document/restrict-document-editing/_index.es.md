---
title: Restringir la edición de documentos en C#
second_title: Aspose.Words para .NET
articleTitle: Restringir la edición de documentos
linktitle: Restringir la edición de documentos
description: "Restrinja la edición de un documento estableciendo un tipo de restricción usando C#. También puede eliminar la protección y crear regiones editables sin restricciones."
type: docs
weight: 30
url: /es/net/restrict-document-editing/
---

A veces es posible que necesites limitar la capacidad de editar un documento y permitir solo ciertas acciones con él. Esto puede resultar útil para evitar que otras personas editen información sensible y confidencial en su documento.

Aspose.Words le permite restringir la edición de un documento estableciendo un tipo de restricción. Además, Aspose.Words también le permite especificar configuraciones de protección contra escritura para un documento.

Este artículo explica cómo usar Aspose.Words para seleccionar un tipo de restricción, cómo agregar o eliminar protección y cómo crear regiones editables sin restricciones.

## Seleccione el tipo de restricción de edición

Aspose.Words le permite controlar la forma en que restringe el contenido utilizando el parámetro de enumeración [ProtectionType](https://reference.aspose.com/words/es/net/aspose.words/protectiontype/). Esto le permitirá seleccionar un tipo exacto de protección como el siguiente:

* Permitir solo comentarios
* Permitir solo campos de formulario
* Permitir solo revisiones
* Solo lectura
* Sin protección

Todos los tipos están protegidos por contraseña y, si esta contraseña no se ingresa correctamente, el usuario no podrá cambiar legalmente el contenido de su documento. Por lo tanto, si le devuelven el documento sin necesidad de proporcionar la contraseña necesaria, es una señal de que algo anda mal.

Si no estableció una contraseña al elegir el tipo de seguridad, otros usuarios pueden simplemente ignorar la protección de su documento.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no es garantía de la seguridad del documento. El método [Unprotect](https://reference.aspose.com/words/es/net/aspose.words/document/unprotect/#unprotect/) muestra precisamente eso.

{{% /alert %}}

## Agregar protección de documentos

Agregar protección a su documento es un proceso simple, ya que todo lo que necesita hacer es aplicar uno de los métodos de protección que se detallan en esta sección.

Aspose.Words le permite proteger sus documentos de cambios utilizando el método [Protect](https://reference.aspose.com/words/es/net/aspose.words/document/protect/#protect/). Este método no es una característica de seguridad y no cifra un documento.

{{% alert color="primary" %}}

En Microsoft Word, puedes restringir la edición de manera similar usando ambos:

* Restringir edición (Archivo → Información → Proteger documento)
* Función alternativa: "Restringir edición" (Revisar → Proteger → Restringir edición)

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar protección con contraseña a su documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

El siguiente ejemplo de código muestra cómo restringir la edición en un documento para que solo sea posible editar en los campos del formulario:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Quitar protección de documentos

Aspose.Words le permite eliminar la protección de un documento con una modificación simple y directa del mismo. Puede eliminar la protección del documento sin conocer la contraseña real o proporcionar la contraseña correcta para desbloquear el documento mediante el método [Unprotect](https://reference.aspose.com/words/es/net/aspose.words/document/unprotect/#unprotect/). Ambas formas de eliminación no tienen diferencia.

El siguiente ejemplo de código muestra cómo eliminar la protección de su documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Especificar regiones editables sin restricciones

Puede restringir la edición de su documento y al mismo tiempo permitir cambios en partes seleccionadas del mismo. Por lo tanto, cualquiera que abra su documento podrá acceder a estas partes sin restricciones y realizar cambios en el contenido.

Aspose.Words le permite marcar las partes que se pueden cambiar en su documento utilizando los métodos [StartEditableRange](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/starteditablerange/) y [EndEditableRange](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

El siguiente ejemplo de código muestra cómo marcar todo el documento como de solo lectura y especificar regiones editables en él:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

También puede elegir diferentes restricciones de edición de documentos para diferentes secciones.

El siguiente ejemplo de código muestra cómo agregar una restricción para todo el documento y luego eliminar la restricción para una de las secciones:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
