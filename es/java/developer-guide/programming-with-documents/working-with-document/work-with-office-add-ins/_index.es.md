---
title: Trabajar con Complementos de Oficina Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Complementos de Oficina
linktitle: Trabajar con Complementos de Oficina
description: "Aspose.Words para Java ofrece diversas clases para trabajar con Complementos de Oficina. Puede añadir Task Pane a través de la extensión web y personalizar las propiedades de pane y extensión."
type: docs
weight: 50
url: /es/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que desee dar acceso a controles de interfaz que ejecutan código para modificar documentos. Aspose.Words API proporciona el `WebExtensions` namespace, que otorga varias clases para personalizar elementos y atributos que extienden el vocabulario XML para representar complementos de Office.

WebExtensions namespace se puede dividir condicionalmente en:

* Objetos para trabajar con el panel de tareas
* Objetos para trabajar con extensiones web

## Usando Panes de Tareas

Los paneles de tareas son superficies de interfaz que se muestran en el lado derecho de la ventana en Microsoft Word. El panel de tareas permite a los usuarios acceder a controles de interfaz que pueden ejecutar código para modificar documentos.

Por ejemplo, utilizando Aspose.Words API, puede añadir un panel de tareas add-in y personalizar su apariencia.

## Utilizando extensiones web

Las extensiones web son herramientas que amplían las capacidades de las aplicaciones de Office e interactúan con el contenido de documentos de Office. Las extensiones web ofrecen funcionalidad adicional a los clientes de Office para mejorar la experiencia de usuario.

Aspose.Words proporciona la capacidad de añadir extensiones web del tipo Task Pane usando el [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) y [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) clases, y también le permite personalizar las propiedades de pane y extensión.

El siguiente ejemplo de código muestra cómo crear paneles de tareas y añadir a paneles de tareas de extensión web con propiedades básicas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Para ver una lista de complementos de panel de tareas, utilice el [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) propiedad.

El siguiente ejemplo de código muestra cómo obtener tal lista de add-ins:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

