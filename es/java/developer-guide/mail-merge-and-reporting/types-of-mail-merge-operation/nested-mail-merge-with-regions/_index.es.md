---
title: Anidado Mail Merge con regiones en Java
second_title: Aspose.Words por Java
articleTitle: Anidado Mail Merge con regiones
linktitle: Anidado Mail Merge con regiones
type: docs
description: "Realice una operación Mail Merge con regiones anidadas. La combinación anidada es una función que le permite combinar datos jerárquicos de su fuente de datos en su plantilla de combinación usando Java."
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /es/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

En algunos escenarios, es posible que deba usar Mail Merge anidado con regiones. La combinación anidada es una función que le permite combinar datos jerárquicos de su fuente de datos en su plantilla de combinación para completar fácilmente su documento. Básicamente, los datos jerárquicos se representan como un conjunto de elementos de datos, y las relaciones jerárquicas describen cómo se relacionan los elementos de datos entre sí (un elemento de datos es el padre de otro).

Aspose.Words le permite realizar una operación Mail Merge con regiones anidadas. Puede utilizar esta función si tiene un origen de datos organizado en una estructura similar a un árbol y desea ejecutar una operación Mail Merge para rellenar una plantilla con datos jerárquicos.

{{% alert color="primary" %}}

El Mail Merge anidado es relevante solo cuando se realiza un Mail Merge con regiones.

{{% /alert %}}

## Qué es un Mail Merge anidado

La región Mail Merge se denomina anidada si tiene dos o más regiones Mail Merge donde una de ellas está dentro de la otra de forma jerárquica. Tenga en cuenta que cada región contiene datos de una tabla.

El ejemplo más común de un Mail Merge anidado es un pedido que contiene varios elementos en los que necesita vincular varias tablas de datos y presentar la información en una plantilla.

La siguiente imagen muestra dos regiones anidadas donde la región *Order* Mail Merge es la matriz de la región *Item* Mail Merge.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## Cómo Procesar Mail Merge con Regiones anidadas

Los datos que se fusionarán en una plantilla pueden provenir de varias fuentes, principalmente bases de datos relacionales o documentos XML. En nuestro ejemplo, vamos a usar un archivo XML para almacenar nuestros datos y cargarlos directamente en el **DataSet**.

Aspose.Words le permite procesar Mail Merge con regiones anidadas utilizando las relaciones de datos especificadas en **DataSet**. Cuando el objeto **DataSet** carga XML, utiliza el esquema proporcionado o lo infiere de la estructura del XML mismo para lograr esto. A partir de esta estructura, crea relaciones entre tablas cuando es necesario.

La siguiente imagen muestra cómo los datos de la tabla *Order* pasados a las regiones de combinación anidadas se vincularán a la tabla *Item*, así como la salida generada durante la operación de combinación.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

Como puede ver en el documento de salida, cada pedido de la tabla **Order** se inserta en la plantilla de combinación con todos los elementos relacionados del pedido de la tabla **Item**. El siguiente pedido se insertará junto con sus artículos hasta que se enumeren todos los pedidos y artículos. El orden de anidación Mail Merge con regiones en la plantilla debe coincidir con las relaciones de datos entre las tablas en la fuente de datos.

El siguiente ejemplo de código muestra cómo generar una factura usando Mail Merge anidado con regions:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## Cómo Configurar Relaciones de Datos en Mail Merge Anidado con Regiones

Debe configurar todas las relaciones de datos en la estructura principal-secundaria para ejecutar el Mail Merge anidado con regiones correctamente. Omitir este importante paso puede provocar un error en la ejecución del Mail Merge anidado con regiones.

Al recuperar datos para un Mail Merge anidado de un archivo XML utilizando el método **ReadXml**, las relaciones se crean automáticamente de acuerdo con la estructura del documento XML. Sin embargo, debe asegurarse de que se hayan creado las relaciones correctas.

Si Mail Merge no funciona como se esperaba, es posible que deba reestructurar su archivo XML o crear relaciones explícitamente entre DataTable objetos en DataSet.

Un `DataSet` que tenga tablas de datos relacionadas usará el objeto **DataRelation** para representar la relación padre-hijo entre las tablas.

El siguiente ejemplo de código muestra cómo establecer un `DataRelation` entre la tabla de un cliente y la tabla de un pedido mediante el uso de un objeto `DataRelation`:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
