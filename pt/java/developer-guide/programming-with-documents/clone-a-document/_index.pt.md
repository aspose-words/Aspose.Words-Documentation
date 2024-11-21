---
title: Clone a Document in Java
second_title: Aspose.Words para Java
articleTitle: Clone a Document
linktitle: Clone a Document
type: docs
description: "Clone um documento para obter sua cópia idêntica. Ao criar uma cópia, nós e propriedades do documento original são clonados usando Java."
weight: 70
url: /pt/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Clonar um documento é o processo de criação de uma cópia idêntica de um documento original, que pode melhorar o desempenho e salvá-lo de possíveis vazamentos de memória.

Este artigo irá explicar os principais casos de uso de clonagem de um documento e como criar um clone de documentos usando Aspose.Words.

## Operações com documentos de clonagem

A operação clone permite que você faça o processo de criação de documentos mais rápido, pois você não precisará carregar e analisar um documento de um arquivo cada vez.

Depois de criar um clone do seu documento, você será capaz de editá-lo e executar diferentes operações nele, por exemplo, compará-lo com o documento original, anexá-lo ou inseri-lo em outro documento. Você também pode modificar elementos clonados ou seu conteúdo antes de inseri-los em outro documento.

## Criando um Clone de Documentos

Aspose.Words permite clonar um documento usando o [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) método que executa uma cópia profunda do documento e retorna-o. Em outras palavras, ele terá uma cópia completa do DOM. O `Clone` método acelera a geração de documentos, e você só precisa de uma linha de código para obter uma cópia do seu documento.

Cloning produz um novo documento com o mesmo conteúdo que o original, mas com uma cópia única de cada um do documento original [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Você também pode aplicar a operação clone a um nó de documento usando o nó [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) método, que permite duplicar nós de documento composto com e sem seus nós de criança.

{{% alert color="primary" %}}

Note que ao aplicar o método de clonagem todas as propriedades do documento serão clonadas.

{{% /alert %}}

O exemplo de código a seguir mostra como clonar um documento e criar uma duplicata de uma seção nesse documento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
