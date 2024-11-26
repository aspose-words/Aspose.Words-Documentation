---
title: Habilitar OpenType Funciones en Java
second_title: Aspose.Words por Java
articleTitle: Habilitar OpenType Funciones
linktitle: Habilitar OpenType Funciones
description: "Funciones tipográficas avanzadas en Aspose.Words para Java."
type: docs
weight: 25
url: /es/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType es un formato de fuente, introducido para brindar un mejor soporte para idiomas internacionales y sistemas de escritura en comparación con PostScript y TrueType. Las características de diseño de OpenType se conocen comúnmente como OpenType características. Aspose.Words.Dar forma.el paquete HarfBuzz proporciona compatibilidad con OpenType funciones en Aspose.Words mediante el motor de modelado de texto `HarfBuzz`.

Aspose.Words es capaz de utilizar objetos modeladores de texto proporcionados externamente. Un modelador de texto representa una fuente y calcula la información de modelado de un texto. Un documento generalmente se refiere a varias fuentes, por lo que es necesaria una fábrica de modeladores de texto. Este paquete contiene una implementación de una fábrica de modeladores de texto utilizada por Aspose.Words.Layout.LayoutOptions.TextShaperFactory propiedad.

{{% alert color="primary" %}}

El modelado de texto solo se realiza al exportar a formatos PDF o XPS.

{{% /alert %}}

En una aplicación típica, una única instancia de text shaper factory se comparte entre todas las instancias de documentos. Cada vez que se crea un modelador de texto, se accede a un archivo de fuente. Analizar un archivo de fuente es una operación costosa, por lo que se recomienda el almacenamiento en caché. Aspose.Words implementa la clase BasicTextShaperCache que envuelve la implementación de text shaper factory y almacena en caché las instancias de text shaper devueltas por la fábrica envuelta.

El siguiente ejemplo de código le muestra cómo activar la compatibilidad con las funciones OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
