---
title: Trabajar con macros de VBA en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con macros de VBA
linktitle: Trabajar con macros de VBA
description: "Trabajar con proyectos de VBA de documentos usando C++."
type: docs
weight: 410
url: /es/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic para aplicaciones (VBA) para Microsoft Word es un lenguaje de programación simple pero potente que se puede utilizar para ampliar la funcionalidad. La API Aspose.Words proporciona tres clases para obtener acceso al código fuente del proyecto VBA:

- La clase [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) proporciona acceso a la información del proyecto VBA
- La clase [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) devuelve la colección de módulos de proyecto VBA
- La clase [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) proporciona acceso al módulo de proyecto de VBA

## Crear un Proyecto VBA

La API Aspose.Words proporciona la propiedad `Document.VbaProject` para obtener o establecer VbaProject en el documento.

El siguiente ejemplo de código demuestra cómo crear un proyecto VBA y un módulo VBA junto con propiedades básicas, por ejemplo, Nombre y tipo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Leer Macros

Aspose.Words también proporciona a los usuarios la capacidad de leer macros de VBA.

El siguiente ejemplo de código muestra cómo leer macros de VBA del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Escribir o Modificar Macros

Con Aspose.Words, los usuarios pueden modificar las macros de VBA.

El siguiente ejemplo de código muestra cómo modificar macros de VBA usando la propiedad [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Proyecto Clon VBA

Con Aspose.Words también es posible clonar proyectos VBA.

El siguiente ejemplo de código muestra cómo clonar el proyecto VBA usando la propiedad [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Módulo Clonar VBA

También puede clonar módulos VBA si es necesario.

El siguiente ejemplo de código muestra cómo clonar el módulo VBA usando la propiedad [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
