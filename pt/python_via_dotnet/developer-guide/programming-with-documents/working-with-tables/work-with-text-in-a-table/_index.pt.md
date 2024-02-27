---
title: Trabalhar com texto em uma tabela
second_title: Aspose.Words para Python
articleTitle: Trabalhar com texto em uma tabela
linktitle: Trabalhar com texto em uma tabela
description: "Substitua o texto em uma tabela em Python. Extraia texto simples de tabela ou célula usando Python."
type: docs
weight: 60
url: /pt/python-net/work-with-text-in-a-table/
---

Conforme mencionado em artigos anteriores, uma tabela geralmente contém texto simples, embora outros conteúdos, como imagens ou mesmo outras tabelas, possam ser colocados nas células da tabela.

A adição de texto ou outro conteúdo à tabela é realizada usando os métodos apropriados da classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) e é descrita no artigo **"Criar uma mesa"**. Neste artigo falaremos sobre como trabalhar com texto em uma tabela já existente.

## Substituir texto em uma tabela

A tabela, como qualquer outro nó Aspose.Words, tem acesso ao objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). Usando o objeto de intervalo de tabela, você pode substituir texto em uma tabela.

A capacidade de usar caracteres especiais ao substituir é atualmente suportada, portanto é possível substituir o texto existente por texto de vários parágrafos. Para fazer isso, você precisa usar os metacaracteres especiais descritos no método [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) correspondente.

{{% alert color="primary" %}}

Normalmente, a substituição de texto deve ser feita no nível da célula (por célula) ou no nível do parágrafo.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir todas as instâncias de uma sequência de texto nas células de uma tabela inteira:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Extraia texto simples de tabela ou célula

Usando o objeto **Range**, você também pode chamar métodos em todo o intervalo da tabela e extrair a tabela como texto simples. Para fazer isso, use a propriedade [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

O exemplo de código a seguir mostra como imprimir o intervalo de texto de uma tabela:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

A mesma técnica é usada para extrair conteúdo apenas de células individuais da tabela.

O exemplo de código a seguir mostra como imprimir um intervalo de texto de elementos de linha e tabela:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Trabalhando com texto de tabela alternativo

As tabelas Microsoft Word possuem um `table title` e um `table description` que fornecem uma representação textual alternativa das informações contidas na tabela.

Em Aspose.Words, você também pode adicionar um título e uma descrição de tabela usando as propriedades [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) e [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/). Essas propriedades são significativas para documentos DOCX em conformidade com ISO/IEC 29500. Ao salvar em formatos anteriores a ISO/IEC 29500, essas propriedades são ignoradas.

O exemplo de código a seguir mostra como definir as propriedades de título e descrição de uma tabela:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

