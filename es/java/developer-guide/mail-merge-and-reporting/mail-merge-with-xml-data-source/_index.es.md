---
title: Mail Merge con XML Fuente de datos en Java
second_title: Aspose.Words por Java
articleTitle: Mail Merge con XML Fuente de datos
linktitle: Mail Merge con XML Fuente de datos
type: docs
description: "Utilice una variedad de orígenes de datos al realizar una operación Mail Merge, incluido un archivo XML. La principal ventaja de usar XML es la capacidad de definir una jerarquía directamente en el documento en Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /es/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

Puede utilizar una variedad de orígenes de datos al realizar una operación Mail Merge, incluido un archivo XML. La principal ventaja de usar XML es la capacidad de definir una jerarquía directamente en el documento y luego simplemente pasarla a Aspose.Words.

Este artículo describirá cómo leer datos de un archivo XML en lugar de directamente de una base de datos e incluirá XML como fuente de datos para realizar una operación Mail Merge.

## Ventajas de XML Como Fuente de datos

Las fuentes de datos XML son muy útiles para almacenar datos sin la sobrecarga de una base de datos. Son ideales para aplicaciones sin conexión en las que los usuarios necesitan agregar, editar y eliminar datos cuando no pueden conectarse a una base de datos.

XML los datos pueden ser una buena fuente de datos alternativa a las bases de datos relacionales, especialmente si trabaja con aplicaciones web. La mayoría de los servicios web utilizan XML para intercambiar información. Las bases de datos orientadas a XML se utilizan activamente en el mercado actual, y los desarrolladores de bases de datos relacionales están agregando compatibilidad con XML a sus productos para que la base de datos devuelva XML.

Dado que XML almacena datos en formato de texto sin formato, el almacenamiento es independiente de la plataforma. Por lo tanto, los datos se pueden exportar, importar o simplemente mover fácilmente. XML es popular como fuente de datos porque ofrece una forma de preservar el significado semántico de los datos cuando se comunica entre diferentes aplicaciones.

## Llenar una Plantilla de combinación con datos de XML usando DataSet

XML es el estándar universal para el intercambio de datos, y los formatos de documento Microsoft Word son los formatos más populares para las plantillas Mail Merge. Por lo tanto, la capacidad de ejecutar un Mail Merge desde un archivo XML a un documento de plantilla de Word se ha convertido en un requisito común.

Microsoft Word no proporciona un método directo para trabajar con datos XML como origen de datos para una operación Mail Merge, mientras que Aspose.Words le permite realizar una operación Mail Merge con datos de un origen de datos XML. Tenga en cuenta que la estructura del documento XML también se puede variar y los datos aún se leerán correctamente. Esto permite fusionar fácilmente diferentes tipos de XML documentos.

Utilice el método `ReadXML` para leer el esquema XML y los datos en el objeto `DataSet`. Este objeto se usa luego como fuente de datos para un mail merge.

{{% alert color="primary" %}}

Puede utilizar las mismas plantillas para diferentes fuentes de datos.

{{% /alert %}}

El siguiente XML contiene los datos necesarios para rellenar una plantilla de combinación:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo cargar datos XML en DataSet y luego usarlos como fuente de datos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Puede notar la diferencia entre la plantilla antes de ejecutar la operación Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

Y después de ejecutar la operación Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
