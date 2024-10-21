---
title: Trabajar con Listas en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar Con Listas
linktitle: Trabajar Con Listas
description: "Introducción a la función de formato de numeración en Aspose.Words para C++."
type: docs
weight: 200
url: /es/cpp/working-with-lists/
---

Una lista en un documento de Microsoft Word es un conjunto de propiedades de formato de lista. Las listas se pueden usar en sus documentos para formatear, organizar y enfatizar el texto. Las listas son una excelente manera de organizar los datos en los documentos y facilitan a los lectores la comprensión de los puntos clave.

Cada lista puede tener hasta 9 niveles y las propiedades de formato, como el estilo del número, el valor inicial, la sangría, la posición de la pestaña, etc., se definen por separado para cada nivel.

En Aspose.Words, trabajar con listas está representado por el espacio de nombres [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Sin embargo, el objeto [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) siempre pertenece a la colección [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

En este tema se describe cómo trabajar programáticamente con listas usando Aspose.Words.

## Especificar formato para un Nivel de lista

Los objetos de nivel de lista se crean automáticamente cuando se crea una lista. Utilice las propiedades y los métodos de la clase [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) para controlar el formato de los niveles individuales de una lista.

## Lista de reinicio para cada Sección

Puede reiniciar una lista para cada sección utilizando la propiedad [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Tenga en cuenta que esta opción solo es compatible con los formatos de documento RTF, DOC y DOCX. Esta opción se escribirá en DOCX solo si OoxmlCompliance es mayor que Ecma376.

El siguiente ejemplo de código muestra cómo crear una lista y reiniciarla para cada sección:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
