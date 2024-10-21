---
title: Abrir un documento de solo lectura en C++
second_title: Aspose.Words para C++
articleTitle: Abrir un Documento de solo lectura
linktitle: Abrir un Documento de solo lectura
description: "Haga que su documento sea de solo lectura para que el contenido se pueda copiar o leer, pero no modificar."
type: docs
weight: 10
url: /es/cpp/open-a-document-read-only/
---

A veces, es posible que tenga un documento que necesite una revisión, pero no desea que los revisores modifiquen aleatoriamente su contenido. Aspose.Words le permite hacer que el permiso de su documento sea de solo lectura para que el contenido se pueda copiar o leer, pero no modificar. Esto evitará que el contenido se elimine o se agregue a su documento.

{{% alert color="primary" %}}

Aplicar la opción de solo lectura a su documento no impide que alguien cree una nueva copia del mismo y lo guarde con otro nombre.

{{% /alert %}}

En este artículo se explica cómo hacer que un documento sea de solo lectura.

## Convertir un Documento en de solo Lectura

Aspose.Words tiene la clase pública [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) que especifica la configuración de protección contra escritura de un documento. No creas instancias de esta clase directamente.

La protección contra escritura muestra si el autor ha recomendado abrir un documento como de solo lectura y/o requerir una contraseña para modificarlo.

Aspose.Words le permite hacer que un documento sea de solo lectura para restringir la edición mediante la propiedad [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) y el método [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

En Microsoft Word, puede crear un documento de solo lectura de manera similar usando ambos:

* "Abrir siempre de solo lectura "(Archivo → Información → Proteger documento)
* "Contraseña para modificar" (Guardar como → Herramientas → Opciones generales → Contraseña)

{{% /alert %}}

{{% alert color="primary" %}}

Los usuarios también pueden restringir la edición de documentos seleccionando [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) como **ReadOnly**, pero esta es otra característica que proporciona capacidades de protección más avanzadas. Existe tal función en Microsoft Word, respectivamente, se implementa en Aspose.Words.

**ProtectionType**

{{% /alert %}}

La propiedad **ReadOnlyRecommended** está protegida con contraseña, por lo que si no establece una contraseña antes de aplicar la propiedad **ReadOnlyRecommended**, otros usuarios simplemente pueden abrir el documento como si estuviera desprotegido. Puede acceder a la configuración de protección de documentos y establecer una contraseña de protección contra escritura mediante el método **SetPassword**.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no garantiza la seguridad del documento.

{{% /alert %}}

Si necesita verificar si un documento tiene una contraseña de protección contra escritura que le impide editarlo, puede usar la propiedad [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

El siguiente ejemplo de código muestra cómo hacer que un documento sea de solo lectura:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Eliminar la Restricción de Solo Lectura

Si no desea que un usuario abra su documento como de solo lectura, simplemente puede establecer la propiedad **ReadOnlyRecommened** en *false* o seleccionar **ProtectionType** como **NoProtection**.

El siguiente ejemplo de código muestra cómo eliminar el acceso de solo lectura de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
