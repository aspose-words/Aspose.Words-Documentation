---
title: Clonar um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Clonar um documento
linktitle: Clonar um documento
type: docs
description: "Clone um documento para obter uma cópia idêntica usando Python. Ao criar uma cópia, os nós e as propriedades do documento original são clonados."
weight: 70
url: /pt/python-net/clone-a-document/
---

Clonar um documento é o processo de criação de uma cópia idêntica de um documento original, o que pode melhorar o desempenho e evitar possíveis vazamentos de memória.

Este artigo explicará os principais casos de uso de clonagem de um documento e como criar um clone de documento usando Aspose.Words.

## Operações com Clonagem de Documentos

A operação de clonagem permite agilizar o processo de criação de documentos, pois você não precisará carregar e analisar um documento de um arquivo todas as vezes.

Depois de criar um clone do seu documento, você poderá editá-lo e realizar diversas operações nele, por exemplo, compará-lo com o documento original, anexá-lo ou inseri-lo em outro documento. Você também pode modificar os elementos clonados ou seu conteúdo antes de inseri-los em outro documento.

## Criando um clone de documento

Aspose.Words permite clonar um documento usando o método [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) que realiza uma cópia profunda do documento e o retorna. Em outras palavras, obterá uma cópia completa do DOM. O método [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) agiliza a geração de documentos, e você só precisa de uma linha de código para obter uma cópia do seu documento.

A clonagem produz um novo documento com o mesmo conteúdo do original, mas com uma cópia exclusiva de cada um dos nós do documento original. Você também pode aplicar a operação de clonagem a um nó de documento usando o método node [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/), que permite duplicar nós de documento composto com e sem seus nós filhos.

{{% alert color="primary" %}}

Observe que ao aplicar o método de clonagem todas as propriedades do documento serão clonadas.

{{% /alert %}}

O exemplo de código a seguir mostra como clonar um documento e criar uma duplicata de uma seção nesse documento:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
