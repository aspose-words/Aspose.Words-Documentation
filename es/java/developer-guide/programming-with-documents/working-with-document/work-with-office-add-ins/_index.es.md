---
title: Trabajar con complementos de Office en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con complementos de Office
linktitle: Trabajar con complementos de Office
description: "Aspose.Words para Java proporciona varias clases para trabajar con complementos de Office. Puede agregar el Panel de tareas a través de la extensión web y personalizar el panel y las propiedades de la extensión."
type: docs
weight: 50
url: /es/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

A veces, es posible que desee dar acceso a controles de interfaz que ejecutan código para modificar documentos. Aspose.Words API proporciona el espacio de nombres `WebExtensions`, que otorga varias clases para personalizar elementos y atributos que amplían el vocabulario XML para representar complementos de Office.

El espacio de nombres WebExtensions se puede dividir condicionalmente en:

* Objetos para trabajar con el panel de tareas
* Objetos para trabajar con extensiones web

## Uso de Paneles de Tareas

Los paneles de tareas son superficies de interfaz que se muestran en el lado derecho de la ventana en Microsoft Word. El panel de tareas permite a los usuarios acceder a los controles de la interfaz que pueden ejecutar código para modificar documentos.

Por ejemplo, con Aspose.Words API, puede agregar un complemento del panel de tareas y personalizar su apariencia.

## Uso de Extensiones Web

Las extensiones web son herramientas que amplían las capacidades de las aplicaciones de Office e interactúan con el contenido de los documentos de Office. Las extensiones web proporcionan funcionalidad adicional a los clientes de Office para mejorar la experiencia del usuario.

Aspose.Words ofrece la posibilidad de agregar extensiones web del tipo de panel de tareas utilizando las clases [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) y [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/), y también le permite personalizar el panel y las propiedades de la extensión.

El siguiente ejemplo de código muestra cómo crear paneles de tareas y agregarlos a paneles de tareas de extensiones web con propiedades básicas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Para ver una lista de complementos del panel de tareas, use la propiedad [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

El siguiente ejemplo de código muestra cómo obtener dicha lista de complementos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

