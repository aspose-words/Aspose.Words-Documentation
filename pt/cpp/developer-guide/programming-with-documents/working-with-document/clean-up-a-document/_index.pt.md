---
title: Limpar um documento em C++
second_title: Aspose.Words para C++
articleTitle: Limpar um documento
linktitle: Limpar um documento
description: "Remova informações não utilizadas ou duplicadas para reduzir o tamanho da saída e o tempo de processamento usando C++. Remover estilos não utilizados, estilos incorporados não utilizados, estilos duplicados ou listas não utilizadas."
type: docs
weight: 30
url: /pt/cpp/clean-up-a-document/
---

Às vezes, pode ser necessário remover informações não utilizadas ou duplicadas para reduzir o tamanho do documento de saída e o tempo de processamento.

Embora seja possível localizar e remover dados não utilizados, como estilos ou listas, ou duplicar informações manualmente, será muito mais conveniente fazer isso usando recursos e capacidades fornecidos por Aspose.Words.

A classe [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) permite especificar opções para limpeza de documentos. Para remover estilos duplicados ou apenas estilos ou listas não utilizados do documento, pode utilizar o método [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Remover informações não utilizadas de um documento

Você pode usar as propriedades [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) e [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) para detectar e remover estilos marcados como"não utilizados".

Você pode usar a propriedade [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) para detectar e remover listas e definições de lista marcadas como"não utilizadas".

O exemplo de código a seguir mostra como remover apenas estilos não utilizados de um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Remover informações duplicadas de um documento

Você também pode usar a propriedade [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) para substituir todos os estilos duplicados pelo Original e remover duplicatas de um documento.

O exemplo de código a seguir mostra como remover estilos duplicados de um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
