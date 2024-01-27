---
title: Limpiar un documento en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Limpiar un documento
linktitle: Limpiar un documento
description: "Elimine la información no utilizada o duplicada para reducir el tamaño de salida y el tiempo de procesamiento utilizando Python. Elimine estilos no utilizados, estilos integrados no utilizados, estilos duplicados o listas no utilizadas."
type: docs
weight: 30
url: /es/python-net/clean-up-a-document/
---

En ocasiones, es posible que necesite eliminar información no utilizada o duplicada para reducir el tamaño del documento de salida y el tiempo de procesamiento.

Si bien puede buscar y eliminar datos no utilizados, como estilos o listas, o información duplicada manualmente, será mucho más conveniente hacerlo utilizando las funciones y capacidades proporcionadas por Aspose.Words.

La clase [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) le permite especificar opciones para la limpieza de documentos. Para eliminar estilos duplicados o simplemente estilos o listas no utilizados del documento, puede utilizar el método [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Eliminar información no utilizada de un documento

Puede utilizar las propiedades [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) y [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) para detectar y eliminar estilos marcados como "no utilizados".

Puede utilizar la propiedad [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) para detectar y eliminar listas y definiciones de listas marcadas como "no utilizadas".

El siguiente ejemplo de código muestra cómo eliminar solo los estilos no utilizados de un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Eliminar información duplicada de un documento

También puede utilizar la propiedad [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) para sustituir todos los estilos duplicados por el original y eliminar duplicados de un documento.

El siguiente ejemplo de código muestra cómo eliminar estilos duplicados de un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}