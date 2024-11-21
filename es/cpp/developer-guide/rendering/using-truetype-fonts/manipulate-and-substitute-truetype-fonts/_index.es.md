---
title: Manipular y sustituir fuentes TrueType en C++
second_title: Aspose.Words para C++
articleTitle: Manipular y sustituir las fuentes TrueType
linktitle: Manipular y sustituir las fuentes TrueType
description: "Aspose.Words para C++ puede incrustar las fuentes TrueType correctas en el documento resultante para garantizar que se muestre con precisión. Si una fuente o un carácter específico no está disponible, Aspose.Words busca un reemplazo de fuente adecuado o utiliza el mecanismo de respaldo de fuentes."
type: docs
weight: 10
url: /es/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words requiere fuentes TrueType para una variedad de tareas, incluida la representación de documentos en formatos de página fija, por ejemplo, PDF o XPS. Cuando Aspose.Words procesa un documento, debe realizar la incrustación y la incrustación de subconjuntos de fuentes TrueType en el documento resultante, lo cual es una práctica normal durante la generación de un documento, incluidos los formatos populares PDF o XPS. Esto garantiza que el documento aparecerá igual para cualquier espectador. Además, la especificación XPS requiere que las fuentes estén siempre incrustadas en el documento.

Para garantizar que Aspose.Words mida con precisión los caracteres e incruste correctamente las fuentes relevantes, se deben cumplir las siguientes condiciones:

1. Aspose.Words debería poder encontrar y acceder a los archivos de fuentes TrueType en el sistema.
1. Debe haber suficientes fuentes TrueType disponibles para Aspose.Words, preferiblemente con los mismos nombres de familia de fuentes que los utilizados en el documento.

Tenga en cuenta que la fuente del documento representa una entidad, como el apellido, el estilo, el tamaño y el color, que es diferente de la entidad de fuente `TrueType` (fuente física). Aspose.Words convierte la fuente del documento en una fuente física en alguna etapa del procesamiento. Esto habilita ciertas tareas, más comúnmente la tarea de calcular el tamaño del texto durante la construcción del diseño y la incrustación / subconjunto en formatos de página fija. Asimismo, se habilitan otras tareas menos populares, como la resolución y sustitución de fuentes al cargar HTML o incrustar/subconjuntar en algunos formatos de flujo.

## Donde Aspose.Words Busca Fuentes

Aspose.Words intenta encontrar TrueType fuentes en el sistema de archivos automáticamente. Por lo general, puede confiar en el comportamiento predeterminado de Aspose.Words para encontrar las fuentes `TrueType`, pero a veces necesita especificar sus propias carpetas que contengan fuentes TrueType. El [Especifique la ubicación de TrueType Fuentes](/words/cpp/specify-truetype-fonts-location/) el tema describe cómo y dónde Aspose.Words busca las fuentes, así como cómo especificar sus propias ubicaciones de fuentes.

## Diferencias en el Procesamiento de Formatos de fuente en Aspose.Words y Microsoft Word

Existen algunas diferencias en el procesamiento de formatos de fuente en Aspose.Words y Microsoft Word, como se muestra en la tabla a continuación:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fuentes y OpenType fuentes con TrueType contornos | Apoyado. | Apoyado. |
| OpenType fuentes con PostScript contornos | Compatible con la mayoría de los escenarios. No se admite la incrustación en formatos de página fija como PDF y XPS. El texto se reemplaza con imágenes de mapa de bits. | Compatible con la mayoría de los escenarios, incluida la incrustación en formatos de página fija. |
| OpenType Variaciones de fuente | Solo se admiten instancias con nombre. No se admiten variaciones continuas. | Compatible con la única instancia predeterminada. No se admiten instancias con nombre ni variaciones continuas. |
| Fuentes Type1 | Compatible con versiones Windows anteriores a 2013 y con versiones de macOS. El soporte se elimina en las versiones Windows a partir de 2013. | No soportado. |


