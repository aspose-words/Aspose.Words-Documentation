---
title: Trabalhe com texto em uma tabela
second_title: Aspose.Words para Java
articleTitle: Trabalhe com texto em uma tabela
linktitle: Trabalhe com texto em uma tabela
description: "Substituir texto em uma tabela Java. Extrair texto simples da tabela ou da célula usando Java."
type: docs
weight: 60
url: /pt/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Como mencionado em artigos anteriores, uma tabela geralmente contém texto simples, embora outros conteúdos como imagens ou até outras tabelas possam ser colocados em células de tabela.

Adicionar texto ou outro conteúdo à tabela é realizado usando os métodos apropriados do [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe e é descrito no **"Criar uma mesa"** artigo. Neste artigo, falaremos sobre como trabalhar com texto em uma tabela já existente.

## Substituir texto em uma tabela

A mesa, como qualquer outro nó Aspose.Words, tem acesso ao [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objeto. Usando o objeto da faixa de tabela, você pode substituir o texto em uma tabela.

A capacidade de usar caracteres especiais ao substituir é atualmente suportada, por isso é possível substituir o texto existente com texto multi-parágrafo. Para fazer isso, você precisa usar os metacaracters especiais descritos no correspondente [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) método.

{{% alert color="primary" %}}

Normalmente, a substituição de texto deve ser feita no nível da célula (por célula) ou no nível do parágrafo.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir todas as instâncias de uma cadeia de texto nas células de uma tabela inteira:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extrair texto simples de uma tabela

Usando o **Range** objeto, você também pode chamar métodos em todo o intervalo de tabela e extrair a tabela como texto simples. Para fazer isso, use o [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) propriedade

O exemplo de código a seguir mostra como imprimir o intervalo de texto de uma tabela:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

A mesma técnica é usada para extrair conteúdo de células de tabela individuais apenas.

O exemplo de código a seguir mostra como imprimir um intervalo de texto de elementos de linha e tabela:

{{% /alert %}}

O exemplo de código a seguir mostra como imprimir o intervalo de texto de elementos de linha e tabela.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Trabalhando com texto de tabela alternativa

Microsoft Word tabelas têm `table title` e `table description` que fornecem uma representação textual alternativa das informações contidas na tabela.

Em Aspose.Words, você também pode adicionar um título de tabela e descrição usando o [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) e [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) propriedades. Estas propriedades são significativas para documentos DOCX em conformidade com o ISO/IEC 29500. Ao salvar em formatos anteriores do que ISO/IEC 29500, estas propriedades são ignoradas.

O exemplo de código a seguir mostra como definir o título e as propriedades de descrição de uma tabela:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
