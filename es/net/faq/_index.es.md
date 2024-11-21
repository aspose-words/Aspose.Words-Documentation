---
title: Preguntas más frecuentes
second_title: Aspose.Words para .NET
articleTitle: "Preguntas frecuentes: Aspose.Words para .NET"
linktitle: "Preguntas frecuentes: Aspose.Words para .NET"
articleTitle: Preguntas más frecuentes
linktitle: Preguntas más frecuentes
type: docs
description: "Aspose.Words para .NET responde a las preguntas más frecuentes. Conozca esta página para resolver rápidamente su problema sobre preguntas generales o temas específicos."
weight: 75
url: /es/net/faq/
timestamp: 2024-11-18-12-56-02
---

Esta página contiene respuestas a las preguntas más frecuentes. Conozca la página actual; tal vez esto le permita resolver su problema rápidamente.

Si no ha encontrado la respuesta a su pregunta, puede preguntar en el foro de soporte. Para obtener información sobre cómo informar correctamente su pregunta o problema, consulte la página [Apoyo técnico](/words/es/net/technical-support/).

{{% alert color="primary" %}}

Las preguntas frecuentes están agrupadas por tema para su comodidad.

{{% /alert %}}

## General

**P: ¿Qué es Aspose.Words?**

Aspose.Words para .NET es una biblioteca de clases que permite que sus aplicaciones realicen una amplia variedad de tareas de procesamiento de documentos. Con Aspose.Words para .NET, puede generar, modificar, convertir, renderizar e imprimir documentos sin aplicaciones de terceros.

Los detalles se pueden encontrar en nuestra documentación.

------

**P: ¿Qué significa "Aspose.Words no requiere aplicaciones de terceros"?**

Aspose.Words para .NET no necesita instalar ninguna aplicación de terceros ni paquetes de software adicionales para funcionar. Simplemente descargue e instale Aspose.Words como se describe en el artículo [Instalación](/words/es/net/installation/) y comience.

------

**P: ¿Qué plataformas admite Aspose.Words?**

Aspose.Words para .NET cubre la mayoría de los entornos de desarrollo y plataformas de implementación populares. Su API se puede utilizar para desarrollar aplicaciones para una amplia gama de sistemas operativos como Windows, Linux y Mac OS, y varias plataformas.

Para obtener más información, consulte la página [Descripción del producto](/words/es/net/product-overview/) y la sección ["Plataformas y Interoperabilidad"](/words/net/platforms-and-interoperability/).

------

**P: ¿Qué formatos de documentos admite Aspose.Words?**

Aspose.Words para .NET admite la mayoría de los formatos de documentos populares, como DOC, DOCX, HTML, Markdown, PDF, XML y otros.

Puede ver la lista completa de formatos admitidos en la página [Formatos de documentos admitidos](/words/es/net/supported-document-formats/).

------

**P: ¿Cómo puedo probar Aspose.Words gratis?**

Puedes hacerlo de dos maneras: usando la versión de prueba o una licencia temporal de 30 días. La versión de prueba es la misma que la comprada, proporciona funcionalidad completa del producto pero agrega una marca de agua de evaluación en la parte superior del documento al cargarlo y guardarlo y limita el tamaño máximo del documento a unos pocos cientos de párrafos. Una Licencia Temporal le permite probar Aspose.Words sin restricciones de prueba durante 30 días.

Consulte la página [Licencia y suscripción](/words/es/net/licensing/) para obtener más información.

{{% alert color="primary" %}}

