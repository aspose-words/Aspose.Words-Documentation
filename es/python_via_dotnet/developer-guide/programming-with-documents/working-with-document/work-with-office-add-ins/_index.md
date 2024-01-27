---
title: Trabajar con complementos de Office en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con complementos de Office
linktitle: Trabajar con complementos de Office
description: "Aspose.Words para Python via .NET proporciona varias clases para trabajar con complementos de Office. Puede agregar el Panel de tareas a través de una extensión web y personalizar el panel y las propiedades de la extensión."
type: docs
weight: 50
url: /es/python-net/work-with-office-add-ins/
---

A veces es posible que desee dar acceso a controles de interfaz que ejecutan código para modificar documentos. Aspose.Words API proporciona el módulo [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), que otorga varias clases para personalizar elementos y atributos ampliando el vocabulario XML para representar complementos de Office.

El espacio de nombres de WebExtensions se puede dividir condicionalmente en:

* Objetos para trabajar con el panel de tareas.
* Objetos para trabajar con extensiones web.

## Usar paneles de tareas

Los paneles de tareas son superficies de interfaz que se muestran en el lado derecho de la ventana en Microsoft Word. El panel de tareas permite a los usuarios acceder a controles de interfaz que pueden ejecutar código para modificar documentos.

Por ejemplo, al utilizar Aspose.Words API, puede agregar un complemento del panel de tareas y personalizar su apariencia.

## Usando extensiones web

Las extensiones web son herramientas que amplían las capacidades de las aplicaciones de Office e interactúan con el contenido de los documentos de Office. Las extensiones web brindan funcionalidad adicional a los clientes de Office para mejorar la experiencia del usuario.

Aspose.Words brinda la posibilidad de agregar extensiones web del tipo Panel de tareas utilizando las clases [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) y [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/), y también le permite personalizar el panel y las propiedades de la extensión.

El siguiente ejemplo de código muestra cómo crear paneles de tareas y agregarlos a paneles de tareas de extensión web con propiedades básicas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Para ver una lista de complementos del panel de tareas, utilice la propiedad [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

El siguiente ejemplo de código muestra cómo obtener dicha lista de complementos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
