---
title: Limpar um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Limpar um documento
linktitle: Limpar um documento
description: "Remova informações não utilizadas ou duplicadas para reduzir o tamanho da saída e o tempo de processamento usando Python. Remova estilos não utilizados, estilos integrados não utilizados, estilos duplicados ou listas não utilizadas."
type: docs
weight: 30
url: /pt/python-net/clean-up-a-document/
---

Às vezes, pode ser necessário remover informações não utilizadas ou duplicadas para reduzir o tamanho do documento de saída e o tempo de processamento.

Embora você possa localizar e remover dados não utilizados, como estilos ou listas, ou duplicar informações manualmente, será muito mais conveniente fazer isso usando os recursos e capacidades fornecidos pelo Aspose.Words.

A classe [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) permite especificar opções para limpeza de documentos. Para remover estilos duplicados ou apenas estilos ou listas não utilizados do documento, você pode usar o método [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Remover informações não utilizadas de um documento

Você pode usar as propriedades [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) e [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) para detectar e remover estilos marcados como "não utilizados".

Você pode usar a propriedade [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) para detectar e remover listas e definições de lista marcadas como "não utilizadas".

O exemplo de código a seguir mostra como remover apenas estilos não utilizados de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Remover informações duplicadas de um documento

Você também pode usar a propriedade [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) para substituir todos os estilos duplicados pelo original e remover duplicatas de um documento.

O exemplo de código a seguir mostra como remover estilos duplicados de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}