---
title: Trabajar con macros VBA en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con macros VBA
linktitle: Trabajar con macros VBA
description: "Cree, lea, escriba, clone y administre macros VBA en un documento utilizando Python."
type: docs
weight: 410
url: /es/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic para Aplicaciones (VBA) para Microsoft Word es un lenguaje de programación simple pero potente que se puede utilizar para ampliar la funcionalidad. Aspose.Words API proporciona tres clases para obtener acceso al código fuente del proyecto VBA:

- La clase [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) proporciona acceso a la información del proyecto VBA.
- La clase [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) devuelve la colección de módulos del proyecto VBA.
- La clase [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) proporciona acceso al módulo de proyecto VBA.
- La enumeración [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) define los tipos de un modelo en un proyecto VBA. El módulo puede ser un módulo de procedimiento, un módulo de documento, un módulo de clase o un módulo de diseñador.

## Crear un proyecto VBA

Aspose.Words API proporciona la propiedad [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) para obtener o configurar [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) en el documento.

El siguiente ejemplo de código demuestra cómo crear un proyecto VBA y un módulo VBA junto con propiedades básicas, por ejemplo, [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) y [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Leer macros

Aspose.Words también brinda a los usuarios la capacidad de leer macros de VBA.

El siguiente ejemplo de código muestra cómo leer macros de VBA del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Escribir o modificar macros

Usando Aspose.Words, los usuarios pueden modificar macros de VBA.

El siguiente ejemplo de código muestra cómo modificar macros de VBA utilizando la propiedad [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clonar proyecto VBA

Con Aspose.Words también es posible clonar proyectos VBA.

El siguiente ejemplo de código muestra cómo clonar el proyecto VBA utilizando la propiedad [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clonar módulo VBA

También puede clonar módulos VBA si es necesario.

El siguiente ejemplo de código muestra cómo clonar el módulo VBA usando la propiedad [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Trabajar con las referencias del proyecto VBA

Aspose.Words API proporciona una clase [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) para trabajar con referencias de proyectos VBA que representan una colección de referencias de proyectos VBA.

El siguiente ejemplo de código muestra cómo eliminar algunas referencias de la colección de referencias de un proyecto VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
