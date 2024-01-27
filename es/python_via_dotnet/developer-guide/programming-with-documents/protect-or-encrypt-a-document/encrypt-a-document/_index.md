---
title: Cifrar un documento en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Cifrar un documento
linktitle: Cifrar un documento
description: "Cifre su documento utilizando algoritmos de cifrado apropiados para formatos de documentos específicos en Python."
type: docs
weight: 20
url: /es/python-net/encrypt-a-document/
---

El cifrado es el proceso que traduce texto legible en secuencias de bytes sin sentido para que solo pueda ser leído por la persona que tiene la clave de descifrado o el código secreto. Este proceso juega un papel importante en la protección de su contenido. Ayuda a codificar el contenido, verificar el origen de un documento, demostrar que el contenido no ha sido modificado después de su envío y garantizar que los datos del documento estén seguros.

Este artículo explica cómo Aspose.Words le permite cifrar un documento y cómo comprobar si un documento tiene cifrado o no.

## Cifrar con contraseña

Para cifrar un documento, utilice la propiedad **contraseña** para proporcionar una contraseña que funcione como clave de cifrado. Esto modificará el contenido de su documento y lo hará ilegible. El documento cifrado requerirá que se ingrese esta contraseña antes de poder abrirlo.

{{% alert color="primary" %}}

Puede encontrar la propiedad **contraseña** adecuada para el formato requerido. Cada formato de guardado de documento en el módulo [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) tiene una clase correspondiente que contiene opciones de guardado para este formato. Por ejemplo, la propiedad [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) en la clase [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) para DOC o la propiedad [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) en la clase [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM y FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que sólo ciertos formatos de documentos admiten el cifrado. Por ejemplo, RTF no admite cifrado.

{{% /alert %}}

La siguiente tabla enumera los formatos y algoritmos de cifrado admitidos por Aspose.Words:

| Formato |  Cifrado admitido durante la carga |  Cifrado admitido al guardar |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, PUNTO |  Cifrado XORCifrado RC4 de 40 bitsCryptoAPICifrado RC4 |  Cifrado RC4 (40 bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Cifrado estándar ECMA-376Cifrado ágil ECMA-376 |  Cifrado estándar ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Cifrado ODF (Blowfish/AES) |  Cifrado ODF (AES256 + SHA256) |
|  PDF |                                                          |  Cifrado RC4 (40/128 bits) |

El siguiente ejemplo de código muestra cómo cifrar un documento con una contraseña:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Comprobar si un documento está cifrado

En algunos casos, es posible que tenga un documento ilegible y desee asegurarse de que esté cifrado y no esté dañado ni comprimido.

Para detectar si un documento está cifrado y si se requiere una contraseña, puede utilizar la propiedad [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) de la clase [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Esta propiedad también le permitirá realizar alguna acción antes de cargar un documento, por ejemplo, informar a un usuario que proporcione una contraseña.

El siguiente ejemplo de código muestra cómo detectar el cifrado del documento:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Abrir un documento con o sin contraseña

Cuando nos hayamos asegurado de que un documento está cifrado, podemos intentar abrirlo sin contraseña, lo que debería provocar una excepción.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado sin contraseña:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

Una vez que hayamos visto que un documento cifrado no se puede abrir sin contraseña, podemos intentar abrirlo ingresando la contraseña.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado con una contraseña:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
