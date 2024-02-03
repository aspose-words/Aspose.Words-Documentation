---
title: Compare documentos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Comparar documentos
linktitle: Comparar documentos
description: "Compare dois documentos em qualquer formato compatível e mostre as alterações de conteúdo usando Python. Você pode aplicar opções avançadas ao comparar."
type: docs
weight: 60
url: /pt/python-net/compare-documents/
---

Comparar documentos é um processo que identifica alterações entre dois documentos e contém as alterações como revisões. Este processo compara quaisquer dois documentos, incluindo versões de um documento específico, então as alterações entre os dois documentos serão mostradas como revisões no primeiro documento.

O método de comparação é obtido comparando palavras no nível do caractere ou no nível da palavra. Se uma palavra contiver uma alteração de pelo menos um caractere, no resultado a diferença será exibida como uma alteração da palavra inteira e não de um caractere. Este processo de comparação é uma tarefa comum nos setores jurídico e financeiro.

Em vez de procurar manualmente diferenças entre documentos ou entre diferentes versões deles, você pode usar Aspose.Words para comparar documentos e obter alterações de conteúdo na formatação, cabeçalho/rodapé, tabelas e muito mais.

Este artigo explica como comparar documentos e como especificar as propriedades de comparação avançadas.

{{% alert color="primary" %}}

**Experimente on-line**

Você pode comparar dois documentos online usando a ferramenta [Comparação de documentos on-line](https://products.aspose.app/words/comparison).

Observe que o método de comparação descrito abaixo é usado nesta ferramenta para garantir a obtenção de resultados iguais. Assim, você obterá os mesmos resultados mesmo usando a ferramenta de comparação online ou o método de comparação em Aspose.Words.

{{% /alert %}}

## Limitações e formatos de arquivo suportados {#limitations-and-supported-file-formats}

Comparar documentos é um recurso muito complexo. Existem diversas partes da combinação de conteúdo que precisam ser analisadas para reconhecer todas as diferenças. A razão para esta complexidade se deve ao fato de que o Aspose.Words visa obter os mesmos resultados de comparação que o algoritmo de comparação Microsoft Word.

A limitação geral para dois documentos comparados é que eles não devem ter revisões antes de chamar o método compare, pois essa limitação existe no Microsoft Word.

{{% alert color="primary" %}}

Observe que você pode comparar dois documentos quaisquer dentro do [Formatos de documentos suportados](/words/pt/python-net/supported-document-formats/). Basicamente, você pode comparar objetos de documentos e até mesmo criar esses objetos do zero, sem ter nenhum formato específico.

{{% /alert %}}

## Compare dois documentos {#compare-two-documents}

Quando você compara documentos, as diferenças entre o último documento e o anterior aparecem como revisões do primeiro. Ao modificar um documento, cada edição terá sua própria revisão após executar o método compare.

Aspose.Words permite identificar diferenças de documentos usando o método [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) – isso é semelhante ao recurso de comparação de documentos Microsoft Word. Ele permite que você verifique documentos ou versões de documentos para encontrar diferenças e alterações, incluindo modificações de formatação, como alterações de fonte, alterações de espaçamento, adição de palavras e parágrafos.

Como resultado da comparação, os documentos podem ser determinados como iguais ou diferentes. O termo documentos "iguais" significa que o método de comparação não é capaz de representar alterações como revisões. Isso significa que o texto do documento e a formatação do texto são iguais. Mas pode haver outras diferenças entre os documentos. Por exemplo, Microsoft Word suporta apenas revisões de formato para estilos e você não pode representar inserção/exclusão de estilo. Assim, os documentos podem ter um conjunto diferente de estilos e o método [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) ainda não produz revisões.

O exemplo de código a seguir mostra como verificar se dois documentos são iguais ou não:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

O exemplo de código a seguir mostra como simplesmente aplicar o método `Compare` a dois documentos:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Especifique propriedades de comparação avançada {#specify-advanced-comparing-properties}

Existem muitas propriedades diferentes da classe [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) que você pode aplicar quando quiser comparar documentos.

Por exemplo, Aspose.Words permite ignorar alterações feitas durante uma operação de comparação para certos tipos de objetos no documento original. Você pode selecionar a propriedade apropriada para o tipo de objeto, como [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) e outros, definindo-os como `True`.

Além disso, Aspose.Words fornece a propriedade [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) com a qual você pode especificar se deseja rastrear alterações por caractere ou por palavra.

Outra propriedade comum é a escolha de qual documento mostrar as alterações de comparação. Por exemplo, a "caixa de diálogo Comparar documentos" em Microsoft Word tem a opção "Mostrar alterações em" – isso também afeta os resultados da comparação. Aspose.Words fornece a propriedade [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) que atende a esse propósito.

O exemplo de código a seguir mostra como definir as propriedades de comparação avançada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
