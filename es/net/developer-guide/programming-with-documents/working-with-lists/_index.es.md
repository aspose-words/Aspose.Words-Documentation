---
title: Trabajar con listas en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con listas
linktitle: Trabajar con listas
description: "Introducción a la función de formato de numeración en Aspose.Words para .NET."
type: docs
weight: 200
url: /es/net/working-with-lists/
---

Una lista en un documento Microsoft Word es un conjunto de propiedades de formato de párrafo. Las listas se pueden utilizar en documentos para estructurar, organizar y resaltar texto. Las listas son una excelente manera de organizar datos en documentos de una manera que facilite a los lectores absorber y comprender los puntos clave.

Cada lista puede tener hasta 9 niveles y las propiedades de formato, como estilo de número, valor inicial, sangría, posición de tabulación y otras, se definen por separado para cada nivel.

En Aspose.Words, trabajar con listas está representado por el espacio de nombres [Lists](https://reference.aspose.com/words/es/net/aspose.words.lists/). Sin embargo, el objeto [List](https://reference.aspose.com/words/es/net/aspose.words.lists/list/) siempre pertenece al formato [ListCollection](https://reference.aspose.com/words/es/net/aspose.words.lists/listcollection/).

Este artículo describe cómo trabajar mediante programación con listas usando Aspose.Words.

## Crear listas aplicando formato de lista

Aspose.Words permite la creación sencilla de listas aplicando formato de lista. [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) proporciona la propiedad [ListFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/listformat/) que devuelve un objeto **ListFormat**. Este objeto tiene varios métodos para iniciar y finalizar una lista y aumentar/disminuir la sangría. Hay dos tipos generales de listas en Microsoft Word: con viñetas y numeradas:

- Para iniciar una lista con viñetas, llame a [ApplyBulletDefault](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/applybulletdefault/)
- Para iniciar una lista numerada, llame a [ApplyNumberDefault](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/applynumberdefault/)

La viñeta o el número y el formato se agregan al párrafo actual y a todos los párrafos posteriores creados usando **DocumentBuilder** hasta que se llama a [RemoveNumbers](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/removenumbers/) para detener el formato de la lista con viñetas.

En los documentos de Word, las listas pueden constar de hasta nueve niveles. El formato de lista para cada nivel especifica qué viñeta o número se utiliza, sangría izquierda, espacio entre la viñeta y el texto, etc. Los siguientes métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel:

- Para aumentar el nivel de lista del párrafo actual en un nivel, llame a [ListIndent](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/listindent/)
- Para disminuir el nivel de lista del párrafo actual en un nivel, llame a [ListOutdent](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/listoutdent/)

También puede utilizar la propiedad [ListLevelNumber](https://reference.aspose.com/words/es/net/aspose.words.lists/listformat/listlevelnumber/) para obtener o establecer el nivel de lista del párrafo.

{{% alert color="primary" %}}

Los niveles de la lista están numerados del 0 al 8.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una lista multinivel:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Especificar formato para un nivel de lista

Los objetos a nivel de lista se crean automáticamente cuando se crea una lista. Utilice las propiedades y métodos de la clase [ListLevel](https://reference.aspose.com/words/es/net/aspose.words.lists/listlevel/) para controlar el formato de niveles individuales de una lista.

## Lista de reinicio para cada sección

Puede reiniciar una lista para cada sección usando la propiedad [IsRestartAtEachSection](https://reference.aspose.com/words/es/net/aspose.words.lists/list/isrestartateachsection/). Tenga en cuenta que esta opción sólo se admite en formatos de documentos RTF, DOC y DOCX. Esta opción se escribirá en DOCX solo si OoxmlCompliance es superior a Ecma376.

El siguiente ejemplo de código muestra cómo crear una lista y reiniciarla para cada sección:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
