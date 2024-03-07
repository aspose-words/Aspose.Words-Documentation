---
title: Limpiar un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Limpiar un documento
linktitle: Limpiar un documento
description: "Elimine la información no utilizada o duplicada para reducir el tamaño de salida y el tiempo de procesamiento utilizando C#. Elimine estilos no utilizados, estilos integrados no utilizados, estilos duplicados o listas no utilizadas."
type: docs
weight: 30
url: /es/net/clean-up-a-document/
---

En ocasiones, es posible que necesite eliminar información no utilizada o duplicada para reducir el tamaño del documento de salida y el tiempo de procesamiento.

Si bien puede buscar y eliminar datos no utilizados, como estilos o listas, o información duplicada manualmente, será mucho más conveniente hacerlo utilizando las funciones y capacidades proporcionadas por Aspose.Words.

La clase [CleanupOptions](https://reference.aspose.com/words/es/net/aspose.words/cleanupoptions/) le permite especificar opciones para la limpieza de documentos. Para eliminar estilos duplicados o simplemente estilos o listas no utilizados del documento, puede utilizar el método [Cleanup](https://reference.aspose.com/words/es/net/aspose.words/document/cleanup/).

## Eliminar información no utilizada de un documento

Puede utilizar las propiedades [UnusedStyles](https://reference.aspose.com/words/es/net/aspose.words/cleanupoptions/unusedstyles/) y [UnusedBuiltinStyles](https://reference.aspose.com/words/es/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) para detectar y eliminar estilos marcados como "no utilizados".

Puede utilizar la propiedad [UnusedLists](https://reference.aspose.com/words/es/net/aspose.words/cleanupoptions/unusedlists/) para detectar y eliminar listas y definiciones de listas marcadas como "no utilizadas".

El siguiente ejemplo de código muestra cómo eliminar solo los estilos no utilizados de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Eliminar información duplicada de un documento

También puede utilizar la propiedad [DuplicateStyle](https://reference.aspose.com/words/es/net/aspose.words/cleanupoptions/duplicatestyle/) para sustituir todos los estilos duplicados por el original y eliminar duplicados de un documento.

El siguiente ejemplo de código muestra cómo eliminar estilos duplicados de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
