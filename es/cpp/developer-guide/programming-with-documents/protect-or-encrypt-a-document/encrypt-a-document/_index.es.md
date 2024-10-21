---
title: Cifrar un documento en C++
second_title: Aspose.Words para C++
articleTitle: Cifrar un Documento
linktitle: Cifrar un Documento
description: "Cifre su documento utilizando algoritmos de cifrado apropiados para formatos de documentos específicos."
type: docs
weight: 20
url: /es/cpp/encrypt-a-document/
---

El cifrado es el proceso que traduce texto legible en secuencias de bytes sin sentido para que solo pueda leerlo la persona que tiene la clave de descifrado o el código secreto. Este proceso juega un papel importante en la protección de su contenido. Ayuda a codificar el contenido, verificar el origen de un documento, demostrar que el contenido no se ha modificado después de su envío y garantizar que los datos del documento estén seguros.

Este artículo explica cómo Aspose.Words le permite cifrar un documento y cómo verificar si un documento tiene cifrado o no.

## Encriptar con Contraseña

Para cifrar un documento, utilice la propiedad **Password** para proporcionar una contraseña que funcione como clave de cifrado. Esto modificará el contenido de su documento y lo hará ilegible. El documento cifrado requerirá que se ingrese esta contraseña antes de poder abrirlo.

{{% alert color="primary" %}}

Puede encontrar la propiedad **Password** adecuada para el formato requerido. Cada formato de guardado de documentos en [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) tiene una clase correspondiente que contiene opciones de guardado para este formato. Por ejemplo, la propiedad [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) en la clase [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) para DOC, o la propiedad [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) en la clase [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM, y FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que solo ciertos formatos de documentos admiten cifrado. Por ejemplo, RTF no admite cifrado.

{{% /alert %}}

La siguiente tabla enumera los formatos y algoritmos de cifrado admitidos por Aspose.Words:

| Cifrado compatible durante la carga | Cifrado compatible mientras se Guarda |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | Cifrado XOR Cifrado RC4 EncryptionCrypto API RC4 de 40 bits | Cifrado RC4 (40 bits) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | Cifrado estándar ECMA-376encriptación ágil ECMA-376 | Cifrado estándar ECMA - 376 (AES128 + SHA1) |
| ODT, OTT | Cifrado ODF (Blowfish/AES) | Cifrado ODF (AES256 + SHA256 ) |
| PDF | Cifrado RC4 (40/128 bits) |

El siguiente ejemplo de código muestra cómo cifrar un documento con una contraseña:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Comprobar Si un Documento Está Cifrado

En algunos casos, es posible que tenga un documento ilegible y desee asegurarse de que el documento esté encriptado y no dañado ni comprimido.

Para detectar si un documento está cifrado y si se requiere una contraseña, puede usar la propiedad [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) de la clase [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Esta propiedad también le permitirá realizar alguna acción antes de cargar un documento, por ejemplo, informar a un usuario para que proporcione una contraseña.

El siguiente ejemplo de código muestra cómo detectar el cifrado de documentos:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Abrir un Documento Con o sin Contraseña

Cuando nos hayamos asegurado de que un documento esté encriptado, podemos intentar abrir este documento sin contraseña, lo que debería generar una excepción.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado sin contraseña:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Después de que hayamos visto que un documento cifrado no se puede abrir sin contraseña, podemos intentar abrirlo ingresando la contraseña.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
