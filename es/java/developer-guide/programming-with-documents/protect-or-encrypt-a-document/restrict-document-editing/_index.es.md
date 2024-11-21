---
title: Documento de restricción Edición en Java
second_title: Aspose.Words para Java
articleTitle: Edición de documentos restrictivos
linktitle: Edición de documentos restrictivos
description: "Restringir la edición de un documento estableciendo un tipo de restricción. También puede eliminar la protección y hacer regiones editables sin restricciones utilizando Java."
type: docs
weight: 30
url: /es/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que necesite limitar la capacidad de editar un documento y sólo permitir ciertas acciones con él. Esto puede ser útil para evitar que otras personas editen información confidencial y confidencial en su documento.

Aspose.Words permite restringir la edición de un documento estableciendo un tipo de restricción. Además, Aspose.Words También le permite especificar los ajustes de protección de escritura para un documento.

Este artículo explica cómo utilizar Aspose.Words seleccionar un tipo de restricción, cómo agregar o eliminar la protección, y cómo hacer regiones editables sin restricciones.

## Seleccione Editar tipo de restricción

Aspose.Words permite controlar la forma en que restringe el contenido usando el [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) Parámetro de enumeración. Esto le permitirá seleccionar un tipo exacto de protección como el siguiente:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtección

Todos los tipos están protegidos por contraseña, y si esta contraseña no se introduce correctamente, un usuario no podrá cambiar legalmente el contenido de su documento. Así, si su documento es devuelto a usted sin necesidad de proporcionar la contraseña necesaria, este es un signo de que algo está mal.

Si no ha establecido una contraseña al elegir el tipo de seguridad, otros usuarios pueden simplemente ignorar la protección de su documento.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es sólo una propiedad en un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, esa contraseña no es garantía de la seguridad del documento. El [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) el método muestra eso.

{{% /alert %}}

## Add Document Protection

Agregar protección a su documento es un proceso sencillo, ya que todo lo que necesita es aplicar uno de los métodos de protección detallados en esta sección.

Aspose.Words le permite proteger sus documentos de los cambios usando el [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) método. Este método no es una característica de seguridad y no encripta un documento.

{{% alert color="primary" %}}

In Microsoft Word, puede restringir la edición de una manera similar utilizando ambos:

* Edición de restricciones (File → Info → Documento de protección)
* Función alternativa – "Restrict Editing" (Revisión → Proteger → Edición de Restringencia)

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar protección de contraseña a su documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

El siguiente ejemplo de código muestra cómo restringir la edición en un documento por lo que sólo es posible editar en campos de formularios:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Eliminar la protección del documento

Aspose.Words le permite eliminar la protección de un documento con simple y directa modificación de documentos. Usted puede eliminar la protección del documento sin conocer la contraseña real o proporcionar la contraseña correcta para desbloquear el documento utilizando el [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) método. Ambas maneras de quitar no tienen ninguna diferencia.

El siguiente ejemplo de código muestra cómo eliminar la protección de su documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Especificar regiones editables sin restricciones

Puede restringir la edición de su documento y al mismo tiempo permitir cambios a partes seleccionadas de él. Por lo tanto, cualquiera que abra su documento será capaz de acceder a estas partes sin restricciones y hacer cambios en el contenido.

Aspose.Words le permite marcar las partes que se pueden cambiar en su documento usando el [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) y [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) métodos.

El siguiente ejemplo de código muestra cómo marcar todo el documento como sólo lectura y especificar regiones editables en él:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

También puede elegir diferentes restricciones de edición de documentos para diferentes secciones.

El siguiente ejemplo de código muestra cómo agregar una restricción para todo el documento, y luego eliminar la restricción para una de las secciones:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
