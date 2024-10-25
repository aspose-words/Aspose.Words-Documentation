---
title: Clonar um documento em C++
second_title: Aspose.Words para C++
articleTitle: Clonar um documento
linktitle: Clonar um documento
type: docs
description: "Clone um documento para obter sua cópia idêntica usando C++. Ao criar uma cópia, os nós e as propriedades do documento original são clonados."
weight: 70
url: /pt/cpp/clone-a-document/
---

A clonagem de um documento é o processo de criação de uma cópia idêntica de um documento original, que pode melhorar o desempenho e evitar possíveis fugas de memória.

Este artigo explicará os principais casos de uso da clonagem de um documento e como criar um clone de documento usando Aspose.Words.

## Operações com documentos de clonagem

A operação clone permite tornar o processo de criação de documentos mais rápido, pois você não precisará carregar e analisar um documento de um arquivo Todas as vezes.

Depois de criar um clone do seu documento, você poderá editá-lo e executar diferentes operações nele, por exemplo, compará-lo com o documento original, anexá-lo ou inseri-lo em outro documento. Você também pode modificar elementos clonados ou seu conteúdo antes de inseri-los em outro documento.

## Criando um Clone de Documento

Aspose.Words permite clonar um documento usando o método [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) que executa uma cópia profunda do documento e o retorna. Em outras palavras, ele receberá uma cópia completa do DOM. O método `Clone` acelera a geração de documentos, e você só precisa de uma linha de código para obter uma cópia do seu documento.

A clonagem produz um novo documento com o mesmo conteúdo do original, mas com uma cópia única de cada um dos [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) do documento original. Você também pode aplicar a operação de clonagem a um nó de documento usando o método node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), que permite duplicar nós de documento composto com e sem seus nós filhos.

{{% alert color="primary" %}}

Observe que, ao aplicar o método de clonagem, todas as propriedades do documento serão clonadas.

{{% /alert %}}

O exemplo de código a seguir mostra como clonar um documento e criar uma duplicata de uma seção nesse documento:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
