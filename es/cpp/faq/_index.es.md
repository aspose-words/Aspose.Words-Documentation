---
title: Preguntas FRECUENTES
second_title: Aspose.Words para C++
articleTitle: Preguntas FRECUENTES
linktitle: Preguntas FRECUENTES
type: docs
description: "Aspose.Words para C++ responde a las preguntas más frecuentes. Aprenda esta página para resolver rápidamente su problema sobre preguntas generales o temas específicos."
weight: 75
url: /es/cpp/faq/
---

Esta página contiene respuestas a las preguntas más frecuentes. Por favor, aprenda la página actual; quizás esto le permita resolver su problema rápidamente.

Si no ha encontrado la respuesta a su pregunta, puede preguntar en el foro de soporte. Para obtener información sobre cómo informar correctamente su pregunta o problema, consulte el [Soporte Técnico](/words/cpp/technical-support/) página.

{{% alert color="primary" %}}

Las preguntas frecuentes están agrupadas por tema para su comodidad.

{{% /alert %}}

## Generalidades

**P: ¿Qué es Aspose.Words?**

Aspose.Words para C++ es una biblioteca de clases que permite a sus aplicaciones realizar una amplia variedad de tareas de procesamiento de documentos. Con Aspose.Words para C++, puede generar, modificar, convertir, renderizar e imprimir documentos sin aplicaciones de terceros.

Los detalles se pueden encontrar en nuestra documentación.

------

**P: ¿Qué significa "Aspose.Words no requiere aplicaciones de terceros"?**

Aspose.Words para C++ no necesita instalar aplicaciones de terceros ni paquetes de software adicionales para funcionar. Simplemente descargue e instale Aspose.Words como se describe en el ["Instalación"](/words/cpp/installation/) artículo y empezar.

------

**P: ¿Qué plataformas admite Aspose.Words?**

Aspose.Words para C++ cubre la mayoría de los entornos de desarrollo y plataformas de implementación populares. Su API se puede utilizar para desarrollar aplicaciones para una amplia gama de sistemas operativos, como Windows, Linux y Mac OS, y varias plataformas.

Para más detalles, consulte el [Descripción General del Producto](/words/cpp/product-overview/) página.

------

**P: ¿Qué formatos de documento admite Aspose.Words?**

Aspose.Words para C++ admite la mayoría de los formatos de documentos populares, como DOC, DOCX, HTML, Markdown, PDF, XML y otros.

Puede ver la lista completa de formatos compatibles en el [Formatos de Documento Admitidos](/words/cpp/supported-document-formats/) página.

------

**P: ¿Cómo puedo probar Aspose.Words gratis?**

Puede hacerlo de dos maneras: utilizando la versión de prueba o una Licencia Temporal de 30 días. La versión de prueba es la misma que la comprada, proporciona la funcionalidad completa del producto pero agrega una marca de agua evaluativa en la parte superior del documento al cargar y guardar y limita el tamaño máximo del documento a unos pocos cientos de párrafos. Una Licencia temporal le permite probar Aspose.Words sin restricciones de prueba durante 30 días.

Ver el [Licencias y Suscripción](/words/cpp/licensing/) página para más información.

{{% alert color="primary" %}}

