---
title: Limpar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Limpar um documento
linktitle: Limpar um documento
description: "Remova informações não utilizadas ou duplicadas para reduzir o tamanho da saída e o tempo de processamento. Remova estilos não utilizados, estilos incorporados não utilizados, estilos duplicados ou listas não utilizadas utilizando Java."
type: docs
weight: 30
url: /pt/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Às vezes, pode ser necessário remover informações não utilizadas ou duplicadas para reduzir o tamanho do documento de saída e o tempo de processamento.

Embora seja possível localizar e remover dados não utilizados, como estilos ou listas, ou duplicar informações manualmente, será muito mais conveniente fazer isso usando recursos e capacidades fornecidos por Aspose.Words.

A classe [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) permite especificar opções para limpeza de documentos. Para remover estilos duplicados ou apenas estilos ou listas não utilizados do documento, pode utilizar o método [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## Remover informações não utilizadas de um documento

Você pode usar as propriedades [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) e [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) para detectar e remover estilos marcados como"não utilizados".

Você pode usar a propriedade [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) para detectar e remover listas e definições de lista marcadas como"não utilizadas".

O exemplo de código a seguir mostra como remover apenas estilos não utilizados de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Remover informações duplicadas de um documento

Você também pode usar a propriedade [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) para substituir todos os estilos duplicados pelo Original e remover duplicatas de um documento.

O exemplo de código a seguir mostra como remover estilos duplicados de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
