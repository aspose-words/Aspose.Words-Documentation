---
title: Trabajar con macros VBA en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con macros VBA
linktitle: Trabajar con macros VBA
description: "Trabajar con proyectos de documentos VBA utilizando C#."
type: docs
weight: 410
url: /es/net/working-with-vba-macros/
---

Visual Basic para Aplicaciones (VBA) para Microsoft Word es un lenguaje de programación simple pero potente que se puede utilizar para ampliar la funcionalidad. Aspose.Words API proporciona tres clases para obtener acceso al código fuente del proyecto VBA:

- La clase [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) proporciona acceso a la información del proyecto VBA.
- La clase [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) devuelve la colección de módulos del proyecto VBA.
- La clase [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) proporciona acceso al módulo de proyecto VBA.
- La enumeración [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) define los tipos de un modelo en un proyecto VBA. El módulo puede ser un módulo de procedimiento, un módulo de documento, un módulo de clase o un módulo de diseñador.

## Crear un proyecto VBA

Aspose.Words API proporciona la propiedad [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) para obtener o configurar VbaProject en el documento.

El siguiente ejemplo de código demuestra cómo crear un proyecto VBA y un módulo VBA junto con propiedades básicas, por ejemplo, Nombre y Tipo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Leer macros

Aspose.Words también brinda a los usuarios la capacidad de leer macros de VBA.

El siguiente ejemplo de código muestra cómo leer macros de VBA del documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Escribir o modificar macros

Usando Aspose.Words, los usuarios pueden modificar macros de VBA.

El siguiente ejemplo de código muestra cómo modificar macros de VBA utilizando la propiedad [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clonar proyecto VBA

Con Aspose.Words también es posible clonar proyectos VBA.

El siguiente ejemplo de código muestra cómo clonar el proyecto VBA utilizando la propiedad [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clonar módulo VBA

También puede clonar módulos VBA si es necesario.

El siguiente ejemplo de código muestra cómo clonar el módulo VBA usando la propiedad [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) que crea una copia del proyecto existente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Trabajar con las referencias del proyecto VBA

Aspose.Words API proporciona la clase [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) para trabajar con referencias de proyectos VBA que representan una colección de referencias de proyectos VBA.

El siguiente ejemplo de código muestra cómo eliminar algunas referencias de la colección de referencias de un proyecto VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}