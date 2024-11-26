---
title: Mail Merge e informes en C++
second_title: Aspose.Words para C++
articleTitle: Mail Merge y Presentación de Informes
linktitle: Mail Merge y Presentación de Informes
type: docs
description: "Mail Merge es una característica popular para crear documentos rápidamente usando C++. Aspose.Words para C++ toma la funcionalidad estándar de Mail Merge y la adelanta muchos pasos, convirtiéndola en una solución de informes completa que le permite crear documentos aún más complejos, como informes, catálogos, inventarios y facturas."
keywords: "how to use Mail Merge c++"
weight: 30
url: /es/cpp/mail-merge-and-reporting/
timestamp: 2024-01-30-16-22-34
---

Mail Merge es una característica popular para crear documentos rápida y fácilmente, como cartas, etiquetas y sobres. Aspose.Words le permite generar documentos a partir de plantillas con Mail Merge campos.

Un campo Mail Merge es un campo que puede insertar en una plantilla Mail Merge para incluir valores específicos de un registro de origen de datos en los documentos de salida. Por ejemplo, puede insertar un campo de combinación en una plantilla de correo electrónico para que el saludo tenga el nombre del destinatario en lugar de un genérico "¡Hola!". Aspose.Words coloca datos de una fuente externa, como una base de datos o un archivo, en estos campos y les da formato. El documento resultante se guarda en la carpeta especificada.

Aspose.Words toma la funcionalidad estándar de Mail Merge y la adelanta muchos pasos, convirtiéndola en una solución de informes completa que le permite crear documentos aún más complejos, como informes, catálogos, inventarios y facturas. Estas son algunas de las ventajas de la solución de informes Aspose.Words::

- Diseñe informes en Microsoft Word usando campos estándar mail merge
- Defina regiones en el documento que están creciendo, como filas de orden detalladas
- Insertar imágenes durante un mail merge
- Ejecute cualquier lógica personalizada, controle el formato o inserte contenido complejo utilizando controladores de eventos mail merge
- Rellene documentos con datos de cualquier tipo de fuente de datos

{{% alert color="primary" %}}

El espacio de nombres [Aspose.Words.MailMerging](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/) se usa para trabajar con la combinación de correo.

{{% /alert %}}

## Mecanismo y Componentes Principales de Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words proporciona la capacidad de cargar documentos en varios [supported formats](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) y luego permite a los usuarios realizar una operación mail merge.

Por lo general, un documento cargado le permite almacenar campos de combinación, por ejemplo, un documento en formato DOCX. Pero hay formatos que no almacenan dichos campos, por ejemplo, TXT. Si Aspose.Words admite la carga de dichos formatos de archivo, puede agregar los campos de combinación directamente al modelo de documento, guardar el documento en un [supported format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) conveniente y realizar la operación mail merge.

La operación Mail Merge fusionará su *mail merge template* y su *data source* para generar *merged documents* individual.

## Qué es una plantilla Mail Merge {#what-is-a-mail-merge-template}

El objetivo de aplicar una operación Mail Merge mediante una plantilla de combinación es simplificar el proceso de creación de un documento.

Hay varias formas de crear y diseñar una plantilla de combinación. Puede usar Microsoft Word, y la plantilla de combinación no tiene que ser una plantilla Microsoft Word, es decir, un documento en formato DOT o DOTX, puede ser un documento normal en formato DOC o DOCX. Debe insertar algunos campos especiales llamados campos de combinación en esta plantilla en los lugares donde desea que se inserten posteriormente los datos de su fuente de datos. O puede crear mediante programación una plantilla de combinación utilizando la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

La plantilla de combinación contiene el texto principal, que debe ser el mismo en todos los documentos de salida después de realizar la operación mail merge. Puede usar cualquier formato para su plantilla si existe la posibilidad de agregarle campos de combinación. Todos los campos de combinación dentro de su plantilla se completarán desde su fuente de datos durante la operación mail merge.


## Véase También

- [Trabajar con Mail Merge plantillas en Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
