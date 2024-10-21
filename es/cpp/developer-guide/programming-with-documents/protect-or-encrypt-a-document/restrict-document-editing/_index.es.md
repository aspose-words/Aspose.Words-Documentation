---
title: Restringir la Edición de documentos en C++
second_title: Aspose.Words para C++
articleTitle: Restringir la Edición de Documentos
linktitle: Restringir la Edición de Documentos
description: "Restrinja la edición de un documento estableciendo un tipo de restricción usando C++. También puede eliminar la protección y crear regiones editables sin restricciones."
type: docs
weight: 30
url: /es/cpp/restrict-document-editing/
---

A veces, es posible que deba limitar la capacidad de editar un documento y permitir solo ciertas acciones con él. Esto puede ser útil para evitar que otras personas editen información confidencial y confidencial en su documento.

Aspose.Words le permite restringir la edición de un documento estableciendo un tipo de restricción. Además, Aspose.Words también le permite especificar la configuración de protección contra escritura de un documento.

En este artículo se explica cómo usar Aspose.Words para seleccionar un tipo de restricción, cómo agregar o quitar protección y cómo hacer regiones editables sin restricciones.

## Seleccione el Tipo de Restricción de Edición

Aspose.Words le permite controlar la forma en que restringe el contenido utilizando el parámetro de enumeración [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Esto le permitirá seleccionar un tipo exacto de protección, como el siguiente:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Todos los tipos están protegidos con contraseña y, si esta contraseña no se ingresa correctamente, un usuario no podrá cambiar legalmente el contenido de su documento. Por lo tanto, si se le devuelve su documento sin el requisito de proporcionar la contraseña necesaria, es una señal de que algo anda mal.

Si no estableció una contraseña al elegir el tipo de seguridad, otros usuarios simplemente pueden ignorar la protección de su documento.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no garantiza la seguridad del documento. El método [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) muestra precisamente eso.

{{% /alert %}}

## Agregar Protección de Documentos

Agregar protección a su documento es un proceso simple, ya que todo lo que necesita hacer es aplicar uno de los métodos de protección detallados en esta sección.

Aspose.Words le permite proteger sus documentos de cambios utilizando el método [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Este método no es una característica de seguridad y no cifra un documento.

{{% alert color="primary" %}}

En Microsoft Word, puede restringir la edición de manera similar usando ambos:

* Restringir la edición (Archivo → Información → Proteger documento)
* Función alternativa: "Restringir la edición" (Revisar → Proteger → Restringir la edición)

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar protección con contraseña a su documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

El siguiente ejemplo de código muestra cómo restringir la edición en un documento para que solo sea posible editar en los campos del formulario:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Eliminar la Protección de Documentos

Aspose.Words le permite eliminar la protección de un documento con una modificación simple y directa del documento. Puede eliminar la protección del documento sin conocer la contraseña real o proporcionar la contraseña correcta para desbloquear el documento utilizando el método [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Ambas formas de eliminación no tienen diferencia.

El siguiente ejemplo de código muestra cómo eliminar la protección de su documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Especificar Regiones Editables Sin Restricciones

Puede restringir la edición de su documento y, al mismo tiempo, permitir cambios en partes seleccionadas del mismo. Por lo tanto, cualquier persona que abra su documento podrá acceder a estas partes sin restricciones y realizar cambios en el contenido.

Aspose.Words le permite marcar las partes que se pueden cambiar en su documento usando los métodos [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) y [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

El siguiente ejemplo de código muestra cómo marcar todo el documento como de solo lectura y especificar regiones editables en él:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

También puede elegir diferentes restricciones de edición de documentos para diferentes secciones.

El siguiente ejemplo de código muestra cómo agregar una restricción para todo el documento y luego eliminar la restricción de una de las secciones:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
