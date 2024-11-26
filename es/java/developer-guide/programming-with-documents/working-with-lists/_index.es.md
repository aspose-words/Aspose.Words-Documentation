---
title: Trabajar con listas en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Listas
linktitle: Trabajar con Listas
description: "Introducción a la función de formato de numeración en Aspose.Words para Java."
type: docs
weight: 200
url: /es/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Una lista en un documento Microsoft Word es un conjunto de propiedades de formato de lista. Las listas se pueden usar en sus documentos para formatear, organizar y enfatizar el texto. Las listas son una excelente manera de organizar los datos en los documentos y facilitan a los lectores la comprensión de los puntos clave.

Cada lista puede tener hasta 9 niveles y las propiedades de formato, como el estilo del número, el valor inicial, la sangría, la posición de la pestaña y otras, se definen por separado para cada nivel.

Este artículo describe el trabajo programático con listas usando Aspose.Words.

## Creación de Listas aplicando Formato de Lista

Aspose.Words permite la creación sencilla de listas aplicando formato de lista. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) proporciona la propiedad [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) que devuelve un objeto **ListFormat**. Este objeto tiene varios métodos para iniciar y finalizar una lista y para aumentar/disminuir la sangría. Hay dos tipos generales de listas en Microsoft Word: con viñetas y numeradas:

- Para iniciar una lista con viñetas, llame a [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Para iniciar una lista numerada, llame a [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

La viñeta o el número y el formato se agregan al párrafo actual y a todos los párrafos adicionales creados con **DocumentBuilder** hasta que se llame a [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) para detener el formato de la lista con viñetas.

En los documentos de Word, las listas pueden constar de hasta nueve niveles. El formato de lista para cada nivel especifica qué viñeta o número se usa, sangría izquierda, espacio entre la viñeta y el texto, etc. Los siguientes métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel:

- Para aumentar el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Para disminuir el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Los métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede usar la propiedad [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) para obtener o establecer el nivel de lista del párrafo. Los niveles de la lista están numerados del 0 al 8.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una lista multinivel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Especificar formato para un Nivel de lista

Los objetos de nivel de lista se crean automáticamente cuando se crea una lista. Utilice las propiedades y los métodos de la clase [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) para controlar el formato de los niveles individuales de una lista.

## Lista de reinicio para cada Sección

Puede reiniciar una lista para cada sección utilizando la propiedad [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Tenga en cuenta que esta opción solo es compatible con los formatos de documento RTF, DOC y DOCX. Esta opción se escribirá en DOCX solo si OoxmlCompliance es mayor que Ecma376.

El siguiente ejemplo de código muestra cómo crear una lista y reiniciarla para cada sección:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

