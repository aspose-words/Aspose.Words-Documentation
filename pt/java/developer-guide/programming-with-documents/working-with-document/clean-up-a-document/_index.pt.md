---
title: Limpar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Limpar um documento
linktitle: Limpar um documento
description: "Remova informações não utilizadas ou duplicadas para reduzir o tamanho da saída e o tempo de processamento. Remova estilos não utilizados, estilos incorporados não utilizados, estilos duplicados ou listas não utilizadas usando Java."
type: docs
weight: 30
url: /pt/java/clean-up-a-document/
---

Às vezes você pode precisar remover informações não utilizadas ou duplicadas para reduzir o tamanho do documento de saída e tempo de processamento.

Enquanto você pode encontrar e remover dados não utilizados, como estilos ou listas, ou informações duplicadas manualmente, será muito mais conveniente fazer isso usando recursos e recursos fornecidos por Aspose.Words.

O [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) classe permite que você especifique opções para a limpeza de documentos. Para remover estilos duplicados ou apenas estilos não utilizados ou listas do documento, você pode usar o [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) método.

## Remover informações não utilizadas de um documento

Você pode usar o [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) e [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) propriedades para detectar e remover estilos que são marcados como "não utilizados".

Você pode usar o [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) propriedade para detectar e remover listas e listar definições que são marcadas como "não utilizadas".

O exemplo de código a seguir mostra como remover apenas estilos não utilizados de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Remover informações duplicadas de um documento

Você também pode usar o [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) propriedade para substituir todos os estilos duplicados com o original e remover duplicatas de um documento.

O exemplo de código a seguir mostra como remover estilos duplicados de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
