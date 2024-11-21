---
title: Trabajando con Estilos y Temas
second_title: Aspose.Words para Java
articleTitle: Trabajando con Estilos y Temas
linktitle: Trabajando con Estilos y Temas
description: "Mejora Microsoft Word funciones de formato, trabajando con estilos y temas utilizando Java."
type: docs
weight: 110
url: /es/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

El [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) clase se utiliza para administrar incorporado y aplicar ajustes definidos por el usuario a los estilos.

## Cómo extraer contenido basado en estilos

A un nivel simple, recuperar el contenido basado en estilos de un documento de Word puede ser útil para identificar, listar y contar párrafos y series de texto formateados con un estilo específico. Por ejemplo, es posible que necesite identificar tipos particulares de contenido en el documento, como ejemplos, títulos, referencias, palabras clave, nombres de figuras y estudios de casos.

Para ello, esto también se puede utilizar para aprovechar la estructura del documento, definida por los estilos que utiliza, para reutilizar el documento para otra salida, como el HTML. De hecho, así se construye la documentación de Aspose, poniendo Aspose.Words a la prueba. Una herramienta construida usando Aspose.Words toma los documentos de Word fuente y los divide en temas a ciertos niveles de encabezado. Se produce un archivo XML utilizando Aspose.Words que se utiliza para construir el árbol de navegación que se puede ver en la izquierda. Y entonces Aspose.Words convierte cada tema en HTML. La solución para recuperar texto formateado con estilos específicos en un documento de Word es típicamente económica y directa utilizando Aspose.Words.

Para ilustrar lo fácil Aspose.Words mangos recuperando contenido basado en estilos, veamos un ejemplo. En este ejemplo, vamos a recuperar texto formateado con un estilo de párrafo específico y un estilo de carácter de un documento de Word muestra.

A un nivel alto, esto implicará:

1. Abrir un documento de Word usando el [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase.
1. Obtener colecciones de todos los párrafos y todos corren en el documento.
1. Seleccionando sólo los párrafos y carreras requeridos.

Específicamente, recuperaremos el texto formateado con el estilo del párrafo "Heading 1" y el estilo de carácter "Intense Emphasis" de este documento de Word muestra

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

En este documento de muestra, el texto formateado con el estilo del párrafo ‘Heading 1’ es ‘Insert Tab’, ‘Quick Styles’ y ‘Theme’, y el texto formateado con el estilo de carácter ‘Intense emphasis’ son las varias instancias de texto azul, italicizado y audaz como ‘galerías’ y ‘sobretodo aspecto’.

La implementación de una consulta basada en estilo es bastante simple en la Aspose.Words modelo de objeto de documento, ya que simplemente utiliza herramientas que ya están en su lugar. Para esta solución se implementan dos métodos de clase:

1. **ParagraphsByStyleName** – Este método recupera una variedad de esos párrafos en el documento que tienen un nombre de estilo específico.
1. **RunsByStyleName** – Este método recupera una variedad de esas carreras en el documento que tienen un nombre de estilo específico.

Ambos métodos son muy similares, las únicas diferencias son los tipos de nodos y la representación de la información de estilo dentro del párrafo y nodos de ejecución. Aquí está una implementación de los párrafosByStyleName que se muestra en el ejemplo de código dado a continuación para encontrar todos los párrafos formateados con el estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Esta aplicación también utiliza [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método del `Document` clase, que devuelve una colección de todos los nodos infantiles inmediatos.

También vale la pena señalar que la colección de párrafos no crea una sobrecarga inmediata porque los párrafos se cargan en esta colección sólo cuando se accede a los artículos en ellos. Entonces, todo lo que tienes que hacer es pasar por la colección, usando el operador estándar y añadir párrafos que tienen el estilo especificado a los párrafos ConStyle array. El `Paragraph` nombre de estilo se puede encontrar en [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) propiedad de la [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) objeto.

La implementación de RunsByStyleName es casi la misma, aunque obviamente estamos usando `NodeType.Run` para recuperar nodos de carreras. El [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) propiedad de un [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) objeto se utiliza para acceder a información de estilo en el **Run** nodos

El siguiente ejemplo de código encuentra todas las carreras formateadas con el estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Cuando ambas consultas se implementan, todo lo que necesita hacer es pasar un objeto de documento y especificar los nombres de estilo del contenido que desea recuperar:

{{% /alert %}}

El siguiente ejemplo de código ejecuta consultas y resultados de visualización.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Cuando todo se hace, ejecutar la muestra mostrará la siguiente salida:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Como puede ver, este es un ejemplo muy simple, mostrando el número y el texto de los párrafos recogidos y se ejecuta en el documento de la muestra Word.

## Insertar separador de estilo para poner diferentes estilos de párrafo

El separador de estilo se puede añadir al final de un párrafo utilizando el acceso directo Ctrl + Alt + Enter Keyboard en MS Word. Esta característica permite dos estilos de párrafo diferentes utilizados en un párrafo impreso lógico. Si desea que algún texto desde el comienzo de una partida en particular aparezca en una Tabla de Contenidos pero no quiere que todo el encabezado en la Tabla de Contenidos, puede utilizar esta función

El siguiente ejemplo de código muestra cómo insertar un separador de estilo para poner diferentes estilos de párrafo

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copiar todos los estilos de la plantilla

Hay casos cuando desea copiar todos los estilos de un documento a otro. Puedes usar el `Document.CopyStylesFromTemplate` método para copiar estilos de la plantilla especificada a un documento. Cuando los estilos se copian de una plantilla a un documento, los estilos que se denominan en el documento se redefinen a las descripciones de estilo en la plantilla. Los estilos únicos de la plantilla se copian al documento. Los estilos únicos en el documento permanecen intactos

El siguiente ejemplo de código muestra cómo copiar estilos de un documento a otro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cómo Manipular Propiedades temáticas

Hemos añadido lo básico API dentro Aspose.Words para acceder a las propiedades temáticas del documento. Por ahora, esto API incluye los siguientes objetos públicos:

- Tema
- ThemeFonts
- ThemeColors

Aquí es cómo usted puede obtener propiedades temáticas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Y así es como puedes establecer propiedades temáticas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
