---
title: Trabajar con complementos de Office en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con complementos de Office
linktitle: Trabajar con complementos de Office
description: "Aspose.Words para .NET proporciona varias clases para trabajar con complementos de Office mediante C#. Puede agregar el Panel de tareas a través de una extensión web y personalizar el panel y las propiedades de la extensión."
type: docs
weight: 50
url: /es/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que desee dar acceso a controles de interfaz que ejecutan código para modificar documentos. Aspose.Words API proporciona el espacio de nombres `WebExtensions`, que otorga varias clases para personalizar elementos y atributos ampliando el vocabulario XML para representar complementos de Office.

El espacio de nombres de WebExtensions se puede dividir condicionalmente en:

* Objetos para trabajar con el panel de tareas.
* Objetos para trabajar con extensiones web.

## Usar paneles de tareas

Los paneles de tareas son superficies de interfaz que se muestran en el lado derecho de la ventana en Microsoft Word. El panel de tareas permite a los usuarios acceder a controles de interfaz que pueden ejecutar código para modificar documentos.

Por ejemplo, al utilizar Aspose.Words API, puede agregar un complemento del panel de tareas y personalizar su apariencia.

## Usando extensiones web

Las extensiones web son herramientas que amplían las capacidades de las aplicaciones de Office e interactúan con el contenido de los documentos de Office. Las extensiones web brindan funcionalidad adicional a los clientes de Office para mejorar la experiencia del usuario.

Aspose.Words brinda la posibilidad de agregar extensiones web del tipo Panel de tareas utilizando las clases [WebExtension](https://reference.aspose.com/words/es/net/aspose.words.webextensions/webextension/) y [TaskPane](https://reference.aspose.com/words/es/net/aspose.words.webextensions/taskpane/), y también le permite personalizar el panel y las propiedades de la extensión.

El siguiente ejemplo de código muestra cómo crear paneles de tareas y agregarlos a paneles de tareas de extensión web con propiedades básicas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Para ver una lista de complementos del panel de tareas, utilice la propiedad [WebExtensionTaskPanes](https://reference.aspose.com/words/es/net/aspose.words/document/webextensiontaskpanes/).

El siguiente ejemplo de código muestra cómo obtener dicha lista de complementos:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
