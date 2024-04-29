---
title: Encriptar un documento en Java
second_title: Aspose.Words para Java
articleTitle: Encriptar un documento
linktitle: Encriptar un documento
description: "Cifra tu documento usando algoritmos de cifrado apropiados para formatos de documentos específicos en Java."
type: docs
weight: 20
url: /es/java/encrypt-a-document/
---

El cifrado es el proceso que traduce el texto legible a secuencias sin sentido de bytes para que sólo pueda ser leído por la persona que tiene la clave de descifrado o el código secreto. Este proceso desempeña un papel importante en asegurar su contenido. Ayuda a codificar el contenido, verificar el origen de un documento, probar que el contenido no ha sido modificado después de su envío, y asegurar que los datos del documento sean seguros.

Este artículo explica cómo Aspose.Words le permite cifrar un documento y cómo comprobar si un documento tiene cifrado o no.

## Cifrar con contraseña

Para cifrar un documento, utilice el **Password** propiedad para proporcionar una contraseña que funciona como clave de cifrado. Esto modificará el contenido de su documento y lo hará imposible. El documento cifrado exigirá que se introduzca esta contraseña antes de que pueda abrirse.

{{% alert color="primary" %}}

Usted puede encontrar el apropiado **Password** propiedad para el formato requerido. Cada documento guarda formato tiene una clase correspondiente que contiene opciones de ahorro para este formato. Por ejemplo, el [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) propiedad en [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) clase para el DOC, o [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) propiedad en [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) clase para DOCX, DOCM, DOTX, DOTM, y FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que sólo ciertos formatos de documentos soportan la encriptación. Por ejemplo, RTF no admite cifrado.

{{% /alert %}}

La tabla siguiente lista los formatos y algoritmos de cifrado soportados por Aspose.Words:

| Formato |  Encriptación soportada mientras carga |  Encriptación apoyada mientras ahorra |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  Cifrado XOR40-bit RC4 EncryptionCryptoAPI RC4 Encryption |  RC4 Encryption (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Cifrado estándar ECMA-376 |  ECMA-376 Cifrado estándar (AES128 + SHA1) |
|  ODT, OTT |  ODF Encryption (Blowfish/AES) |  ODF Encryption (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 Encryption (40/128 bit) |

El siguiente ejemplo de código muestra cómo cifrar un documento con una contraseña:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Compruebe si un documento está cifrado

En algunos casos, usted puede tener un documento no legible y desea estar seguro de que el documento está encriptado y no dañado o comprimido.

Para detectar si un documento está encriptado y si se requiere una contraseña, puede utilizar el [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propiedad de la [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) clase. Esta propiedad también le permitirá realizar alguna acción antes de cargar un documento, por ejemplo, informando a un usuario para proporcionar una contraseña.

El siguiente ejemplo de código muestra cómo detectar el cifrado de documentos:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Abrir un documento con o sin contraseña

Cuando nos hemos asegurado de que un documento está encriptado, podemos intentar abrir este documento sin una contraseña, lo que debería llevar a una excepción.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado sin contraseña:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Después de haber visto que un documento cifrado no puede abrirse sin una contraseña, podemos tratar de abrirlo introduciendo la contraseña.

El siguiente ejemplo de código muestra cómo intentar abrir un documento cifrado con una contraseña:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
