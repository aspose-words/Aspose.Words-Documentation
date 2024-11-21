---
title: Trabalhar com texto numa tabela
second_title: Aspose.Words para C++
articleTitle: Trabalhar com texto numa tabela
linktitle: Trabalhar com texto numa tabela
description: "Substituir texto em uma tabela em C++. Extraia texto simples da tabela ou célula usando C++."
type: docs
weight: 60
url: /pt/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Como mencionado em artigos anteriores, uma tabela geralmente contém texto simples, embora outros conteúdos, como imagens ou mesmo outras tabelas, possam ser colocados em células de tabela.

A adição de texto ou outro conteúdo à tabela é realizada utilizando os métodos apropriados da classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) e está descrita no artigo **"Create a Table"**. Neste artigo, falaremos sobre como trabalhar com texto em uma tabela já existente.

## Substituir texto numa tabela

A tabela, como qualquer outro nó em Aspose.Words, tem acesso ao objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Usando o objeto table range, você pode substituir o texto em uma tabela.

A capacidade de utilizar caracteres especiais ao substituir é actualmente suportada, pelo que é possível substituir o texto existente por texto com vários parágrafos. Para fazer isso, você precisa usar os metacaracteres especiais descritos no método [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) correspondente.

{{% alert color="primary" %}}

Normalmente, a substituição do texto deve ser feita ao nível da célula (por célula) ou ao nível do parágrafo.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir todas as instâncias de uma cadeia de texto nas células de uma tabela inteira:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Extrair texto simples da tabela ou Célula

Usando o objeto **Range**, Você também pode chamar métodos em todo o intervalo da tabela e extrair a tabela como texto simples. Para fazer isso, use a propriedade [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

O exemplo de código a seguir mostra como imprimir o intervalo de texto de uma tabela:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

A mesma técnica é utilizada para extrair conteúdo apenas de células de tabelas individuais.

O exemplo de código a seguir mostra como imprimir um intervalo de texto de elementos de linha e tabela:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Trabalhar com texto de tabela alternativo

Microsoft Word as tabelas têm a `table title` e `table description` que fornecem uma representação textual alternativa das informações contidas na tabela.

Em Aspose.Words, Você também pode adicionar um título de tabela e uma descrição usando as propriedades [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) e [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Estas propriedades são significativas para DOCX documentos em conformidade com o ISO / IEC 29500. Ao salvar em formatos anteriores a ISO / IEC 29500, essas propriedades são ignoradas.

O exemplo de código a seguir mostra como definir as propriedades title e description de uma tabela:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
