---
title: FAQ
second_title: Aspose.Words para Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words para Java responde a las preguntas más frecuentes. Aprende esta página para resolver rápidamente tu problema en preguntas generales o temas específicos."
weight: 75
url: /es/java/faq/
timestamp: 2024-01-31-14-23-37
---

Esta página contiene respuestas a las preguntas más frecuentes. Por favor, aprenda la página actual – tal vez esto le permitirá resolver su problema rápidamente.

Si no ha encontrado la respuesta a su pregunta, puede hacer en el foro de soporte. Para obtener información sobre cómo reportar correctamente su pregunta o problema, consulte [Technical Support](/words/es/java/technical-support/) página.

{{% alert color="primary" %}}

Las preguntas frecuentes se agrupan por tema para su comodidad.

{{% /alert %}}

## General

**Q: Qué es Aspose.Words?**

Aspose.Words para Java es una biblioteca de clases que permite a sus aplicaciones realizar una gran variedad de tareas de procesamiento de documentos. Con Aspose.Words para Java, puede generar, modificar, convertir, renderizar e imprimir documentos sin aplicaciones de terceros.

Los detalles pueden encontrarse en nuestra documentación.

------

**Q: ¿Qué significa "Aspose.Words no requiere aplicaciones de terceros"?**

Aspose.Words para Java no necesita instalar ninguna aplicación de terceros o paquetes de software adicionales para trabajar. Sólo descargar e instalar Aspose.Words como se describe en el [Instalación](/words/es/java/installation/) artículo y empezar.

------

**Q: Qué plataformas hace Aspose.Words ¿Apoyo?**

Aspose.Words para Java cubre la mayoría de los entornos populares de desarrollo y plataformas de despliegue. Es... API se puede utilizar para desarrollar aplicaciones para una amplia gama de sistemas operativos, como Windows, Linux, y Mac OS, y varias plataformas.

Para más detalles, vea el [Resumen de productos](/words/es/java/product-overview/) página y la [Plataformas y Interoperabilidad](/words/java/platforms-and-interoperability/) sección.

------

**Q: Qué formatos de documento hace Aspose.Words ¿Apoyo?**

Aspose.Words para Java soporta la mayoría de los formatos de documentos populares como DOC, DOCX, HTML, Markdown, PDF, XML y otros.

Puedes ver la lista completa de formatos soportados en la [Formatos de documentos compatibles](/words/es/java/supported-document-formats/) página.

------

**Q: ¿Cómo puedo intentarlo? Aspose.Words ¿Libertad?**

Puede hacerlo de dos maneras: usando la versión de prueba o una licencia temporal de 30 días. La versión Trial es la misma que la comprada, proporciona funcionalidad de producto completa pero agrega una marca de agua evaluativa en la parte superior del documento cuando se carga y guarda y limita el tamaño máximo del documento a unos pocos cientos párrafos. Una Licencia Temporal le permite probar Aspose.Words sin restricciones de juicio durante 30 días.

Ver el [Licencias y Suscripción](/words/es/java/licensing/) página para más información.

{{% alert color="primary" %}}

