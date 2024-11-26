---
title: Trabajar con firmas digitales
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con firmas digitales
linktitle: Trabajar con firmas digitales
description: "Firme documentos digitalmente y detecte, cuente, verifique y elimine firmas digitales existentes mediante Python."
type: docs
weight: 40
url: /es/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Una firma digital se utiliza para autenticar un documento y establecer que el remitente del documento es quien dice ser y que el contenido del documento no ha sido alterado.

Aspose.Words admite documentos con firmas digitales y brinda acceso a ellos, lo que le permite detectar y validar firmas digitales en un documento y firmar un documento PDF generado con un certificado proporcionado. Actualmente, las firmas digitales se admiten en documentos DOC, OOXML y ODT. La firma de documentos generados se admite en formato PDF.

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Firma en línea gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Las firmas digitales no se conservan al abrir y guardar

Un punto importante a tener en cuenta es que un documento cargado y luego guardado usando Aspose.Words perderá todas las firmas digitales firmadas en el documento. Esto se debe a que una firma digital garantiza que el contenido no haya sido modificado y además autentifica la identidad de quien firmó el documento. Estos principios quedarían invalidados si las firmas originales se trasladaran al documento resultante.

Debido a esto, si procesa documentos cargados en un servidor, esto podría significar que puede dañar un documento cargado en su servidor de esta manera sin saberlo. Por lo tanto, es mejor verificar si hay firmas digitales en un documento y tomar las medidas adecuadas si se encuentra alguna; por ejemplo, se puede enviar una alerta al cliente informándole que el documento que está entregando contiene firmas digitales que se perderán si se procesada. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

El código anterior utiliza el método [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) para detectar si un documento contiene firmas digitales sin cargar el documento primero. Esto proporciona una manera eficiente y segura de verificar las firmas de un documento antes de procesarlas. Cuando se ejecuta, el método devuelve un objeto [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) que proporciona la propiedad [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Esta propiedad devuelve verdadero si el documento contiene una o más firmas digitales. Es importante tener en cuenta que este método no valida las firmas, solo determina si las firmas están presentes. La validación de firmas digitales se trata en la siguiente sección.

{{% alert color="primary" %}}

También puede verificar si un documento tiene firmas digitales después de cargarlo verificando la propiedad `Count` de la colección [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Firmas digitales en macros (proyectos VBA)

No se puede acceder ni firmar las firmas digitales en macros. Esto se debe a que Aspose.Words no trata directamente las macros de un documento. Sin embargo, las firmas digitales en las macros se conservan al exportar el documento a cualquier formato de Word. Estas firmas se pueden conservar en el código VBA porque el contenido binario de las macros no se modifica incluso si se modifica el documento en sí.

### Acceder y verificar firmas digitales

Un documento puede tener varias firmas digitales. Se puede acceder a todas estas firmas a través de la colección [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Cada objeto devuelto es un [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) que representa una única firma digital perteneciente al documento. Esto proporciona miembros que le permiten verificar la validez de la firma.

La propiedad más importante que se debe verificar con las firmas digitales es la validez de cada firma en el documento. Todas las firmas del documento se pueden validar a la vez llamando a la propiedad [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Esto devolverá verdadero si todas las firmas del documento son válidas o si el documento no tiene firmas y falso si al menos una firma digital no es válida.

Cada firma también se puede validar individualmente llamando a [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Una firma puede no ser válida por varios motivos, por ejemplo, el documento ha cambiado desde la firma o el certificado ha caducado. Además, también se puede acceder a detalles adicionales de la firma. El siguiente ejemplo de código muestra cómo validar cada firma en un documento y mostrar información básica sobre la firma. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Firmar documentos de Word

La clase [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) proporciona métodos para firmar documentos. El método [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) firma el documento de origen utilizando [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) determinado con firma digital y escribe el documento firmado en el flujo de destino.

El siguiente ejemplo muestra cómo firmar un documento simple.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

El siguiente ejemplo muestra cómo firmar un documento cifrado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Firmar un documento de Word con la línea de firma

Puede firmar el documento de origen utilizando [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) y [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) determinados con firma digital y escribir el documento firmado en el archivo de destino. Usando la clase [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) puede especificar opciones para la firma de documentos. El siguiente ejemplo muestra cómo crear una nueva línea de firma y firmar un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

El siguiente ejemplo muestra cómo modificar la línea de firma existente y firmar el documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Firmar un documento de Word utilizando el identificador del proveedor de firmas

El siguiente ejemplo muestra cómo firmar un documento de Word utilizando el identificador del proveedor de firma. El proveedor de servicios criptográficos (CSP) es un módulo de software independiente que en realidad realiza algoritmos criptográficos para autenticación, codificación y cifrado. MS Office reserva el valor de {00000000-0000-0000-0000-000000000000} para su proveedor de firma predeterminado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Cree un nuevo documento de Word con signo de línea de firma utilizando el identificador de proveedor

El siguiente ejemplo muestra cómo crear una línea de firma y firmar un documento de Word utilizando el identificador del proveedor de firma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Recuperar el valor de la firma digital

Aspose.Words también brinda la capacidad de recuperar el valor de la firma digital de un documento firmado digitalmente como una matriz de bytes utilizando la propiedad [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

El siguiente ejemplo de código muestra cómo obtener el valor de la firma digital como una matriz de bytes de un documento:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
