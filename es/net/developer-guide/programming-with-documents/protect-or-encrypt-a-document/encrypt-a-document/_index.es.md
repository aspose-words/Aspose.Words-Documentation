---
title: Cifrar un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Cifrar un documento
linktitle: Cifrar un documento
description: "Cifre su documento utilizando algoritmos de cifrado apropiados para formatos de documentos específicos en C#."
type: docs
weight: 20
url: /es/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

El cifrado es el proceso que traduce texto legible en secuencias de bytes sin sentido para que solo pueda ser leído por la persona que tiene la clave de descifrado o el código secreto. Este proceso juega un papel importante en la protección de su contenido. Ayuda a codificar el contenido, verificar el origen de un documento, demostrar que el contenido no ha sido modificado después de su envío y garantizar que los datos del documento estén seguros.

Este artículo explica cómo Aspose.Words le permite cifrar un documento y cómo comprobar si un documento tiene cifrado o no.

## Cifrar con contraseña

Para cifrar un documento, utilice la propiedad **Password** para proporcionar una contraseña que funcione como clave de cifrado. Esto modificará el contenido de su documento y lo hará ilegible. El documento cifrado requerirá que se ingrese esta contraseña antes de poder abrirlo.

{{% alert color="primary" %}}

Puede encontrar la propiedad **Password** adecuada para el formato requerido. Cada formato de guardado de documento en [Guardar espacio de nombres](https://reference.aspose.com/words/es/net/aspose.words.saving/) tiene una clase correspondiente que contiene opciones de guardado para este formato. Por ejemplo, la propiedad [Password](https://reference.aspose.com/words/es/net/aspose.words.saving/docsaveoptions/password/) en la clase [DocSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/docsaveoptions/) para DOC o la propiedad [Password](https://reference.aspose.com/words/es/net/aspose.words.saving/ooxmlsaveoptions/password/) en la clase [OoxmlSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM y FlatOpc.

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
|  PDF |  -                                                            |  Cifrado RC4 (40/128 bits) |

El siguiente ejemplo de código muestra cómo cifrar un documento con una contraseña:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Comprobar si un documento está cifrado

En algunos casos, es posible que tenga un documento ilegible y desee asegurarse de que esté cifrado y no esté dañado ni comprimido.

Para detectar si un documento está cifrado y si se requiere una contraseña, puede utilizar la propiedad [IsEncrypted](https://reference.aspose.com/words/es/net/aspose.words/fileformatinfo/isencrypted/) de la clase [FileFormatInfo](https://reference.aspose.com/words/es/net/aspose.words/fileformatinfo/). Esta propiedad también le permitirá realizar alguna acción antes de cargar un documento, por ejemplo, informar a un usuario que proporcione una contraseña.

El siguiente ejemplo de código muestra cómo detectar el cifrado del documento:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Abrir un documento con o sin contraseña

Cuando nos hemos asegurado de que un documento está cifrado, podemos intentar abrirlo sin contraseña, lo que debería provocar una excepción.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado sin contraseña:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Una vez que hayamos visto que un documento cifrado no se puede abrir sin contraseña, podemos intentar abrirlo ingresando la contraseña.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