También puede probar algunos de los más populares Aspose.Words características a través de [Aspose.Words gratis en línea Aplicaciones](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: ¿Cómo puedo comprar Aspose.Words?**

Para comprar una Aspose.Words licencia, tienes que ir a la [Compra](https://purchase.aspose.com/buy) página, seleccione el "Aspose.Words" producto y el tipo de licencia que le conviene. A continuación, agregue la licencia a su carrito y siga las instrucciones del carro de compra.

Después de comprar, solicitar la licencia como se describe en el [Licencia adquirida](/words/java/licensing/#purchased-license) sección.

Detalles sobre cómo instalar Aspose.Words se puede leer en [Instalación](/words/es/java/installation/) página.

------

**Q: ¿Cómo puedo conseguir apoyo?**

Utilice el foro de soporte técnico gratuito. Para más información sobre cómo reportar correctamente un problema y qué hay que hacer antes de ponerse en contacto con el foro, vea el [Technical Support](/words/es/java/technical-support/) página.

## Presentación de un documento

{{% alert color="primary" %}}

Usted puede encontrar información más detallada sobre la renderización en el [Rendering](/words/es/java/rendering/) Sección de documentación.

{{% /alert %}}

**Q: ¿Por qué el diseño y las fuentes del documento de salida son diferentes del original?**

La fuente puede no estar disponible, o el formato de fuente es soportado por Microsoft Word pero no apoyado por Aspose.Words. Aspose.Words actuará [Manipular y sustituir fuentes de TrueType](/words/es/java/manipulate-and-substitute-truetype-fonts/).

Para comprobar si la fuente falta:

- En Aspose.Words utilizar las advertencias de sustitución de fuentes (para más detalles, vea la sección "Cómo reconocer que la fuente fue reemplazada" de la [Manipular y sustituir fuentes de TrueType](/words/es/java/manipulate-and-substitute-truetype-fonts/) artículo).
- En Microsoft Word abrir el cuadro de diálogo "Sustitución de alimentación" (File → Opciones → Avanzado → Sustitución de fuentes).

------

**Q: ¿Por qué no funciona la font fallback en no-Windows plataformas y caracteres Unicode son reemplazados por el .notdef glyph?**

A menudo podemos ver `.notdef` glyph en lugar de un personaje Unicode. Esto es generalmente una caja o una pregunta glyph.

Esto es porque Microsoft Los ajustes de descomposición de la oficina se seleccionan por defecto, y Microsoft Las fuentes de Office no están disponibles. Los usuarios tienen que instalar Microsoft Fuentes de oficina o alterar la configuración de caída.

------

**Q: ¿Por qué el texto complejo del script, como tailandés o hebreo, puede ser mostrado inexactamente por alguna razón, como la posición equivocada para diacríticos o ligaduras inexactas?**

Algunas fuentes complejas de script requieren que las funciones de tipografía avanzada sean procesadas para mostrarlas correctamente. La tipografía avanzada está deshabilitada Aspose.Words por defecto. Los usuarios tienen que permitir la tipografía avanzada con [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: ¿Necesito archivos de licencia para las fuentes que uso?**

Sí. Por lo tanto, al copiar fuentes, tenga en cuenta que la mayoría de las fuentes son copyrighted. Busque licencias de fuentes de antemano y verifique que pueden ser transferidas libremente a otra máquina.

## Anidado Mail Merge

{{% alert color="primary" %}}

Usted puede encontrar información más detallada sobre mail merge en el [Mail Merge and Reporting](/words/java/mail-merge-and-reporting/) Sección de documentación.

{{% /alert %}}

**Q: ¿Por qué no hay campos fusionados en la salida generada?**

El nombre original del campo de fusión se mantiene igual sin ser reemplazado por los datos requeridos de la fuente de datos, luego:

- Revisar los datos se está cargando correctamente en tablas: [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correctamente con todas las claves y relaciones primarias necesarias.
- Comprueba que los campos de fusión se llaman correctamente. Usar el [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) método para obtener todos los nombres de campos de fusión y asegurar que el nombre de campos de fusión en su plantilla coincida con el de su fuente de datos.

------

**Q: ¿Por qué la salida de la fusión anidada no muestra datos de la tabla infantil para la primera entrada en la tabla de padres, sino que muestra todos los elementos para la última entrada en la tabla de padres, incluso aquellos que no están realmente vinculados a ella?**

Esto se debe a que las regiones de fusión de la plantilla no están correctamente formadas, que pueden hacer todos anidados mail merge regiones para dejar de mostrar nada. El [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) la etiqueta de apertura y el [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) cerrar la etiqueta debe coincidir y estar en la misma fila o celda. Por ejemplo, si empiezas a anidar regiones de fusión en una celda de una mesa, debes terminar la región de fusión en la misma fila que la primera célula.

------

**Q: ¿Por qué cada entrada de la tabla matriz muestra cada elemento en la tabla infantil, incluso los que no están realmente vinculados a ella?**

Esto se debe a que la relación entre los padres y las tablas infantiles no se establece o se establecen incorrectamente. Es necesario:

- Asegurar la integridad de los datos dentro de su **DataSet** y utilizar el **DataRelation** objetar a representar la relación padre-hijo entre los cuadros de datos relacionados.
- Consultar la sección "Cómo establecer relaciones de datos en Nested Mail Merge con Regiones" en el artículo [Anidado Mail Merge con Regiones](/words/java/nested-mail-merge-with-regions/).

------

**Q: ¿Por qué es una excepción: "System. ArgumentException: Esta restricción no puede ser habilitada ya que no todos los valores tienen los valores correspondientes de los padres" mientras se ejecuta anidado mail merge?**

Esto sucede porque no cada registro de padres tiene un registro de niños para que su fuente de datos no coincida con los siguientes criterios: * toda fila en la tabla de padres debe tener una relación uno-a-uno con las filas de la tabla de niños basado en las claves primarias y extranjeras*.

Desactivar las restricciones de teclas extranjeras cuando creas **DataRelation**.

## Apéndice o Inserte un documento

{{% alert color="primary" %}}

Usted puede encontrar información más detallada sobre programación con documentos en el [Programación con documentos](/words/es/java/programming-with-documents/) Sección de documentación.

{{% /alert %}}

**Q: ¿Por qué no aparece contenido adjunto a un documento en la misma página?**

El resultado del apéndice aparece en una página separada debido a una diferencia en [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) configuración para las secciones donde se adjuntan los documentos. Hacer idéntico **PageSetup** configuración para las secciones donde se adjuntan los documentos.

## Convertir un documento

{{% alert color="primary" %}}

Usted puede encontrar información más detallada acerca de la conversión de un documento en el [Convertir un documento](/words/es/java/convert-a-document/) Sección de documentación.

{{% /alert %}}

**Q: Cómo convertir DOCX a PDF?**

También es muy fácil, simplemente cargar un documento al modelo y guardarlo a cualquier formato compatible.

El siguiente ejemplo de código muestra el proceso de convertir un archivo DOCX en PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular con un documento

{{% alert color="primary" %}}

Usted puede encontrar información más detallada sobre programación con documentos en el [Programación con documentos](/words/es/java/programming-with-documents/) Sección de documentación.

{{% /alert %}}

**Q: ¿Cómo dividir una página de documento por página?**

Aspose.Words le permite dividir una página de documento multipágina por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como documento separado:

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

**Q: Cómo abrir un cifrado** **¿documento?**

Puede intentar abrir un documento cifrado sin una contraseña, lo que debe llevar a una excepción.

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

**Q: ¿Cómo imprimir un documento?**

Para una respuesta detallada, aprenda el artículo [Imprimir un documento Programmatically or Using Dialogs](/words/es/java/print-a-document-programmatically-or-using-dialogs/).
