---
title: Trabajar con estilos en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Estilos
linktitle: Trabajar con Estilos
description: "Funciones mejoradas de formato de Microsoft Word, trabajando con estilos y temas usando C++."
type: docs
weight: 110
url: /es/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

La clase [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) se usa para administrar configuraciones integradas y definidas por el usuario a los estilos.

## Cómo Extraer Contenido Basado en Estilos

A un nivel simple, recuperar el contenido basado en estilos de un documento de Word puede ser útil para identificar, enumerar y contar párrafos y series de texto formateados con un estilo específico. Por ejemplo, es posible que deba identificar tipos particulares de contenido en el documento, como ejemplos, títulos, referencias, palabras clave, nombres de figuras y estudios de casos.

Para llevar esto unos pasos más allá, esto también se puede usar para aprovechar la estructura del documento, definida por los estilos que usa, para reutilizar el documento para otra salida, como HTML. De hecho, así es como se construye la documentación de Aspose, poniendo a prueba Aspose.Words. Una herramienta creada con Aspose.Words toma los documentos de Word de origen y los divide en temas en ciertos niveles de encabezado. Se produce un archivo XML usando Aspose.Words que se usa para construir el árbol de navegación que puede ver a la izquierda. Y luego Aspose.Words convierte cada tema en HTML.

La solución para recuperar texto formateado con estilos específicos en un documento de Word suele ser económica y sencilla utilizando Aspose.Words.

### La Solución

Para ilustrar la facilidad con la que Aspose.Words maneja la recuperación de contenido en función de los estilos, veamos un ejemplo. En este ejemplo, vamos a recuperar texto formateado con un estilo de párrafo específico y un estilo de carácter de un documento de Word de muestra. A un alto nivel, esto implicará:
- Abrir un documento de Word usando la clase `Document`.
- Obteniendo colecciones de todos los párrafos y todas las ejecuciones en el documento.
- Seleccionando solo los párrafos y ejecuciones requeridos. Específicamente, recuperaremos texto formateado con el estilo de párrafo' Encabezado 1 'y el estilo de carácter' Énfasis intenso ' de este documento de Word de muestra.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


En este documento de muestra, el texto formateado con el estilo de párrafo 'Encabezado 1' es 'Insertar pestaña', 'Estilos rápidos' y 'Tema', y el texto formateado con el estilo de carácter 'Énfasis intenso' son las varias instancias de texto azul, en cursiva y negrita, como ' galerías 'y' aspecto general'.

### El Código

La implementación de una consulta basada en estilos es bastante simple en el modelo de objetos de documento Aspose.Words, ya que simplemente usa herramientas que ya están implementadas. Se implementan dos métodos de clase para esta solución:# **ParagraphsByStyleName**: Este método recupera una matriz de aquellos párrafos del documento que tienen un nombre de estilo específico.# **RunsByStyleName** - Este método recupera una matriz de aquellas ejecuciones en el documento que tienen un nombre de estilo específico. Ambos métodos son muy similares, las únicas diferencias son los tipos de nodos y la representación de la información de estilo dentro de los nodos párrafo y ejecución. Aquí hay una implementación de ParagraphsByStyleName. Debajo del ejemplo, encuentre todos los párrafos formateados con el estilo especificado.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Esta implementación también usa el método `Document.GetChildNodes` de la clase `Document`, que devuelve una colección de todos los nodos con el tipo especificado, que en este caso en todos los párrafos.

Tenga en cuenta que el segundo parámetro del método **Document.GetChildNodes** se establece en verdadero. Esto obliga al método **Document.GetChildNodes** a seleccionar de todos los nodos secundarios de forma recursiva, en lugar de seleccionar solo los secundarios inmediatos.

{{% /alert %}}

También vale la pena señalar que la colección párrafos no crea una sobrecarga inmediata porque los párrafos se cargan en esta colección solo cuando accede a los elementos que contienen. Luego, todo lo que necesita hacer es revisar la colección, usar el estándar para cada operador y agregar párrafos que tengan el estilo especificado a la matriz paragraphsWithStyle. El nombre del estilo `Paragraph` se puede encontrar en el Estilo. Nombre propiedad del objeto `Paragraph.ParagraphFormat`. La implementación de RunsByStyleName es casi la misma, aunque obviamente estamos usando `NodeType.Run` para recuperar nodos de ejecución. La propiedad `Font.Style` de un objeto `Run` se usa para acceder a la información de estilo en los nodos **Run**. El ejemplo below code encuentra todas las ejecuciones formateadas con el estilo especificado.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Cuando se implementan ambas consultas, todo lo que necesita hacer es pasar un objeto de documento y especificar los nombres de estilo del contenido que desea recuperar: A continuación, ejemplo, ejecute consultas y muestre los resultados. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Resultado Final

Cuando todo esté listo, ejecutar la muestra mostrará el siguiente resultado:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Como puede ver, este es un ejemplo muy simple, que muestra el número y el texto de los párrafos recopilados y se ejecuta en el documento de Word de muestra.

## Cómo insertar y Trabajar con el Campo Tabla de Contenido

A menudo, trabajará con documentos que contengan una tabla de contenido (TOC). Usando Aspose.Words puede insertar su propia tabla de contenido o reconstruir completamente la tabla de contenido existente en el documento usando solo unas pocas líneas de código. Este artículo describe cómo trabajar con el campo tabla de contenido y demuestra:

