---
title: Trabajar con las firmas digitales en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Firmas Digitales
linktitle: Trabajar con Firmas Digitales
description: "Firme digitalmente documentos y detectar, contar, verificar y eliminar las firmas digitales existentes utilizando Java."
type: docs
weight: 30
url: /es/java/working-with-digital-signatures/
---

Una firma digital es una implementación tecnológica de firmas electrónicas para firmar documentos y autenticar al firmante para garantizar que un documento no ha sido modificado desde su firma. Cada firma digital es única para cada firmante debido a seguir el protocolo PKI para generar tanto claves públicas como privadas. Firmar un documento digital significa crear una firma usando la clave privada del firmante donde se utiliza un algoritmo matemático para cifrar el hash generado.

Aspose.Words le permite detectar, contar o verificar las firmas digitales existentes, y también añadir una nueva firma a su documento para averiguar cualquier manipulación en él. También puede eliminar todas las firmas digitales de un documento. Usar el [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) clase para trabajar con firmas digitales.

Este artículo explica cómo hacer todo lo anterior para validar la autenticidad e integridad de un documento digital.

{{% alert color="primary" %}}

Tenga en cuenta que puede acceder a las firmas digitales de su documento sólo al ejecutar el Java 6 versión y superior.

{{% /alert %}}

{{% alert color="primary" %}}

**Pruebe en línea**

Puede probar esta funcionalidad con nuestra [Firma gratuita en línea](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos compatibles

Aspose.Words permite trabajar con firmas digitales en documentos DOC, OOXML y ODT y firmar el documento generado en PDF o XPS formato.

## Limitaciones de las firmas digitales

La tabla de abajo describe algunas limitaciones que puede enfrentar mientras trabaja con firmas digitales a través de Aspose.Words, así como algunas opciones alternativas.

|  Limitación |  Opción alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Pérdida de firmas digitales en un documento después de cargar y guardarlo. Por lo tanto, procesar un documento a un servidor puede causar la pérdida de todas las firmas digitales sin previo aviso |  Compruebe si un documento tiene firmas digitales y tome la acción adecuada si se encuentra alguno. Por ejemplo, envía una alerta a los clientes informándoles que el documento que están subiendo contiene firmas digitales que se perderán si se procesa |
|  Aspose.Words soporta trabajar con macros en un documento. Pero... Aspose.Words todavía no admite firmas digitales en macros |  Exportar el documento de nuevo a cualquier formato de Word, y utilizar Microsoft Word añadir una firma digital a macros |

## Detectar, Contar y Verificar Firmas Digitales

Aspose.Words permite detectar la firma digital en un documento usando el [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) método y el [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) propiedad. Vale la pena señalar que tal cheque solo detectará el hecho de la firma, pero no su validez.

Un documento puede ser firmado más de una vez, y esto puede ser hecho por diferentes usuarios. Para comprobar la validez de las firmas digitales, es necesario cargarlas del documento utilizando el [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) método y utilizar el [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) propiedad. También Aspose.Words le permite contar un conjunto de todas las firmas digitales dentro de un documento usando el [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) propiedad.

Todo esto proporciona una manera eficiente y segura de comprobar un documento para las firmas antes de procesarlo.

El siguiente ejemplo de código muestra cómo detectar la presencia de firmas digitales y verificarlas:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Crear una firma digital {#create-a-digital-signature}

Para crear una firma digital, necesitará cargar un certificado de firma que confirme identidad. Cuando envía un documento firmado digitalmente, también envía su certificado y clave pública.

Aspose.Words le permite crear certificado X.509, un certificado digital que utiliza el estándar X.509 PKI aceptado internacionalmente para verificar que una clave pública pertenece al firmante incluido dentro del certificado. Para hacer esto, utilice el [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) método dentro del [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) clase.

Las siguientes secciones explican cómo añadir una firma digital, una línea de firma y cómo firmar un documento PDF generado.

### Sign a Document

Aspose.Words permite firmar un documento DOC, DOCX o ODT digitalmente utilizando el [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) método y [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) propiedades.

El siguiente ejemplo de código muestra cómo firmar documentos usando un titular de certificado y opciones de firma:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Añadir una línea de señalización

Una línea de firma es una representación visual de una firma digital en un documento. Aspose.Words permite insertar una línea de firma usando la [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) método. También puede configurar los parámetros para esta representación usando el [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) clase.

Por ejemplo, la imagen siguiente muestra cómo se pueden mostrar firmas válidas e inválidas.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Además, si un documento contiene una línea de firma y ninguna firma digital, hay una característica para pedir al usuario que agregue una firma.

El siguiente ejemplo de código muestra cómo firmar un documento con un certificado personal y una línea de firma específica:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Firme un documento PDF generado {#sign-a-generated-pdf-document}

Aspose.Words le permite firmar y obtener todos los detalles de un documento PDF usando el [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) propiedades.

El siguiente ejemplo de código muestra cómo firmar un PDF generado:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

La imagen siguiente demuestra que el documento PDF generado se abre en Adobe Acrobat y la firma digital se verifica como presente y válida.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Recuperar el valor de la firma digital

Aspose.Words también proporciona la capacidad de recuperar el valor de firma digital de un documento firmado digitalmente como matriz de byte utilizando el [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propiedad.

El siguiente ejemplo de código muestra cómo obtener el valor de firma digital como matriz de byte de un documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Quitar las firmas digitales

Aspose.Words permite eliminar todas las firmas digitales de un documento firmado usando el [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) método.

El siguiente ejemplo de código muestra cómo cargar y eliminar firmas digitales de un documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que no puede eliminar sólo una firma digital dentro de su documento.

{{% /alert %}}
