---
title: Trabajar con estilos y temas en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con estilos y temas
linktitle: Trabajar con estilos y temas
description: "Funciones avanzadas de formato Microsoft Word, trabajando con estilos y temas usando C#."
type: docs
weight: 110
url: /es/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

La clase [StyleCollection](https://reference.aspose.com/words/es/net/aspose.words/stylecollection/) se utiliza para administrar configuraciones integradas y aplicar configuraciones definidas por el usuario a los estilos.

## Accediendo a estilos

Puede obtener una colección de estilos definidos en el documento utilizando la propiedad [Document.Styles](https://reference.aspose.com/words/es/net/aspose.words/documentbase/styles/). Esta colección contiene estilos integrados y definidos por el usuario en un documento. Un estilo particular podría obtenerse por su nombre/alias, identificador de estilo o índice. El siguiente ejemplo de código demuestra cómo obtener acceso a la colección de estilos definidos en el documento.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Cómo extraer contenido según estilos

En un nivel simple, recuperar el contenido basado en estilos de un documento de Word puede resultar útil para identificar, enumerar y contar párrafos y ejecuciones de texto formateados con un estilo específico. Por ejemplo, es posible que necesite identificar tipos particulares de contenido en el documento, como ejemplos, títulos, referencias, palabras clave, nombres de figuras y estudios de casos.

Para ir un paso más allá, esto también se puede utilizar para aprovechar la estructura del documento, definida por los estilos que utiliza, para reutilizar el documento para otra salida, como HTML. De hecho, así es como se construye la documentación de Aspose, poniendo a prueba Aspose.Words. Una herramienta creada con Aspose.Words toma los documentos de Word de origen y los divide en temas en ciertos niveles de título. Se produce un archivo XML utilizando Aspose.Words que se utiliza para construir el árbol de navegación que puede ver a la izquierda. Y luego Aspose.Words convierte cada tema en HTML.

La solución para recuperar texto formateado con estilos específicos en un documento de Word suele ser económica y sencilla utilizando Aspose.Words.

### La solución

Para ilustrar con qué facilidad Aspose.Words maneja la recuperación de contenido según estilos, veamos un ejemplo. En este ejemplo, vamos a recuperar texto formateado con un estilo de párrafo específico y un estilo de carácter de un documento de Word de muestra. En un nivel alto, esto implicará:# Abrir un documento de Word usando la clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/).# Obtener colecciones de todos los párrafos y todas las ejecuciones del documento.# Seleccionar solo los párrafos y ejecuciones requeridos. Específicamente, recuperaremos texto formateado con el estilo de párrafo 'Título 1' y el estilo de carácter 'Énfasis intenso' de este documento de Word de muestra.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


En este documento de muestra, el texto formateado con el estilo de párrafo 'Título 1' es 'Insertar pestaña', 'Estilos rápidos' y 'Tema', y el texto formateado con el estilo de carácter 'énfasis intenso' son varias instancias de azul, Texto en cursiva y negrita, como "galerías" y "aspecto general".

### El código

La implementación de una consulta basada en estilos es bastante simple en el modelo de objetos de documento Aspose.Words, ya que simplemente utiliza herramientas que ya están implementadas. Se implementan dos métodos de clase para esta solución: **ParagraphsByStyleName**: este método recupera una matriz de esos párrafos en el documento que tiene un nombre de estilo específico. **RunsByStyleName**: este método recupera una matriz de aquellas ejecuciones en el documento que tienen un nombre de estilo específico. Ambos métodos son muy similares, las únicas diferencias son los tipos de nodos y la representación del estilo. información dentro del párrafo y ejecute nodos. Aquí hay una implementación de ParagraphsByStyleName: el siguiente ejemplo encontrará todos los párrafos formateados con el estilo especificado.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Esta implementación también utiliza el método `Document.GetChildNodes` de la clase `Document`, que devuelve una colección de todos los nodos con el tipo especificado, que en este caso en todos los párrafos.

Tenga en cuenta que el segundo parámetro del método **Document.GetChildNodes** está establecido en verdadero. Esto obliga al método **Document.GetChildNodes** a seleccionar entre todos los nodos secundarios de forma recursiva, en lugar de seleccionar solo los hijos inmediatos.

{{% /alert %}}

También vale la pena señalar que la colección de párrafos no crea una sobrecarga inmediata porque los párrafos se cargan en esta colección solo cuando accede a los elementos que contienen. Luego, todo lo que necesita hacer es revisar la colección, usando el operador foreach estándar y agregar párrafos que tengan el estilo especificado a la matriz parrafosWithStyle. El nombre del estilo `Paragraph` se puede encontrar en la propiedad [Style.Name](https://reference.aspose.com/words/es/net/aspose.words/style/name/) del objeto [Paragraph.ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/paragraph/paragraphformat/). La implementación de RunsByStyleName es casi la misma, aunque obviamente usamos [NodeType.Run](https://reference.aspose.com/words/es/net/aspose.words/nodetype/) para recuperar nodos de ejecución. La propiedad [Font.Style](https://reference.aspose.com/words/es/net/aspose.words/font/style/) de un objeto [Run](https://reference.aspose.com/words/es/net/aspose.words/run/) se utiliza para acceder a la información de estilo en los nodos **Run**. El siguiente ejemplo encuentra todas las ejecuciones formateadas con el estilo especificado.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Cuando se implementan ambas consultas, todo lo que necesita hacer es pasar un objeto de documento y especificar los nombres de estilo del contenido que desea recuperar: el siguiente ejemplo ejecuta consultas y muestra resultados. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Resultado final

Cuando todo esté hecho, al ejecutar la muestra se mostrará el siguiente resultado:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Como puede ver, este es un ejemplo muy simple, que muestra el número y el texto de los párrafos recopilados y las ejecuciones en el documento de Word de muestra.

## Copiar todos los estilos de la plantilla

Hay casos en los que desea copiar todos los estilos de un documento a otro. Puede utilizar el método `Document.CopyStylesFromTemplate` para copiar estilos de la plantilla especificada a un documento. Cuando se copian estilos de una plantilla a un documento, los estilos con nombres similares en el documento se redefinen para que coincidan con las descripciones de estilo en la plantilla. Los estilos únicos de la plantilla se copian en el documento. Los estilos únicos del documento permanecen intactos. El ejemplo de Below code muestra cómo copiar estilos de un documento a otro.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Cómo manipular las propiedades del tema

Hemos agregado API básico en Aspose.Words para acceder a las propiedades del tema del documento. Por ahora, este API incluye los siguientes objetos públicos:

- Tema
- Fuentes temáticas
- Colores del tema

Así es como puede obtener propiedades del tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Y así es como puedes configurar las propiedades del tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
