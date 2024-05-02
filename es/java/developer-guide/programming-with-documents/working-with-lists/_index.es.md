---
title: Trabajar con listas en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con listas
linktitle: Trabajando con listas
description: "Introducción a la función de formato de numeración Aspose.Words para Java."
type: docs
weight: 200
url: /es/java/working-with-lists/
---

Una lista en una Microsoft Word documento es un conjunto de propiedades de formato de lista. Las listas se pueden utilizar en sus documentos para formatear, organizar y enfatizar el texto. Las listas son una gran manera de organizar datos en documentos, y facilitan que los lectores comprendan puntos clave.

Cada lista puede tener hasta 9 niveles y propiedades de formato, como el estilo de número, el valor de inicio, la posición de entrada, y otros se definen por separado para cada nivel.

Este artículo describe programáticamente trabajar con listas usando Aspose.Words.

## Creación de listas mediante el formato de lista de aplicaciones

Aspose.Words permite la fácil creación de listas aplicando formato de lista. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) proporciona el [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) propiedad que devuelve un **ListFormat** objeto. Este objeto tiene varios métodos para iniciar y terminar una lista y aumentar/disminuir el indent. Hay dos tipos generales de listas en Microsoft Word: balada y numerada:

- Para empezar una lista de balas, llama [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Para empezar una lista numerada, llame [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

La bala o el número y el formato se añaden al párrafo actual y todos los párrafos adicionales creados utilizando **DocumentBuilder** hasta [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) se llama para detener el formato de lista de balas.

En documentos de Word, las listas pueden consistir en hasta nueve niveles. El formato de lista para cada nivel especifica qué bala o número se utiliza, indent izquierdo, espacio entre la bala y el texto, etc. Los siguientes métodos cambian el nivel de lista y aplican las propiedades de formato del nuevo nivel:

- To increase the list level of the current paragraph by one level, call [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Para reducir el nivel de lista del párrafo actual por un nivel, llame [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Los métodos cambian el nivel de lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede utilizar el [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) propiedad para obtener o establecer el nivel de lista para el párrafo. Los niveles de lista son de 0 a 8.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo construir una lista multinivel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Especifique el formato para un nivel de lista

Los objetos de nivel de lista se crean automáticamente cuando se crea una lista. Utilice las propiedades y métodos de los [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) clase para controlar el formato de los niveles individuales de una lista.

## Lista de reinicio para cada sección

Puede reiniciar una lista para cada sección usando la [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) propiedad. Tenga en cuenta que esta opción sólo se admite en formatos de documentos RTF, DOC y DOCX. Esta opción se escribirá a DOCX sólo si OoxmlCompliance es mayor entonces Ecma376.

El siguiente ejemplo de código muestra cómo crear una lista y reiniciarla para cada sección:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

