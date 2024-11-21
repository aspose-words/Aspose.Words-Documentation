---
title: Abrir un documento de solo lectura en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Abrir un documento de solo lectura
linktitle: Abrir un documento de solo lectura
description: "Haga que su documento sea de solo lectura para que el contenido pueda copiarse o leerse, pero no modificarse mediante Python."
type: docs
weight: 10
url: /es/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

A veces, es posible que tenga un documento que necesite una revisión, pero no desee que los revisores modifiquen su contenido al azar. Aspose.Words le permite hacer que el permiso de su documento sea de solo lectura para que el contenido pueda copiarse o leerse, pero no modificarse. Esto evitará que se elimine o agregue contenido a su documento.

{{% alert color="primary" %}}

Aplicar la opción de solo lectura a su documento no impide que alguien cree una nueva copia y la guarde con otro nombre.

{{% /alert %}}

Este artículo explica cómo hacer que un documento sea de solo lectura.

## Hacer que un documento sea de solo lectura

Aspose.Words tiene la clase pública [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) que especifica la configuración de protección contra escritura para un documento. No crea instancias de esta clase directamente.

La protección contra escritura muestra si el autor ha recomendado abrir un documento como de solo lectura y/o solicitar una contraseña para modificar el documento.

Aspose.Words le permite hacer que un documento sea de solo lectura para restringir la edición mediante el uso de la propiedad [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) y el método [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

En Microsoft Word, puede crear un documento de solo lectura de manera similar usando ambos:

* "Siempre abrir sólo lectura" (Archivo → Información → Proteger documento)
* "Contraseña a modificar" (Guardar como → Herramientas → Opciones generales → Contraseña)

{{% /alert %}}

{{% alert color="primary" %}}

Los usuarios también pueden restringir la edición de documentos seleccionando [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) como [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), pero esta es otra característica que proporciona capacidades de protección más avanzadas. Existe una función de este tipo en Microsoft Word, respectivamente, está implementada en Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) se describirá en detalle en uno de los siguientes artículos: "Restringir la edición de documentos".

{{% /alert %}}

La propiedad [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) está protegida por contraseña, por lo que si no establece una contraseña antes de aplicar la propiedad [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), otros usuarios pueden simplemente abrir el documento como si estuviera desprotegido. Accede a la configuración de protección de documentos y establece una contraseña de protección contra escritura a través del método [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no es garantía de la seguridad del documento.

{{% /alert %}}

Si necesita verificar si un documento tiene una contraseña de protección contra escritura que restringe su edición, puede usar la propiedad [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

El siguiente ejemplo de código muestra cómo hacer que un documento sea de solo lectura:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Eliminar restricción de solo lectura

Si no desea que un usuario abra su documento como de solo lectura, simplemente puede configurar la propiedad [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) en `False` o seleccionar [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) como [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

El siguiente ejemplo de código muestra cómo eliminar el acceso de solo lectura a un documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
