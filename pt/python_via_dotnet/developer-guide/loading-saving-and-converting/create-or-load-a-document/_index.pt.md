---
title: Crie ou carregue um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Criar ou carregar um documento
linktitle: Criar ou carregar um documento
type: docs
url: /pt/python-net/create-or-load-a-document/
description: "Crie um documento em branco ou carregue-o de um arquivo ou fluxo usando Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Quase todas as tarefas que você deseja realizar com Aspose.Words envolvem carregar um documento. A classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) representa um documento carregado na memória. O documento possui vários construtores sobrecarregados que permitem criar um documento em branco ou carregá-lo de um arquivo ou fluxo. O documento pode ser carregado em qualquer formato de carregamento suportado pelo Aspose.Words. Para obter a lista de todos os formatos de carregamento suportados, consulte a enumeração [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Crie um novo documento

Chamaremos o construtor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sem parâmetros para criar um novo documento em branco. Se você deseja gerar um documento programaticamente, a maneira mais simples é usar a classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para adicionar o conteúdo do documento.

O exemplo de código a seguir mostra como criar um documento usando o construtor de documentos:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Observe os valores padrão:

- Um documento em branco contém uma seção com parâmetros padrão, um parágrafo vazio e alguns estilos de documento. Na verdade este documento é igual ao resultado da criação do "Novo documento" em Microsoft Word.
- O tamanho do papel do documento é [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Carregar um documento

Para carregar um documento existente em qualquer um dos formatos [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), passe o nome do arquivo ou fluxo para um dos construtores [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). O formato do documento carregado é determinado automaticamente pela sua extensão.

### Carregar de um arquivo

Passe um nome de arquivo como string para o construtor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) para abrir um documento existente a partir de um arquivo.

O exemplo de código a seguir mostra como abrir um documento a partir de um arquivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Carregar de um stream

Para abrir um documento a partir de um fluxo, basta passar um objeto de fluxo que contém o documento para o construtor [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

O exemplo de código a seguir mostra como abrir um documento a partir de um fluxo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
