---
title: Limpar um documento em C#
second_title: Aspose.Words para .NET
articleTitle: Limpar um documento
linktitle: Limpar um documento
description: "Remova informações não utilizadas ou duplicadas para reduzir o tamanho da saída e o tempo de processamento usando C#. Remova estilos não utilizados, estilos integrados não utilizados, estilos duplicados ou listas não utilizadas."
type: docs
weight: 30
url: /pt/net/clean-up-a-document/
---

Às vezes, pode ser necessário remover informações não utilizadas ou duplicadas para reduzir o tamanho do documento de saída e o tempo de processamento.

Embora você possa localizar e remover dados não utilizados, como estilos ou listas, ou duplicar informações manualmente, será muito mais conveniente fazer isso usando os recursos e capacidades fornecidos pelo Aspose.Words.

A classe [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) permite especificar opções para limpeza de documentos. Para remover estilos duplicados ou apenas estilos ou listas não utilizados do documento, você pode usar o método [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/).

## Remover informações não utilizadas de um documento

Você pode usar as propriedades [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) e [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) para detectar e remover estilos marcados como "não utilizados".

Você pode usar a propriedade [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) para detectar e remover listas e definições de lista marcadas como "não utilizadas".

O exemplo de código a seguir mostra como remover apenas estilos não utilizados de um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Remover informações duplicadas de um documento

Você também pode usar a propriedade [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) para substituir todos os estilos duplicados pelo original e remover duplicatas de um documento.

O exemplo de código a seguir mostra como remover estilos duplicados de um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
