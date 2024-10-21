---
title: Trabajar con Firmas digitales en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Firmas Digitales
linktitle: Trabajar con Firmas Digitales
description: "Firme documentos digitalmente y detecte, cuente, verifique y elimine las firmas digitales existentes."
type: docs
weight: 160
url: /es/cpp/working-with-digital-signatures/
---

Una firma digital es una implementación tecnológica de firmas electrónicas para firmar documentos y autenticar al firmante para garantizar que un documento no haya sido modificado desde que se firmó. Cada firma digital es única para cada firmante debido a que sigue el protocolo PKI para generar claves públicas y privadas. Firmar un documento digitalmente significa crear una firma utilizando la clave privada del firmante, donde se utiliza un algoritmo matemático para cifrar el hash generado.

Aspose.Words le permite detectar, contar o verificar firmas digitales existentes, y también agregar una nueva firma a su documento para detectar cualquier manipulación en él. También puede eliminar todas las firmas digitales de un documento. Utilice la clase [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) para trabajar con firmas digitales.

Este artículo explica cómo hacer todo lo anterior para validar la autenticidad e integridad de un documento digital.

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede probar esta funcionalidad con nuestro [Firma en línea gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos Admitidos

Aspose.Words le permite trabajar con firmas digitales en documentos DOC, OOXML y ODT y firmar el documento generado en formato PDF o XPS.

## Limitaciones de las Firmas Digitales

La siguiente tabla describe algunas limitaciones que puede enfrentar al trabajar con firmas digitales a través de Aspose.Words, así como algunas opciones alternativas.

| Limitación | Opción alternativa |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Pérdida de firmas digitales en un documento después de cargarlo y guardarlo. Por lo tanto, procesar un documento en un servidor puede provocar la pérdida de todas las firmas digitales sin previo aviso. | Verifique si un documento tiene firmas digitales y tome las medidas adecuadas si se encuentran. Por ejemplo, envíe una alerta a los clientes informándoles de que el documento que están cargando contiene firmas digitales que se perderán si se procesan. |
| Aspose.Words admite el trabajo con macros en un documento. Pero Aspose.Words aún no admite firmas digitales en macros. | Exporte el documento a cualquier formato de Word y use Microsoft Word para agregar una firma digital a las macros. |

## Detecte, Cuente y Verifique Firmas Digitales

Aspose.Words le permite detectar firmas digitales en un documento utilizando el método [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) y la propiedad [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Vale la pena señalar que dicha verificación solo detectará el hecho de la firma, pero no su validez.

Un documento puede firmarse más de una vez, y esto lo pueden hacer varios usuarios. Para verificar la validez de las firmas digitales, debe cargarlas desde el documento utilizando el método [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) y usar la propiedad [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Además, Aspose.Words le permite contar un conjunto de todas las firmas digitales dentro de un documento utilizando la propiedad [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Todo esto proporciona una forma eficiente y segura de verificar las firmas de un documento antes de procesarlo.

El siguiente ejemplo de código muestra cómo detectar la presencia de firmas digitales y verificarlas:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Crear una Firma Digital {#create-a-digital-signature}

Para crear una firma digital, deberá cargar un certificado de firma que confirme la identidad. Cuando envía un documento firmado digitalmente, también envía su certificado y clave pública.

Aspose.Words le permite crear un certificado X. 509, un certificado digital que utiliza el estándar PKI X. 509 aceptado internacionalmente para verificar que una clave pública pertenece al firmante incluido en el certificado. Para hacer esto, use el método [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) dentro de la clase [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Las siguientes secciones explican cómo agregar una firma digital, una línea de firma y cómo firmar un documento PDF generado.

### Firmar un Documento

Aspose.Words le permite firmar digitalmente un documento DOC, DOCX o ODT utilizando el método [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) y las propiedades [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

El siguiente ejemplo de código muestra cómo firmar documentos utilizando un titular de certificado y las opciones de firma:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Agregar una Línea de Firma

Una línea de firma es una representación visual de una firma digital en un documento. Aspose.Words le permite insertar una línea de firma utilizando el método [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). También puede establecer los parámetros para esta representación utilizando la clase [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Por ejemplo, la siguiente imagen muestra cómo se pueden mostrar las firmas válidas y no válidas.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Además, si un documento contiene una línea de firma y no una firma digital, existe una función para pedirle al usuario que agregue una firma.

El siguiente ejemplo de código muestra cómo firmar un documento con un certificado personal y una línea de firma específica:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Firmar un PDF Documento Generado {#sign-a-generated-pdf-document}

Aspose.Words le permite firmar y obtener todos los detalles de un documento PDF utilizando las propiedades [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

El siguiente ejemplo de código muestra cómo firmar un PDFgenerado:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Recuperar el Valor de la Firma Digital

Aspose.Words también proporciona la capacidad de recuperar el valor de la firma digital de un documento firmado digitalmente como una matriz de bytes utilizando la propiedad [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

El siguiente ejemplo de código muestra cómo obtener el valor de la firma digital como una matriz de bytes de un documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Eliminar Firmas Digitales

Aspose.Words le permite eliminar todas las firmas digitales de un documento firmado utilizando el método [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

El siguiente ejemplo de código muestra cómo cargar y eliminar firmas digitales de un documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Tenga en cuenta que no puede eliminar solo una firma digital dentro de su documento.

{{% /alert %}}
