---
title: FAQ
second_title: Aspose.Words por Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words para Java responde a las preguntas más frecuentes. Aprenda esta página para resolver rápidamente su problema sobre preguntas generales o temas específicos."
weight: 75
url: /es/java/faq/
timestamp: 2024-01-31-14-23-37
---

Esta página contiene respuestas a las preguntas más frecuentes. Por favor, aprenda la página actual; quizás esto le permita resolver su problema rápidamente.

Si no ha encontrado la respuesta a su pregunta, puede preguntar en el foro de soporte. Para obtener información sobre cómo informar correctamente su pregunta o problema, consulte el [Soporte Técnico](/words/java/technical-support/) página.

{{% alert color="primary" %}}

Las preguntas frecuentes están agrupadas por tema para su comodidad.

{{% /alert %}}

## Generalidades

**P: ¿Qué es Aspose.Words?**

Aspose.Words para Java es una biblioteca de clases que permite a sus aplicaciones realizar una amplia variedad de tareas de procesamiento de documentos. Con Aspose.Words por Java, puede generar, modificar, convertir, procesar e imprimir documentos sin aplicaciones de terceros.

Los detalles se pueden encontrar en nuestra documentación.

------

**P: ¿Qué significa "Aspose.Words no requiere aplicaciones de terceros"?**

Aspose.Words para Java no necesita instalar aplicaciones de terceros ni paquetes de software adicionales para funcionar. Simplemente descargue e instale Aspose.Words como se describe en el [Instalación](/words/java/installation/) artículo y empezar.

------

**P: ¿Qué plataformas admite Aspose.Words?**

Aspose.Words para Java cubre la mayoría de los entornos de desarrollo y plataformas de implementación populares. Its API se puede utilizar para desarrollar aplicaciones para una amplia gama de sistemas operativos, como Windows, Linux y Mac OS, y varias plataformas.

Para más detalles, consulte el [Descripción General del Producto](/words/java/product-overview/) page y el [Plataformas y Interoperabilidad](/words/java/platforms-and-interoperability/) sección.

------

**P: ¿Qué formatos de documento admite Aspose.Words?**

Aspose.Words para Java admite la mayoría de los formatos de documentos populares, como DOC, DOCX, HTML, Markdown, PDF, XML, y otros.

Puede ver la lista completa de formatos compatibles en el [Formatos de Documento Admitidos](/words/java/supported-document-formats/) página.

------

**P: ¿Cómo puedo probar Aspose.Words gratis?**

Puede hacerlo de dos maneras: utilizando la versión de prueba o una Licencia Temporal de 30 días. La versión de prueba es la misma que la comprada, proporciona la funcionalidad completa del producto pero agrega una marca de agua evaluativa en la parte superior del documento al cargar y guardar y limita el tamaño máximo del documento a unos pocos cientos de párrafos. Una Licencia temporal le permite probar Aspose.Words sin restricciones de prueba durante 30 días.

Ver el [Licencias y Suscripción](/words/java/licensing/) página para más información.

{{% alert color="primary" %}}

