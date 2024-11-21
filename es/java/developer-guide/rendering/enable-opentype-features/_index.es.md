---
title: Activar características de OpenType en Java
second_title: Aspose.Words para Java
articleTitle: Activar características de OpenType
linktitle: Activar características de OpenType
description: "Características de tipografía avanzada en Aspose.Words para Java."
type: docs
weight: 25
url: /es/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType es un formato de fuente, introducido para proporcionar un mejor soporte para idiomas internacionales y sistemas de escritura en comparación con PostScript y TrueType. Las características de diseño de OpenType se conocen comúnmente como características de OpenType. Aspose.Words.Formación.HarfBuzz paquete proporciona soporte para funciones OpenType en Aspose.Words usando el `HarfBuzz` Motor de modelado de texto.

Aspose.Words es capaz de utilizar objetos de formador de texto proporcionados externamente. Un formador de texto representa una fuente y computes formando información para un texto. Un documento normalmente se refiere a múltiples fuentes por lo que es necesaria una fábrica de formador de texto. Este paquete contiene una implementación de una fábrica de formador de texto utilizada por Aspose.WordsTextShaperFactory propiedad.

{{% alert color="primary" %}}

La configuración de texto sólo se realiza cuando se exporta a PDF o XPS formatos.

{{% /alert %}}

En una instancia típica de aplicación de una fábrica de formador de texto se comparte entre todas las instancias de documentos. Siempre que se crea un formato de texto se accede a un archivo de fuente. Parsing a font file is an expensive operation thus caching is recommended. Aspose.Words implementos BasicTextShaper Clase de caché que envuelve la implementación de la fábrica de formador de texto y caches instancias de modelado de texto devuelto por la fábrica envuelta.

El siguiente ejemplo de código muestra cómo activar el soporte de las características de OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
