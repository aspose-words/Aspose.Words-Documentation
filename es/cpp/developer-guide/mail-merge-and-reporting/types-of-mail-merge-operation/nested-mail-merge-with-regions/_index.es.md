---
title: Anidado Mail Merge con regiones en C++
second_title: Aspose.Words para C++
articleTitle: Anidado Mail Merge con regiones
linktitle: Anidado Mail Merge con regiones
type: docs
description: "Realice una operación mail merge con regiones anidadas usando C++. La combinación anidada es una función que le permite combinar datos jerárquicos de su fuente de datos en su plantilla de combinación."
keywords: "mail merge with nested regions c++"
weight: 30
url: /es/cpp/nested-mail-merge-with-regions/
---

En algunos escenarios, es posible que deba usar mail merge anidado con regiones. La combinación anidada es una función que le permite combinar datos jerárquicos de su fuente de datos en su plantilla de combinación para completar fácilmente su documento. Básicamente, los datos jerárquicos se representan como un conjunto de elementos de datos, y las relaciones jerárquicas describen cómo se relacionan los elementos de datos entre sí (un elemento de datos es el padre de otro).

Aspose.Words le permite realizar una operación mail merge con regiones anidadas. Puede utilizar esta función si tiene un origen de datos organizado en una estructura similar a un árbol y desea ejecutar una operación mail merge para rellenar una plantilla con datos jerárquicos.

{{% alert color="primary" %}}

El mail merge anidado es relevante solo cuando se realiza un mail merge con regiones.

{{% /alert %}}

## Qué es un Mail Merge anidado

La región mail merge se denomina anidada si tiene dos o más regiones mail merge donde una de ellas está dentro de la otra de forma jerárquica. Tenga en cuenta que cada región contiene datos de una tabla.

El ejemplo más común de un mail merge anidado es un pedido que contiene algunos elementos en los que necesita vincular muchas tablas de datos y presentar la información en una plantilla.

La siguiente imagen muestra dos regiones anidadas donde la región *Order* mail merge es la matriz de la región *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Cómo Procesar Mail Merge con Regiones anidadas

Los datos que se fusionarán en una plantilla pueden provenir de varias fuentes, principalmente bases de datos relacionales o documentos XML. En nuestro ejemplo, vamos a usar un [SQLite](https://www.sqlite.org/index.html) base de datos para almacenar nuestros datos y cargarlos con implementación de fuente de datos personalizada.

La siguiente imagen muestra cómo los datos de la tabla *Order* pasados a las regiones de combinación anidadas se vincularán a la tabla *Item*, así como la salida generada durante la operación de combinación.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Como puede ver en el documento de salida, cada pedido de la tabla **Order** se inserta en la plantilla de combinación con todos los elementos relacionados con el pedido de la tabla **Item**. El siguiente pedido se insertará junto con sus artículos hasta que se enumeren todos los pedidos y artículos. El orden de anidación mail merge con regiones en la plantilla debe coincidir con las relaciones de datos entre las tablas en la fuente de datos.

## Cómo Crear Relaciones de Datos a partir de una Fuente de Datos Personalizada

Implemente la interfaz [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) para crear relaciones en la estructura padre-hijo de su fuente de datos personalizada. Utilice el método [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) para devolver los datos secundarios relevantes de un registro primario actual.

El siguiente ejemplo de código demuestra cómo generar una factura usando mail merge anidada con regiones de [SQLite](https://www.sqlite.org/index.html) base de datos con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}