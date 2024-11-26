---
title: Restringir la edición de documentos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Restringir la edición de documentos
linktitle: Restringir la edición de documentos
description: "Restrinja la edición de un documento estableciendo un tipo de restricción usando Python. También puede eliminar la protección y crear regiones editables sin restricciones."
type: docs
weight: 30
url: /es/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que necesites limitar la capacidad de editar un documento y permitir solo ciertas acciones con él. Esto puede resultar útil para evitar que otras personas editen información sensible y confidencial en su documento.

Aspose.Words le permite restringir la edición de un documento estableciendo un tipo de restricción. Además, Aspose.Words también le permite especificar configuraciones de protección contra escritura para un documento.

Este artículo explica cómo usar Aspose.Words para seleccionar un tipo de restricción, cómo agregar o eliminar protección y cómo crear regiones editables sin restricciones.

## Seleccione el tipo de restricción de edición

Aspose.Words le permite controlar la forma en que restringe el contenido utilizando el parámetro de enumeración [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). Esto le permitirá seleccionar un tipo exacto de protección como el siguiente:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

Todos los tipos están protegidos por contraseña y, si esta contraseña no se ingresa correctamente, el usuario no podrá cambiar legalmente el contenido de su documento. Por lo tanto, si le devuelven el documento sin necesidad de proporcionar la contraseña necesaria, es una señal de que algo anda mal.

Si no estableció una contraseña al elegir el tipo de seguridad, otros usuarios pueden simplemente ignorar la protección de su documento.

{{% alert color="primary" %}}

Tenga en cuenta que la contraseña que se establece es solo una propiedad de un documento que se puede eliminar si se accede a las propiedades del documento. En consecuencia, dicha contraseña no es garantía de la seguridad del documento. El método [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) muestra precisamente eso.

{{% /alert %}}

## Agregar protección de documentos

Agregar protección a su documento es un proceso simple, ya que todo lo que necesita hacer es aplicar uno de los métodos de protección que se detallan en esta sección.

Aspose.Words le permite proteger sus documentos de cambios utilizando el método [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). Este método no es una característica de seguridad y no cifra un documento.

{{% alert color="primary" %}}

En Microsoft Word, puedes restringir la edición de manera similar usando ambos:

* Restringir edición (Archivo → Información → Proteger documento)
* Función alternativa: "Restringir edición" (Revisar → Proteger → Restringir edición)

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar protección con contraseña a su documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo restringir la edición en un documento para que solo sea posible editar en los campos del formulario:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## Quitar protección de documentos

Aspose.Words le permite eliminar la protección de un documento con una modificación simple y directa del mismo. Puede eliminar la protección del documento sin conocer la contraseña real o proporcionar la contraseña correcta para desbloquear el documento mediante el método [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). Ambas formas de eliminación no tienen diferencia.

El siguiente ejemplo de código muestra cómo eliminar la protección de su documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## Especificar regiones editables sin restricciones

Puede restringir la edición de su documento y al mismo tiempo permitir cambios en partes seleccionadas del mismo. Por lo tanto, cualquiera que abra su documento podrá acceder a estas partes sin restricciones y realizar cambios en el contenido.

Aspose.Words le permite marcar las partes que se pueden cambiar en su documento utilizando los métodos [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) y [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

El siguiente ejemplo de código muestra cómo marcar todo el documento como de solo lectura y especificar regiones editables en él:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

También puede elegir diferentes restricciones de edición de documentos para diferentes secciones.

El siguiente ejemplo de código muestra cómo agregar una restricción para todo el documento y luego eliminar la restricción para una de las secciones:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
