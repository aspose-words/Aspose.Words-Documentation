---
title: Limpiar un documento en C++
second_title: Aspose.Words para C++
articleTitle: Limpiar un Documento
linktitle: Limpiar un Documento
description: "Elimine la información no utilizada o duplicada para reducir el tamaño de salida y el tiempo de procesamiento con C++. Elimine estilos no utilizados, estilos integrados no utilizados, estilos duplicados o listas no utilizadas."
type: docs
weight: 30
url: /es/cpp/clean-up-a-document/
---

A veces, es posible que deba eliminar información no utilizada o duplicada para reducir el tamaño del documento de salida y el tiempo de procesamiento.

Si bien puede encontrar y eliminar datos no utilizados, como estilos o listas, o duplicar información manualmente, será mucho más conveniente hacerlo utilizando las funciones y capacidades proporcionadas por Aspose.Words.

La clase [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) le permite especificar opciones para la limpieza de documentos. Para eliminar estilos duplicados o simplemente estilos o listas no utilizados del documento, puede usar el método [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Eliminar Información no Utilizada de un Documento

Puede utilizar las propiedades [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) y [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) para detectar y eliminar estilos marcados como "no utilizados".

Puede utilizar la propiedad [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) para detectar y eliminar listas y definiciones de listas marcadas como "no utilizadas".

El siguiente ejemplo de código muestra cómo eliminar solo los estilos no utilizados de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Eliminar Información Duplicada de un Documento

También puede usar la propiedad [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) para sustituir todos los estilos duplicados por el original y eliminar duplicados de un documento.

El siguiente ejemplo de código muestra cómo eliminar estilos duplicados de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
