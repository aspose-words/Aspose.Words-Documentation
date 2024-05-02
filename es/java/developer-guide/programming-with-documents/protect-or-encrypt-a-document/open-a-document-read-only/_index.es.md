---
title: Abrir un documento Leer sólo en Java
second_title: Aspose.Words para Java
articleTitle: Abrir un documento solo lectura
linktitle: Abrir un documento solo lectura
description: "Haga su documento solo para que el contenido pueda ser copiado o leído, pero no modificado usando Java."
type: docs
weight: 10
url: /es/java/open-a-document-read-only/
---

A veces, puede tener un documento que necesite una revisión, pero no quiere que los revisores modifiquen aleatoriamente su contenido. Aspose.Words le permite hacer el permiso de su documento sólo para que el contenido pueda ser copiado o leído, pero no modificado. Esto evitará que el contenido sea eliminado o añadido a su documento.

{{% alert color="primary" %}}

Aplicar la opción de sólo lectura a su documento no impide a alguien crear una nueva copia de ella y guardarla con otro nombre.

{{% /alert %}}

Este artículo explica cómo hacer un documento solo lectura.

## Hacer un documento solo lectura

Aspose.Words tiene la clase pública [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) que especifica la configuración de protección de escritura para un documento. Usted no crea instancias de esta clase directamente.

La protección de escritura muestra si el autor ha recomendado abrir un documento como sólo lectura y/o requerir una contraseña para modificar el documento.

Aspose.Words le permite hacer un documento sólo lectura para restringir la edición utilizando el [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) propiedad y el [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) método.

{{% alert color="primary" %}}

In Microsoft Word, puede crear un documento de sólo lectura de una manera similar utilizando ambos:

* "Siempre abierto solo" (File → Info → Protect Document)
* "Password to modify" (Save As → Herramientas → Opciones generales → Contraseña)

{{% /alert %}}

{{% alert color="primary" %}}

Los usuarios también pueden restringir la edición de documentos seleccionando [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) como **ReadOnly**, pero esta es otra característica que proporciona capacidades de protección más avanzadas. Hay tal función en Microsoft Word, respectivamente, se aplica en Aspose.Words.

**ProtectionType** se describirá detalladamente en uno de los siguientes artículos: "Restrict Document Editing".

{{% /alert %}}

El **ReadOnlyRecommended** propiedad está asegurada por contraseña, por lo que si no establece una contraseña antes de aplicar la **ReadOnlyRecommended** propiedad, entonces otros usuarios pueden simplemente abrir el documento como si estuviera desprotegido. Usted accede a la configuración de protección de documentos y establece una contraseña de protección de escritura a través de la **SetPassword** método.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es sólo una propiedad en un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, esa contraseña no es garantía de la seguridad del documento.

{{% /alert %}}

Si necesita comprobar si un documento tiene una contraseña de protección de escritura que la restringe de la edición, puede utilizar la [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) propiedad.

El siguiente ejemplo de código muestra cómo hacer un documento solo lectura:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Eliminar la restricción de lectura

Si no desea que un usuario abra su documento como sólo lectura, simplemente puede establecer el **ReadOnlyRecommened** propiedad a *false* o seleccionar **ProtectionType** como **NoProtection**.

El siguiente ejemplo de código muestra cómo eliminar el acceso sólo lectura para un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