También puede probar algunas de las funciones Aspose.Words más populares a través de [Aspose.Words aplicaciones gratuitas en línea](https://products.aspose.app/words).

{{% /alert %}}

------

**P: ¿Cómo puedo comprar Aspose.Words?**

Para comprar una licencia Aspose.Words, debe ir al [Compra](https://purchase.aspose.com/buy) página, seleccione el producto" Aspose.Words " y el tipo de licencia que más le convenga. Luego agregue la licencia a su carrito y siga las instrucciones del carrito de compras.

Después de la compra, solicite la licencia como se describe en el [Licencia Adquirida](/words/java/licensing/#purchased-license) sección.

Los detalles sobre cómo instalar Aspose.Words se pueden leer en el [Instalación](/words/java/installation/) página.

------

**P: ¿Cómo puedo obtener soporte?**

Utilice el foro de soporte técnico gratuito. Para obtener detalles sobre cómo informar adecuadamente un problema y qué debe hacerse antes de comunicarse con el foro, consulte el [Soporte Técnico](/words/java/technical-support/) página.

## Renderizar un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre el renderizado en el [Renderizado](/words/java/rendering/) sección de documentación.

{{% /alert %}}

**P: ¿Por qué el diseño y las fuentes del documento de salida son diferentes del original?**

Es posible que la fuente no esté disponible o que el formato de fuente sea compatible con Microsoft Word pero no con Aspose.Words. Aspose.Words funcionará [sustitución de fuentes](/words/java/manipulate-and-substitute-truetype-fonts/).

Para comprobar si falta la fuente:

- En Aspose.Words, use las advertencias de sustitución de fuentes (para obtener más detalles, consulte la sección "Cómo reconocer que la Fuente fue Reemplazada" del [Manipular y sustituir las fuentes TrueType](/words/java/manipulate-and-substitute-truetype-fonts/) artículo).
- En Microsoft Word abra el cuadro de diálogo "Sustitución de fuentes" (Archivo → Opciones → Avanzado → Sustitución de fuentes).

------

**P: ¿Por qué el respaldo de fuentes no funciona en plataformas que no sonWindows y los caracteres Unicode se reemplazan con el.¿glifo notdef?**

A menudo podemos ver el glifo `.notdef` en lugar de algún carácter Unicode. Esto suele ser un cuadro o un glifo de pregunta.

Esto se debe a que la configuración alternativa de Microsoft Office está seleccionada de forma predeterminada y las fuentes de Microsoft Office no están disponibles. Los usuarios tienen que instalar Microsoft Fuentes de Office o modificar la configuración alternativa.

------

**P: ¿Por qué podría mostrarse un texto de escritura complejo, como el tailandés o el hebreo, de manera inexacta por alguna razón, como la posición incorrecta de los signos diacríticos o las ligaduras inexactas?**

Algunas fuentes de script complejas requieren que se procesen las funciones de tipografía avanzadas para mostrarlas correctamente. La tipografía avanzada está deshabilitada en Aspose.Words de forma predeterminada. Los usuarios deben habilitar la tipografía avanzada con [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**P: ¿Necesito archivos de licencia para las fuentes que uso?**

Sí, lo haces. Por lo tanto, al copiar fuentes, tenga en cuenta que la mayoría de las fuentes tienen derechos de autor. Localice las licencias de fuentes de antemano y verifique que se puedan transferir libremente a otra máquina.

## Anidado Mail Merge

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre Mail Merge en el [Mail Merge y Presentación de Informes](/words/java/mail-merge-and-reporting/) sección de documentación.

{{% /alert %}}

**P: ¿Por qué no hay campos combinados en la salida generada?**

El nombre original del campo de combinación permanece igual sin ser reemplazado por los datos requeridos del origen de datos, luego:

- Verifique que los datos se carguen correctamente en las tablas: establezca [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correctamente con todas las claves y relaciones primarias requeridas.
- Compruebe que los campos de combinación tengan el nombre correcto. Utilice el método [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) para obtener todos los nombres de los campos de combinación y asegúrese de que el nombre de los campos de combinación de la plantilla coincida con el de la fuente de datos.

------

**P: ¿Por qué la salida de la combinación anidada no muestra datos de la tabla secundaria para la primera entrada en la tabla principal, sino que muestra todos los elementos de la última entrada en la tabla principal, incluso los que realmente no están vinculados a ella?**

Esto se debe a que las regiones de fusión de la plantilla no están formadas correctamente, lo que puede hacer que todas las regiones Mail Merge anidadas dejen de mostrar nada. La etiqueta de apertura [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) y la etiqueta de cierre [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) deben coincidir y estar en la misma fila o celda. Por ejemplo, si comienza a anidar regiones de combinación en una celda de una tabla, debe finalizar la región de combinación en la misma fila que la primera celda.

------

**P: ¿Por qué cada entrada de la tabla principal muestra todos los elementos de la tabla secundaria, incluso los que en realidad no están vinculados a ella?**

Esto se debe a que la relación entre las tablas principal y secundaria no está configurada o está configurada incorrectamente. Es necesario:

- Garantice la integridad de los datos dentro de su **DataSet** y use el objeto **DataRelation** para representar la relación padre-hijo entre tablas de datos relacionadas.
- Consulte la sección "Cómo Configurar Relaciones de datos en Mail Merge Anidadas con regiones" en el artículo [Anidado Mail Merge con regiones](/words/java/nested-mail-merge-with-regions/).

------

**P: ¿Por qué es una excepción: "Sistema.ArgumentException: ¿Esta restricción no se puede habilitar ya que no todos los valores tienen valores primarios correspondientes" mientras se ejecuta mail merge anidado?**

Esto sucede porque no todos los registros primarios tienen un registro secundario, por lo que su fuente de datos no coincide con los siguientes criterios: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Deshabilite las restricciones de clave externa cuando cree un **DataRelation**.

## Anexar o Insertar un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la programación con documentos en el [Programación con Documentos](/words/java/programming-with-documents/) sección de documentación.

{{% /alert %}}

**P: ¿Por qué el contenido agregado a un documento no aparece en la misma página?**

El resultado de anexar aparece en una página separada debido a una diferencia en la configuración de [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) para las secciones donde los documentos se anexan juntos. Establezca una configuración **PageSetup** idéntica para las secciones donde se adjuntan los documentos.

## Convertir un Documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la conversión de un documento en el [Convertir un Documento](/words/java/convert-a-document/) sección de documentación.

{{% /alert %}}

**P: ¿Cómo convertir DOCX a PDF?**

También es muy fácil, simplemente cargue un documento en el modelo y guárdelo en cualquier formato compatible.

El siguiente ejemplo de código muestra el proceso de conversión de un archivo DOCX a PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular con un documento

{{% alert color="primary" %}}

Puede encontrar información más detallada sobre la programación con documentos en el [Programación con Documentos](/words/java/programming-with-documents/) sección de documentación.

{{% /alert %}}

**P: ¿Cómo dividir un documento página por página?**

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento separado:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**P: Cómo abrir un cifrado**

Puede intentar abrir un documento cifrado sin contraseña, lo que debería generar una excepción.

El siguiente ejemplo de código muestra cómo abrir un documento cifrado con una contraseña:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**P: ¿Cómo imprimir un documento?**

Para obtener una respuesta detallada, lea el artículo [Imprimir un Documento mediante Programación o mediante Diálogos](/words/java/print-a-document-programmatically-or-using-dialogs/).