También puede probar algunas de las funciones Aspose.Words más populares a través de [Aspose.Words aplicaciones gratuitas en línea](https://products.aspose.app/words).

{{% /alert %}}

------

**P: ¿Cómo puedo comprar Aspose.Words?**

Para comprar una licencia Aspose.Words, debe ir al [Compra](https://purchase.aspose.com/buy) página, seleccione el producto" Aspose.Words " y el tipo de licencia que más le convenga. Luego agregue la licencia a su carrito y siga las instrucciones del carrito de compras.

Después de la compra, solicite la licencia como se describe en el [Licencia Adquirida](/words/cpp/licensing/#purchased-license) sección.

Los detalles sobre cómo instalar Aspose.Words se pueden leer en el [Instalación](/words/cpp/installation/) página.

------

**P: ¿Cómo puedo obtener soporte?**

Utilice el foro de soporte técnico gratuito. Para obtener detalles sobre cómo informar adecuadamente un problema y qué debe hacerse antes de comunicarse con el foro, consulte el [Soporte Técnico](/words/cpp/technical-support/) página.

## Renderizar un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre el renderizado en el [Renderizado](/words/cpp/rendering/) sección de documentación.

{{% /alert %}}

**P: ¿Por qué el diseño y las fuentes del documento de salida son diferentes del original?**

Es posible que la fuente no esté disponible o que el formato de fuente sea compatible con Microsoft Word pero no con Aspose.Words. Aspose.Words funcionará [sustitución de fuentes](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Para comprobar si falta la fuente:

- En Aspose.Words, use las advertencias de sustitución de fuentes (para obtener más detalles, consulte la sección "Cómo reconocer que la Fuente fue Reemplazada" del [Manipular y sustituir las fuentes TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) artículo).
- En Microsoft Word, abra el cuadro de diálogo "Sustitución de fuentes" (Archivo → Opciones → Avanzado → Sustitución de fuentes).

------

**P: ¿Por qué el respaldo de fuentes no funciona en plataformas que no sonWindows y los caracteres Unicode se reemplazan con el.¿glifo notdef?**

A menudo podemos ver el glifo `.notdef` en lugar de algún carácter Unicode. Esto suele ser un cuadro o un glifo de pregunta.

Esto se debe a que la configuración alternativa de Microsoft Office está seleccionada de forma predeterminada y las fuentes de Microsoft Office no están disponibles. Los usuarios deben instalar fuentes de Microsoft Office o modificar la configuración alternativa.

------

**P: ¿Por qué podría mostrarse un texto de escritura complejo, como el tailandés o el hebreo, de manera inexacta por alguna razón, como la posición incorrecta de los signos diacríticos o las ligaduras inexactas?**

Algunas fuentes de script complejas requieren que se procesen las funciones de tipografía avanzadas para mostrarlas correctamente. La tipografía avanzada está deshabilitada en Aspose.Words de forma predeterminada. Los usuarios deben habilitar la tipografía avanzada con [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**P: ¿Necesito archivos de licencia para las fuentes que uso?**

Sí, lo haces. Por lo tanto, al copiar fuentes, tenga en cuenta que la mayoría de las fuentes tienen derechos de autor. Localice las licencias de fuentes de antemano y verifique que se puedan transferir libremente a otra máquina.

## Anexar o Insertar un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la programación con documentos en el [Programación con Documentos](/words/cpp/programming-with-documents/) sección de documentación.

{{% /alert %}}

**P: ¿Por qué el contenido agregado a un documento no aparece en la misma página?**

El resultado de anexar aparece en una página separada debido a una diferencia en la configuración [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) para las secciones donde los documentos se anexan juntos. Establezca una configuración **PageSetup** idéntica para las secciones donde se adjuntan los documentos.

## Convertir un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la conversión de un documento en el [Convertir un Documento](/words/cpp/convert-a-document/) sección de documentación.

{{% /alert %}}

**P: ¿Cómo convertir DOCX a PDF?**

También es muy fácil, simplemente cargue un documento en el modelo y guárdelo en cualquier formato compatible.

El siguiente ejemplo de código muestra el proceso de conversión de un archivo DOCX a PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipular con un documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la programación con documentos en el [Programación con Documentos](/words/cpp/programming-with-documents/) sección de documentación.

{{% /alert %}}

**P: ¿Cómo dividir un documento página por página?**

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento separado:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**P: Cómo abrir un cifrado**

Puede intentar abrir un documento cifrado sin contraseña, lo que debería generar una excepción.

El siguiente ejemplo de código muestra cómo abrir un documento cifrado con una contraseña:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
