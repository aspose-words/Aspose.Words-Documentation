---
title: Trabajar con Estilos y Temas
second_title: Aspose.Words por Java
articleTitle: Trabajar con Estilos y Temas
linktitle: Trabajar con Estilos y Temas
description: "Funciones mejoradas de formato Microsoft Word, trabajando con estilos y temas usando Java."
type: docs
weight: 110
url: /es/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

La clase [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) se usa para administrar configuraciones integradas y definidas por el usuario a los estilos.

## Cómo Extraer Contenido Basado en Estilos

A un nivel simple, recuperar el contenido basado en estilos de un documento de Word puede ser útil para identificar, enumerar y contar párrafos y series de texto formateados con un estilo específico. Por ejemplo, es posible que deba identificar tipos particulares de contenido en el documento, como ejemplos, títulos, referencias, palabras clave, nombres de figuras y estudios de casos.

Para llevar esto unos pasos más allá, esto también se puede usar para aprovechar la estructura del documento, definida por los estilos que usa, para reutilizar el documento para otra salida, como HTML. De hecho, así es como se construye la documentación de Aspose, poniendo a prueba Aspose.Words. Una herramienta creada con Aspose.Words toma los documentos de Word de origen y los divide en temas en ciertos niveles de encabezado. Se produce un archivo XML usando Aspose.Words que se usa para construir el árbol de navegación que puede ver a la izquierda. Y luego Aspose.Words convierte cada tema en HTML. La solución para recuperar texto formateado con estilos específicos en un documento de Word suele ser económica y sencilla utilizando Aspose.Words.

Para ilustrar la facilidad con la que Aspose.Words maneja la recuperación de contenido en función de los estilos, veamos un ejemplo. En este ejemplo, vamos a recuperar texto formateado con un estilo de párrafo específico y un estilo de carácter de un documento de Word de muestra.

A un alto nivel, esto implicará:

1. Abrir un documento de Word usando la clase [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Obteniendo colecciones de todos los párrafos y todas las ejecuciones en el documento.
1. Seleccionando solo los párrafos y ejecuciones requeridos.

Específicamente, recuperaremos texto formateado con el estilo de párrafo ' Heading 1 'y el estilo de carácter' Énfasis intenso ' de este documento de Word de muestra.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

En este documento de muestra, el texto formateado con el estilo de párrafo 'Heading 1' es 'Insertar pestaña', 'Estilos rápidos' y 'Tema', y el texto formateado con el estilo de carácter 'Énfasis intenso' son las varias instancias de texto azul, en cursiva y negrita, como ' galerías 'y' aspecto general'.

La implementación de una consulta basada en estilos es bastante simple en el modelo de objetos de documento Aspose.Words, ya que simplemente usa herramientas que ya están implementadas. Se implementan dos métodos de clase para esta solución:

1. **ParagraphsByStyleName**: Este método recupera una matriz de aquellos párrafos del documento que tienen un nombre de estilo específico.
1. **RunsByStyleName**: Este método recupera una matriz de aquellas ejecuciones en el documento que tienen un nombre de estilo específico.

Ambos métodos son muy similares, las únicas diferencias son los tipos de nodos y la representación de la información de estilo dentro de los nodos párrafo y ejecución. Aquí hay una implementación de ParagraphsByStyleName que se muestra en el ejemplo de código que se proporciona a continuación para encontrar todos los párrafos formateados con el estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Esta implementación también usa el método [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) de la clase `Document`, que devuelve una colección de todos los nodos secundarios inmediatos.

También vale la pena señalar que la colección párrafos no crea una sobrecarga inmediata porque los párrafos se cargan en esta colección solo cuando accede a los elementos que contienen.Luego, todo lo que necesita hacer es revisar la colección, usar el operador estándar foreach y agregar párrafos que tengan el estilo especificado a la matriz paragraphsWithStyle. El nombre del estilo `Paragraph` se puede encontrar en la propiedad [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) del objeto [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

La implementación de RunsByStyleName es casi la misma, aunque obviamente estamos usando `NodeType.Run` para recuperar nodos de ejecución. La propiedad [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) de un objeto [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) se usa para acceder a la información de estilo en los **Run** nodos.

El siguiente ejemplo de código encuentra todas las ejecuciones formateadas con el estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Cuando se implementan ambas consultas, todo lo que necesita hacer es pasar un objeto de documento y especificar los nombres de estilo del contenido que desea recuperar:

{{% /alert %}}

El siguiente ejemplo de código ejecuta consultas y muestra los resultados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Cuando todo esté listo, ejecutar la muestra mostrará el siguiente resultado:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Como puede ver, este es un ejemplo muy simple, que muestra el número y el texto de los párrafos recopilados y se ejecuta en el documento de Word de muestra.

## Inserte un Separador de Estilos para Colocar Diferentes Estilos de Párrafo

El separador de estilo se puede agregar al final de un párrafo usando el método abreviado de teclado Ctrl + Alt + Enter en MS Word. Esta característica permite utilizar dos estilos de párrafo diferentes en un párrafo impreso lógico. Si desea que aparezca texto del principio de un encabezado en particular en una Tabla de contenido, pero no desea que aparezca todo el encabezado en la Tabla de Contenido, puede usar esta función.

El siguiente ejemplo de código muestra cómo insertar un separador de estilos para colocar diferentes estilos de párrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copiar Todos los Estilos de la Plantilla

Hay casos en los que desea copiar todos los estilos de un documento a otro. Puede utilizar el método `Document.CopyStylesFromTemplate` para copiar estilos de la plantilla especificada en un documento. Cuando los estilos se copian de una plantilla a un documento, los estilos con nombres similares en el documento se redefinen para que coincidan con las descripciones de estilo en la plantilla. Los estilos únicos de la plantilla se copian en el documento. Los estilos únicos en el documento permanecen intactos.

El siguiente ejemplo de código muestra cómo copiar estilos de un documento a otro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cómo Manipular las Propiedades del Tema

Hemos agregado API básico en Aspose.Words para acceder a las propiedades del tema del documento. Por ahora, esto API incluye los siguientes objetos públicos:

- Tema
- ThemeFonts
- ThemeColors

Así es como puede obtener las propiedades del tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Y así es como puede establecer las propiedades del tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
