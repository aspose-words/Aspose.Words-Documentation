---
title: Creación de un diseño de página en C++
second_title: Aspose.Words para C++
articleTitle: Crear un Diseño de Página
linktitle: Crear un Diseño de Página
description: "Crear un diseño de página puede ser un procedimiento costoso. Aspose.Words creará un diseño de página solo cuando sea necesario: para renderizar páginas de documentos, para obtener un valor de campo, para exportar un documento a HTML, etc."
type: docs
weight: 10
url: /es/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Crear un diseño de página puede ser un procedimiento costoso, tanto en términos de velocidad como de memoria. Esto se debe a varias razones:

- El documento puede tener una gran cantidad de contenido, que puede necesitar mostrarse en miles de páginas. Sería necesario describir la geometría de cada objeto en cada página, consumiendo recursos de memoria.
- El documento puede tener muchas reglas, imponiendo restricciones a la geometría. Se puede gastar un tiempo computacional considerable, asegurando que se satisfagan todas las restricciones.
- Algunas características del documento, por ejemplo, el campo `NUMPAGES`, crean dependencias recursivas para valores de propiedad futuros, que no están disponibles en el momento del cálculo. Esto conduce a cálculos repetitivos y suma en tiempo de cálculo.

Debido a las razones mencionadas anteriormente, Aspose.Words creará un diseño de página solo cuando sea necesario. Una razón típica para esto sería una solicitud para representar páginas de documentos u obtener un valor de campo que dependa de la información disponible en diseño de página. Una razón menos obvia podría ser exportar un documento a HTML. Aunque HTML no es un formato de página fija y no describe la geometría de los objetos de contenido, aún admite imágenes. Dichas imágenes pueden tener la forma de formas creadas en Microsoft Word con un texto dentro de ellas. Por ejemplo, un gráfico con etiquetas de eje se puede exportar a HTML como una imagen, pero antes de que esto se pueda hacer, Aspose.Words necesita representar esa imagen y, por lo tanto, necesita saber dónde mostrar la etiqueta. Vea el ejemplo de la tabla a continuación:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Propiedades No Geométricas

Además de manejar información geométrica, un diseño de página también es responsable de calcular colores y estilos de borde. En Microsoft Word, el color del texto se puede especificar como automático, lo que implica que la selección del color debe basarse en el color de sombreado de la celda o párrafo, o en el color de la página donde aparece el texto.

El diseño de la página calcula dónde aparecerá el texto y qué contenido se representará detrás de él, lo que permite el cálculo del color. Hay otros cálculos específicos realizados por el diseño de la página. Por ejemplo, un borde horizontal en una tabla depende de si una fila de la tabla es la última en una columna de texto y de si está dividida en columnas. Si una fila se representa al final de una columna, se usa el borde inferior en lugar de horizontal.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

En Aspose.Words, un usuario puede solicitar si desea crear un nuevo diseño de página o actualizar uno existente. Ambos pueden realizarse mediante el método [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), proporcionado por la clase [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Si no existe un diseño de página, pero es necesario (por ejemplo, cuando el documento se exporta a un formato de página fija), Aspose.Words llamará automáticamente a este método. Sin embargo, si ya existe un diseño de página, Aspose.Words utilizará el existente para evitar consumir los recursos necesarios para actualizarlo. En este caso, el usuario debe llamar al método `UpdatePageLayout` para asegurarse de que el diseño de la página esté actualizado con el modelo de documento.

## Estructura Dinámica

El proceso de creación del diseño de página consta de los siguientes pasos:

- *Conversion* - enumerar el contenido del modelo de documento y preparar los objetos de diseño correspondientes.
- *Build* - organizar objetos de diseño para representar el contenido del documento en páginas.
- *Reflow* – actualización de la disposición de los objetos para satisfacer las restricciones de geometría.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*: un paso necesario si el documento contiene formas con contenido de texto anidado.

Tenga en cuenta que el diseño de la página es una estructura dinámica que se puede reconstruir parcialmente. Esto es especialmente necesario cuando es imposible calcular valores de campo sin reconstruir la estructura de diseño del documento. El campo puede hacer referencia a la ubicación de un objeto en una página y, al mismo tiempo, el valor del campo en sí también se representa en la página, lo que afecta la ubicación del objeto al que se hace referencia. Un diseño de página no se puede crear de una vez, porque es posible que los valores de campo aún no estén disponibles en el momento de la colocación en una página..

Considere el escenario típico cuando el campo `NUMPAGES` aparece en el pie de página de la primera página del documento. El valor de este campo es el número total de páginas. Para posicionar el campo en una página, se debe conocer su valor. Si solo se está construyendo la primera página, aún no se conoce el número total de páginas. En este caso, el diseño de la página debe usar el valor predeterminado y luego volver a ese campo y cambiar su valor de acuerdo con los cálculos reales. Sin embargo, cambiar el valor del campo puede afectar al contenido de otros documentos en una página y, en última instancia, hacer que se agregue una página nueva o se elimine una página existente, lo que hace que el valor calculado quede obsoleto. Este problema se puede resolver haciendo posible actualizar el diseño de página existente.

Al crear un diseño, también es posible configurar las propiedades [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) que afectan la salida del documento en pages.
