---
title: Abrir un documento de solo lectura en C#
second_title: Aspose.Words para .NET
articleTitle: Abrir un documento de solo lectura
linktitle: Abrir un documento de solo lectura
description: "Haga que su documento sea de solo lectura para que el contenido pueda copiarse o leerse, pero no modificarse mediante C#."
type: docs
weight: 10
url: /es/net/open-a-document-read-only/
---

A veces, es posible que tenga un documento que necesite una revisión, pero no desee que los revisores modifiquen su contenido al azar. Aspose.Words le permite hacer que el permiso de su documento sea de solo lectura para que el contenido pueda copiarse o leerse, pero no modificarse. Esto evitará que se elimine o agregue contenido a su documento.

{{% alert color="primary" %}}

Aplicar la opción de solo lectura a su documento no impide que alguien cree una nueva copia y la guarde con otro nombre.

{{% /alert %}}

Este artículo explica cómo hacer que un documento sea de solo lectura.

## Hacer que un documento sea de solo lectura

Aspose.Words tiene la clase pública [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) que especifica la configuración de protección contra escritura para un documento. No crea instancias de esta clase directamente.

La protección contra escritura muestra si el autor ha recomendado abrir un documento como de solo lectura y/o solicitar una contraseña para modificar el documento.

Aspose.Words le permite hacer que un documento sea de solo lectura para restringir la edición mediante el uso de la propiedad [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) y el método [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

En Microsoft Word, puede crear un documento de solo lectura de manera similar usando ambos:

* "Abrir siempre solo lectura" (Archivo → Información → Proteger documento)
* "Contraseña a modificar" (Guardar como → Herramientas → Opciones generales → Contraseña)

{{% /alert %}}

{{% alert color="primary" %}}

Los usuarios también pueden restringir la edición de documentos seleccionando [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) como **ReadOnly**, pero esta es otra característica que proporciona capacidades de protección más avanzadas. Existe una función de este tipo en Microsoft Word, respectivamente, está implementada en Aspose.Words.

**ProtectionType** se describirá en detalle en uno de los siguientes artículos: "Restringir la edición de documentos".

{{% /alert %}}

La propiedad **ReadOnlyRecommended** está protegida por contraseña, por lo que si no establece una contraseña antes de aplicar la propiedad **ReadOnlyRecommended**, otros usuarios pueden simplemente abrir el documento como si estuviera desprotegido. Accede a la configuración de protección de documentos y establece una contraseña de protección contra escritura a través del método **SetPassword**.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no es garantía de la seguridad del documento.

{{% /alert %}}

Si necesita verificar si un documento tiene una contraseña de protección contra escritura que restringe su edición, puede usar la propiedad [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

El siguiente ejemplo de código muestra cómo hacer que un documento sea de solo lectura:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Eliminar restricción de solo lectura

Si no desea que un usuario abra su documento como de solo lectura, simplemente puede configurar la propiedad **ReadOnlyRecommened** en *false* o seleccionar **ProtectionType** como **NoProtection**.

El siguiente ejemplo de código muestra cómo eliminar el acceso de solo lectura a un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