También puede probar algunas de las funciones Aspose.Words más populares a través de [Aplicaciones en línea gratuitas Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**P: ¿Cómo puedo comprar Aspose.Words?**

Para comprar una licencia Aspose.Words, debe ir a la página [comprar](https://purchase.aspose.com/buy), seleccionar el producto "Aspose.Words" y el tipo de licencia que más le convenga. Luego agregue la licencia a su carrito y siga las instrucciones del carrito de compras.

Después de la compra, solicite la licencia como se describe en la sección ["Licencia comprada"](/words/net/licensing/#purchased-license).

Los detalles sobre cómo instalar Aspose.Words se pueden leer en la página [Instalación](/words/es/net/installation/).

------

**P: ¿Cómo puedo obtener soporte?**

Utilice el foro de soporte técnico gratuito. Para obtener detalles sobre cómo informar correctamente un problema y qué se debe hacer antes de comunicarse con el foro, consulte la página [Apoyo técnico](/words/es/net/technical-support/).

## Representar un documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre el renderizado en la sección de documentación [Representación](/words/es/net/rendering/).

{{% /alert %}}

**P: ¿Por qué el diseño y las fuentes del documento resultante son diferentes del original?**

Es posible que la fuente no esté disponible o que el formato de fuente sea compatible con Microsoft Word pero no con Aspose.Words. Aspose.Words realizará [Manipular y sustituir fuentes TrueType](/words/es/net/manipulating-and-substitution-truetype-fonts/).

Para comprobar si falta la fuente:

* En Aspose.Words utilice las advertencias de sustitución de fuentes (para obtener más detalles, consulte la sección "Cómo reconocer que se reemplazó la fuente" del artículo [Manipular y sustituir fuentes TrueType](/words/es/net/manipulating-and-substitution-truetype-fonts/)).
* En Microsoft Word, abra el cuadro de diálogo "Sustitución de fuente" (Archivo → Opciones → Avanzado → Sustitución de fuente).

------

**P: ¿Dónde debo almacenar fuentes para aplicaciones ASP.NET?**

En `APS.NET`, no hay acceso a la carpeta de fuentes del sistema en nivel de confianza medio. Los usuarios deben almacenar fuentes en su propia carpeta.

------

**P: ¿Por qué la fuente alternativa no funciona en plataformas que no son Windows y los caracteres Unicode se reemplazan con el glifo .notdef?**

A menudo podemos ver el glifo `.notdef` en lugar de algún carácter Unicode. Suele ser un cuadro o un glifo de pregunta.

Esto se debe a que la configuración alternativa de Microsoft Office está seleccionada de forma predeterminada y las fuentes Microsoft Office no están disponibles. Los usuarios deben instalar fuentes Microsoft Office o modificar la configuración alternativa.

------

**P: ¿Por qué un texto en escritura compleja, como el tailandés o el hebreo, puede mostrarse de manera inexacta por algún motivo, como la posición incorrecta de los signos diacríticos o las ligaduras inexactas?**

Algunas fuentes de escritura complejas requieren que se procesen las funciones de tipografía avanzada para poder mostrarlas correctamente. La tipografía avanzada está deshabilitada en Aspose.Words de forma predeterminada. Los usuarios deben habilitar la tipografía avanzada con [TextShaperFactory](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**P: ¿Necesito archivos de licencia para las fuentes que uso?**

Si tu puedes. Por lo tanto, al copiar fuentes, tenga en cuenta que la mayoría de las fuentes tienen derechos de autor. Localice las licencias de fuentes de antemano y verifique que se puedan transferir libremente a otra máquina.

## Combinación de correspondencia anidada

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la combinación de correspondencia en la sección de documentación ["Combinación de correspondencia e informes"](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**P: ¿Por qué no hay campos combinados en el resultado generado?**

El nombre original del campo de combinación permanece igual sin ser reemplazado por los datos requeridos de la fuente de datos, luego:

* Verifique que los datos se estén cargando correctamente en las tablas: configure el [TableName](https://reference.aspose.com/words/es/net/aspose.words.mailmerging/imailmergedatasource/tablename/) correctamente con todas las claves primarias y relaciones requeridas.
* Verifique que los campos de combinación tengan el nombre correcto. Utilice el método [GetFieldNames](https://reference.aspose.com/words/es/net/aspose.words.mailmerging/mailmerge/getfieldnames/) para obtener todos los nombres de los campos de combinación y asegúrese de que el nombre de los campos de combinación en su plantilla coincida con el de su fuente de datos.

------

**P: ¿Por qué el resultado de la combinación anidada no muestra datos de la tabla secundaria para la primera entrada de la tabla principal, pero muestra todos los elementos de la última entrada de la tabla principal, incluso aquellos que en realidad no están vinculados a ella?**

Esto se debe a que las regiones de combinación de correspondencia en la plantilla no están formadas correctamente, lo que puede hacer que todas las regiones de combinación de correspondencia anidadas dejen de mostrar nada. La etiqueta de apertura [StartTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/starttable/) y la etiqueta de cierre [EndTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endtable/) deben coincidir y estar en la misma fila o celda. Por ejemplo, si comienza a anidar regiones de combinación en una celda de una tabla, debe finalizar la región de combinación en la misma fila que la primera celda.

------

**P: ¿Por qué cada entrada de la tabla principal muestra todos los elementos de la tabla secundaria, incluso aquellos que en realidad no están vinculados a ella?**

Esto se debe a que la relación entre las tablas principal y secundaria no está configurada o está configurada incorrectamente. Es necesario para:

* Garantice la integridad de los datos dentro de su **DataSet** y utilice el objeto **DataRelation** para representar la relación padre-hijo entre tablas de datos relacionadas.
* Consulte la sección "Cómo configurar relaciones de datos en combinación de correspondencia anidada con regiones" en el artículo ["Combinación de correspondencia anidada con regiones"](/words/net/nested-mail-merge-with-regions/).

------

**P: ¿Por qué aparece una excepción: "System.ArgumentException: esta restricción no se puede habilitar porque no todos los valores tienen valores principales correspondientes" al ejecutar una combinación de correspondencia anidada?**

Esto sucede porque no todos los registros principales tienen un registro secundario, por lo que su fuente de datos no coincide con los siguientes criterios: *cada fila de la tabla principal debe tener una relación uno a uno con las filas de la tabla secundaria según la tabla principal y llaves extranjeras*.

Deshabilite las restricciones de clave externa cuando cree un **DataRelation**.

## Agregar o insertar un documento

{{% alert color="primary" %}}

Puedes encontrar información más detallada sobre la programación con documentos en la sección de documentación [Programación con documentos](/words/es/net/programming-with-documents/).

{{% /alert %}}

**P: ¿Por qué el contenido agregado a un documento no aparece en la misma página?**

El resultado de agregar aparece en una página separada debido a una diferencia en la configuración [PageSetup](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/) para las secciones donde los documentos se agregan juntos. Realice configuraciones **PageSetup** idénticas para las secciones donde se adjuntan los documentos.

## Convertir un documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la conversión de un documento en la sección de documentación [Convertir un documento](/words/es/net/convert-a-document/).

{{% /alert %}}

**P: ¿Cómo convertir PDF a Word?**

Es muy fácil, simplemente cargue un documento en el modelo y guárdelo en cualquier formato compatible.

El siguiente ejemplo de código muestra el proceso de conversión de un archivo PDF a DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**P: ¿Cómo convertir DOCX a PDF?**

También es muy fácil: simplemente cargue un documento en el modelo y guárdelo en cualquier formato compatible.

El siguiente ejemplo de código muestra el proceso de conversión de un archivo DOCX a PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular con un documento

{{% alert color="primary" %}}

Puedes encontrar información más detallada sobre la programación con documentos en la sección de documentación [Programación con documentos](/words/es/net/programming-with-documents/).

{{% /alert %}}

**P: ¿Cómo dividir un documento página por página?**

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento independiente:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**P: ¿Cómo abrir un archivo cifrado?** **¿documento?**

Puede intentar abrir un documento cifrado sin contraseña, lo que debería provocar una excepción.

El siguiente ejemplo de código muestra cómo abrir un documento cifrado con una contraseña:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**P: ¿Cómo imprimir un documento?**

Sólo dos líneas de código.

El siguiente ejemplo de código muestra cómo imprimir un documento de dos maneras:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**P: ¿Cómo editar un documento PDF?**

Simplemente cargue el PDF en el modelo de documento Aspose.Words y realice cambios.

El siguiente ejemplo de código muestra cómo editar un documento:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**P: ¿Cómo utilizar Aspose.Words en Docker?**

Para obtener una respuesta detallada, lea el artículo [Cómo ejecutar Aspose.Words en Docker](/words/es/net/how-to-run-aspose-words-in-docker/).
