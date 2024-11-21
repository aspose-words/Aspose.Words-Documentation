---
title: Trabajar con listas en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con listas
linktitle: Trabajar con listas
description: "Cree, especifique formato y reinicie listas en un documento usando Python."
type: docs
weight: 200
url: /es/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Una lista en un documento Microsoft Word es un conjunto de propiedades de formato de lista. Las listas se pueden utilizar en sus documentos para dar formato, organizar y enfatizar el texto. Las listas son una excelente manera de organizar datos en documentos y facilitan a los lectores la comprensión de los puntos clave.

Cada lista puede tener hasta 9 niveles y las propiedades de formato, como estilo de número, valor inicial, sangría, posición de tabulación, etc., se definen por separado para cada nivel.

En Aspose.Words, trabajar con listas está representado por el módulo [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Sin embargo, el objeto [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) siempre pertenece a la colección [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Este tema describe cómo trabajar mediante programación con listas usando Aspose.Words.

## Crear listas aplicando formato de lista

Aspose.Words permite la creación sencilla de listas aplicando formato de lista. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) proporciona la propiedad [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) que devuelve un objeto [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Este objeto tiene varios métodos para iniciar y finalizar una lista y aumentar/disminuir la sangría. Hay dos tipos generales de listas en Microsoft Word: con viñetas y numeradas.

- Para iniciar una lista con viñetas, llame a [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Para iniciar una lista numerada, llame a [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

La viñeta o el número y el formato se agregan al párrafo actual y a todos los párrafos posteriores creados usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) hasta que se llama a [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) para detener el formato de la lista con viñetas.

En los documentos de Word, las listas pueden constar de hasta nueve niveles. El formato de lista para cada nivel especifica qué viñeta o número se utiliza, sangría izquierda, espacio entre la viñeta y el texto, etc. Los siguientes métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel:

- Para aumentar el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Para disminuir el nivel de lista del párrafo actual en un nivel, llame a [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Los métodos cambian el nivel de la lista y aplican las propiedades de formato del nuevo nivel.

{{% alert color="primary" %}}

También puede utilizar la propiedad [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) para obtener o establecer el nivel de lista del párrafo. Los niveles de la lista están numerados del 0 al 8.

{{% /alert %}}

El siguiente ejemplo muestra cómo crear una lista multinivel.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Especificar formato para un nivel de lista

Los objetos a nivel de lista se crean automáticamente cuando se crea una lista. Utilice las propiedades y métodos de la clase [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) para controlar el formato de niveles individuales de una lista.

## Lista de reinicio para cada sección

Puede reiniciar una lista para cada sección usando la propiedad [propiedad is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Tenga en cuenta que esta opción sólo se admite en formatos de documentos RTF, DOC y DOCX. Esta opción se escribirá en DOCX solo si OoxmlCompliance es superior a Ecma376.

El siguiente ejemplo de código muestra cómo crear una lista y reiniciarla para cada sección:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
