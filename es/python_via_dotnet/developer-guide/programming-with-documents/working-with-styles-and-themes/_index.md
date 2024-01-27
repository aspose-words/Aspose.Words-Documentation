---
title: Trabajar con estilos y temas
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con estilos y temas
linktitle: Trabajar con estilos y temas
description: "Acceda y administre estilos y temas en un documento usando Python."
type: docs
weight: 110
url: /es/python-net/working-with-styles-and-themes/
---

La clase [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) se utiliza para administrar configuraciones integradas y aplicar configuraciones definidas por el usuario a los estilos.

## Accediendo a estilos

Puede obtener una colección de estilos definidos en el documento utilizando la propiedad [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Esta colección contiene estilos integrados y definidos por el usuario en un documento. Un estilo particular podría obtenerse por su nombre/alias, identificador de estilo o índice. El siguiente ejemplo de código demuestra cómo obtener acceso a la colección de estilos definidos en el documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Cómo extraer contenido según estilos

En un nivel simple, recuperar el contenido basado en estilos de un documento de Word puede resultar útil para identificar, enumerar y contar párrafos y ejecuciones de texto formateados con un estilo específico. Por ejemplo, es posible que necesite identificar tipos particulares de contenido en el documento, como ejemplos, títulos, referencias, palabras clave, nombres de figuras y estudios de casos.

Para llevar esto un paso más allá, esto también se puede utilizar para aprovechar la estructura del documento, definida por los estilos que utiliza, para reutilizar el documento para otra salida, como HTML. De hecho, así es como se construye la documentación de Aspose, poniendo a prueba Aspose.Words. Una herramienta creada con Aspose.Words toma los documentos de Word de origen y los divide en temas en ciertos niveles de título. Se produce un archivo XML utilizando Aspose.Words que se utiliza para construir el árbol de navegación que puede ver a la izquierda. Y luego Aspose.Words convierte cada tema en HTML.

La solución para recuperar texto formateado con estilos específicos en un documento de Word suele ser económica y sencilla utilizando Aspose.Words.

### La solución

Para ilustrar con qué facilidad Aspose.Words maneja la recuperación de contenido según estilos, veamos un ejemplo. En este ejemplo, recuperaremos texto formateado con un estilo de párrafo específico y un estilo de carácter de un documento de Word de muestra. A un alto nivel, esto implicará:
- Abrir un documento de Word usando la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Obtener colecciones de todos los párrafos y todas las ejecuciones del documento.
- Seleccionar solo los párrafos y ejecuciones requeridos. Específicamente, recuperaremos texto formateado con el estilo de párrafo 'Título 1' y el estilo de carácter 'Énfasis intenso' de este documento de Word de muestra.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


En este documento de muestra, el texto formateado con el estilo de párrafo 'Título 1' es 'Insertar pestaña', 'Estilos rápidos' y 'Tema', y el texto formateado con el estilo de carácter 'énfasis intenso' son varias instancias de azul, Texto en cursiva y negrita, como "galerías" y "aspecto general".

### El código

La implementación de una consulta basada en estilos es bastante simple en el modelo de objetos de documento Aspose.Words, ya que simplemente utiliza herramientas que ya están implementadas. Se implementan dos métodos de clase para esta solución:
- **párrafos_por_nombre_estilo**: este método recupera una matriz de aquellos párrafos del documento que tienen un nombre de estilo específico.
- **ejecuta_por_nombre_estilo**: este método recupera una matriz de aquellas ejecuciones en el documento que tienen un nombre de estilo específico. Ambos métodos son muy similares, las únicas diferencias son los tipos de nodos y la representación de la información de estilo dentro del párrafo y los nodos de ejecución. Aquí hay una implementación de `paragraphs_by_style_name`: el siguiente ejemplo encuentra todos los párrafos formateados con el estilo especificado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Esta implementación también utiliza el método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) de la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), que devuelve una colección de todos los nodos con el tipo especificado, que en este caso en todos los párrafos.

Tenga en cuenta que el segundo parámetro del método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) está configurado en `True`. Esto obliga al método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) a seleccionar entre todos los nodos secundarios de forma recursiva, en lugar de seleccionar solo los hijos inmediatos.

{{% /alert %}}

También vale la pena señalar que la colección de párrafos no crea una sobrecarga inmediata porque los párrafos se cargan en esta colección solo cuando accede a los elementos que contienen. Luego, todo lo que necesita hacer es revisar la colección, usando el operador foreach estándar y agregar párrafos que tengan el estilo especificado a la matriz parrafos_with_style. El nombre del estilo `Paragraph` se puede encontrar en la propiedad [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) del objeto [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). La implementación de **ejecuta_por_nombre_estilo** es casi la misma, aunque obviamente usamos [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) para recuperar nodos de ejecución. La propiedad [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) de un objeto [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) se utiliza para acceder a la información de estilo en los nodos [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). El siguiente ejemplo encuentra todas las ejecuciones formateadas con el estilo especificado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Cuando se implementan ambas consultas, todo lo que necesita hacer es pasar un objeto de documento y especificar los nombres de estilo del contenido que desea recuperar: el siguiente ejemplo ejecuta consultas y muestra resultados. Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Resultado final

Cuando todo esté hecho, al ejecutar la muestra se mostrará el siguiente resultado:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Como puede ver, este es un ejemplo muy simple, que muestra el número y el texto de los párrafos recopilados y las ejecuciones en el documento de Word de muestra.

## Copiar todos los estilos de la plantilla

Hay casos en los que desea copiar todos los estilos de un documento a otro. Puede utilizar el método [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) para copiar estilos de la plantilla especificada a un documento. Cuando se copian estilos de una plantilla a un documento, los estilos con nombres similares en el documento se redefinen para que coincidan con las descripciones de estilo en la plantilla. Los estilos únicos de la plantilla se copian en el documento. Los estilos únicos del documento permanecen intactos. El ejemplo de Below code muestra cómo copiar estilos de un documento a otro.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Cómo manipular las propiedades del tema

Hemos agregado API básico en Aspose.Words para acceder a las propiedades del tema del documento. Por ahora, este API incluye los siguientes objetos públicos:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Así es como puede obtener propiedades del tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Y así es como puedes configurar las propiedades del tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