- Cómo insertar un `TOC`nuevo
- Actualice TOCs nuevo o existente en el documento.
- Especifique modificadores para controlar el formato y la estructura general de la tabla de contenido.
- Cómo modificar los estilos y la apariencia de la tabla de contenido.
- Cómo eliminar un campo `TOC` completo junto con todas las entradas del documento.

### Insertar campos TC

A menudo, se designa una línea específica de texto para el `TOC` y se marca con un campo `TC`. La forma más sencilla de hacer esto en MS Word es resaltar el texto y presionar *ALT+SHIFT+O*. Esto crea automáticamente un campo `TC` con el texto seleccionado. La misma técnica se puede lograr a través del código. El siguiente código encontrará texto que coincida con la entrada e insertará un campo `TC` en la misma posición que el texto. El código se basa en la misma técnica utilizada en el artículo. El siguiente ejemplo muestra cómo buscar e insertar un campo `TC` en el texto de un documento.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Modificar una Tabla de Contenido

#### Cambiar el Formato de los Estilos

El formato de las entradas en `TOC` no utiliza los estilos originales de las entradas marcadas, sino que cada nivel se formatea utilizando un estilo `TOC` equivalente. Por ejemplo, el primer nivel en `TOC` está formateado con el estilo **TOC1**, el segundo nivel formateado con el estilo **TOC2** y así sucesivamente. Esto significa que para cambiar el aspecto de los `TOC` estos estilos deben modificarse. En Aspose.Words, estos estilos están representados por la configuración regional independiente de `StyleIdentifier.TOC1` a `StyleIdentifier.TOC9` y se pueden recuperar de la colección `Document.Styles` utilizando estos identificadores. Una vez que se haya recuperado el estilo apropiado del documento, se puede modificar el formato de este estilo. Cualquier cambio en estos estilos se reflejará automáticamente en el TOCs del documento. El ejemplo below code cambia una propiedad de formato utilizada en el estilo `TOC` de primer nivel.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

También es útil tener en cuenta que cualquier formato directo de un párrafo (definido en el párrafo mismo y no en el estilo) marcado para incluir el `TOC` se copiará en la entrada de la tabla de contenido. Por ejemplo, si se usa el estilo de encabezado 1 para marcar el contenido del `TOC` y este estilo tiene formato en negrita, mientras que el párrafo también tiene formato en cursiva aplicado directamente. La entrada `TOC` resultante no estará en negrita, ya que es parte del formato de estilo, sin embargo, estará en cursiva, ya que está formateada directamente en el párrafo. También puede controlar el formato de los separadores utilizados entre cada entrada y el número de página. De forma predeterminada, se trata de una línea de puntos que se extiende por la numeración de la página utilizando un carácter de tabulación y un tabulador derecho alineado cerca del margen derecho.

Usando la clase `Style` recuperada para el nivel `TOC` particular que desea modificar, también puede modificar cómo aparecen en el documento. Para cambiar cómo aparece esto, primero se debe llamar a `Style.ParagraphFormat` para recuperar el formato de párrafo del estilo. Desde aquí, se pueden recuperar las tabulaciones llamando a `ParagraphFormat.TabStops` y modificando la tabulación correspondiente. Usando esta misma técnica, la pestaña en sí misma se puede mover o eliminar por completo. El ejemplo below code muestra cómo modificar la posición del tabulador derecho en `TOC` párrafos relacionados. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Eliminar una Tabla de contenido del documento

Se puede eliminar una tabla de contenido del documento eliminando todos los nodos que se encuentran entre los nodos `FieldStart` y FieldEnd del campo `TOC`. El código a continuación demuestra esto. La eliminación del campo `TOC` es más simple que un campo normal, ya que no hacemos un seguimiento de los campos anidados. En su lugar, verificamos que el nodo `FieldEnd` sea de tipo `FieldType.FieldTOC`, lo que significa que hemos encontrado el final de la tabla de contenido actual. Esta técnica se puede utilizar en este caso sin preocuparse por los campos anidados, ya que podemos suponer que cualquier documento formado correctamente no tendrá un campo `TOC` completamente anidado dentro de otro campo `TOC`. En primer lugar, se recopilan y almacenan los `FieldStart` nodos de cada `TOC`. Luego se enumera el `TOC` especificado para que se visiten y almacenen todos los nodos dentro del campo. Luego, los nodos se eliminan del documento. El ejemplo below code demuestra cómo eliminar un `TOC` especificado de un documento. Puede descargar el archivo de plantilla de este ejemplo desde aquí.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Inserte un Separador de Estilos para Colocar Diferentes Estilos de Párrafo

El separador de estilo se puede agregar al final de un párrafo usando el método abreviado de teclado Ctrl + Alt + Enter en MS Word. Esta característica permite utilizar dos estilos de párrafo diferentes en un párrafo impreso lógico. Si desea que aparezca texto desde el principio de un encabezado en particular en una Tabla de Contenido, pero no desea que aparezca todo el encabezado en la Tabla de Contenido, puede usar esta función. El ejemplo below code muestra cómo insertar un separador de estilos para colocar diferentes estilos de párrafo.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Copiar Todos los Estilos de la Plantilla

Hay casos en los que desea copiar todos los estilos de un documento a otro. Puede utilizar el método `Document.CopyStylesFromTemplate` para copiar estilos de la plantilla especificada en un documento. Cuando los estilos se copian de una plantilla a un documento, los estilos con nombres similares en el documento se redefinen para que coincidan con las descripciones de estilo en la plantilla. Los estilos únicos de la plantilla se copian en el documento. Los estilos únicos en el documento permanecen intactos. El ejemplo below code muestra cómo copiar estilos de un documento a otro.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
