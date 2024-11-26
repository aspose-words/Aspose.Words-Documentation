---
title: Trabajar con firmas digitales en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con firmas digitales
linktitle: Trabajar con firmas digitales
description: "Firme documentos digitalmente y detecte, cuente, verifique y elimine firmas digitales existentes mediante C#."
type: docs
weight: 40
url: /es/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Una firma digital es una implementación tecnológica de la firma electrónica para firmar documentos y autenticar al firmante para garantizar que un documento no ha sido modificado desde que fue firmado. Cada firma digital es única para cada firmante debido a que se sigue el protocolo PKI para generar claves tanto públicas como privadas. Firmar un documento digitalmente significa crear una firma utilizando la clave privada del firmante donde se utiliza un algoritmo matemático para cifrar el hash generado.

Aspose.Words le permite detectar, contar o verificar firmas digitales existentes y también agregar una nueva firma a su documento para descubrir cualquier manipulación en el mismo. También puede eliminar todas las firmas digitales de un documento. Utilice la clase [DigitalSignatureUtil](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignatureutil/) para trabajar con firmas digitales.

Este artículo explica cómo hacer todo lo anterior para validar la autenticidad e integridad de un documento digital.

{{% alert color="primary" %}}

Tenga en cuenta que puede acceder a las firmas digitales de su documento solo cuando ejecuta la versión .NET Framework 2.0 y superior.

{{% /alert %}}

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Firma en línea gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos admitidos

Aspose.Words le permite trabajar con firmas digitales en documentos DOC, OOXML y ODT y firmar el documento generado en formato PDF o XPS.

## Limitaciones de las firmas digitales

La siguiente tabla describe algunas limitaciones que puede enfrentar al trabajar con firmas digitales a través de Aspose.Words, así como algunas opciones alternativas.

|  Limitación |  Opción alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Pérdida de firmas digitales en un documento después de cargarlo y guardarlo. Por lo tanto, procesar un documento en un servidor puede provocar la pérdida de todas las firmas digitales sin previo aviso. |  Compruebe si un documento tiene firmas digitales y tome las medidas adecuadas si encuentra alguna. Por ejemplo, enviar una alerta a los clientes informándoles que el documento que están subiendo contiene firmas digitales que se perderán si se procesa. |
|  Aspose.Words admite trabajar con macros en un documento. Pero Aspose.Words aún no admite firmas digitales en macros. |  Exporte el documento nuevamente a cualquier formato de Word y use Microsoft Word para agregar una firma digital a las macros. |

## Detectar, contar y verificar firmas digitales

Aspose.Words le permite detectar la firma digital en un documento utilizando el método [DetectFileFormat](https://reference.aspose.com/words/es/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) y la propiedad [HasDigitalSignature](https://reference.aspose.com/words/es/net/aspose.words/fileformatinfo/hasdigitalsignature/). Vale la pena señalar que dicha verificación sólo detectará el hecho de la firma, pero no su validez.

Un documento se puede firmar más de una vez y esto lo pueden hacer diferentes usuarios. Para comprobar la validez de las firmas digitales, debe cargarlas desde el documento utilizando el método [LoadSignatures](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) y utilizar la propiedad [IsValid](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Además, Aspose.Words le permite contar un conjunto de todas las firmas digitales dentro de un documento utilizando la propiedad [Count](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Todo esto proporciona una manera eficiente y segura de verificar las firmas de un documento antes de procesarlo.

El siguiente ejemplo de código muestra cómo detectar la presencia de firmas digitales y verificarlas:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Crear una firma digital {#create-a-digital-signature}

Para crear una firma digital, deberá cargar un certificado de firma que confirme la identidad. Cuando envías un documento firmado digitalmente, también envías tu certificado y clave pública.

Aspose.Words le permite crear un certificado X.509, un certificado digital que utiliza el estándar PKI X.509 aceptado internacionalmente para verificar que una clave pública pertenece al firmante incluido dentro del certificado. Para hacer esto, use el método [Create](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/certificateholder/create/) dentro de la clase [CertificateHolder](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/certificateholder/).

Las siguientes secciones explican cómo agregar una firma digital, una línea de firma y cómo firmar un documento PDF generado.

### Firmar un documento

Aspose.Words le permite firmar digitalmente un documento DOC, DOCX, XPS u ODT utilizando el método [Sign](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) y las propiedades [SignOptions](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/signoptions/).

El siguiente ejemplo de código muestra cómo firmar documentos utilizando un titular de certificado y opciones de firma:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Agregar una línea de firma

Una línea de firma es una representación visual de una firma digital en un documento. Aspose.Words le permite insertar una línea de firma utilizando el método [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertsignatureline/). También puede configurar los parámetros para esta representación utilizando la clase [SignatureLineOptions](https://reference.aspose.com/words/es/net/aspose.words/signaturelineoptions/).

Por ejemplo, la siguiente imagen muestra cómo se pueden mostrar las firmas válidas e inválidas.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="dibujo" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="dibujo" style="width:300px"/>

Además, si un documento contiene una línea de firma y no una firma digital, existe una función que le pide al usuario que agregue una firma.

El siguiente ejemplo de código muestra cómo firmar un documento con un certificado personal y una línea de firma específica:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Firmar un documento PDF generado {#sign-a-generated-pdf-document}

Aspose.Words le permite firmar y obtener todos los detalles de un documento PDF utilizando las propiedades [PdfDigitalSignatureDetails](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfdigitalsignaturedetails/).

El siguiente ejemplo de código muestra cómo firmar un PDF generado:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Recuperar el valor de la firma digital

Aspose.Words también brinda la capacidad de recuperar el valor de la firma digital de un documento firmado digitalmente como una matriz de bytes utilizando la propiedad [SignatureValue](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

El siguiente ejemplo de código muestra cómo obtener el valor de la firma digital como una matriz de bytes de un documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Eliminar firmas digitales

Aspose.Words le permite eliminar todas las firmas digitales de un documento firmado utilizando el método [RemoveAllSignatures](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

El siguiente ejemplo de código muestra cómo cargar y eliminar firmas digitales de un documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Tenga en cuenta que no puede eliminar solo una firma digital dentro de su documento.

{{% /alert %}}
