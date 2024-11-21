---
title: Como Construir uma Tabela de uma `DataTable` em Java
second_title: Aspose.Words para Java
articleTitle: Construir uma tabela de uma `DataTable`
linktitle: Construir uma tabela de uma `DataTable`
description: "Exemplo de preenchimento de tabela de documentos a partir de banco de dados externo usando Java."
type: docs
weight: 130
url: /pt/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Muitas vezes, sua aplicação irá extrair dados de um banco de dados e armazená-lo na forma de um **DataTable**. Você pode desejar inserir facilmente esses dados em seu documento como uma nova tabela e aplicar rapidamente a formatação em toda a tabela.

{{% alert color="primary" %}}

Note que a maneira preferida de inserir dados de uma **DataTable** em uma tabela de documentos é usando [Mail Merge com regiões](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). A técnica apresentada neste artigo só é sugerida se você não consegue criar um modelo adequado de antemão para mesclar dados com, em outras palavras, se você exigir que tudo aconteça programaticamente.

{{% /alert %}}

Usando Aspose.Words, você pode facilmente recuperar dados de um banco de dados e armazená-lo como uma tabela:

1. Criar um novo [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) objeto em seu [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Comece uma nova tabela usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Se quisermos inserir os nomes de cada uma das colunas de nossas **DataTable** como uma linha de cabeçalho, em seguida, iterar através de cada coluna de dados e escrever os nomes das colunas em uma linha na tabela.
1. Iterate através de cada **DataRow** no **DataTable**:
   1. Iterar através de cada objeto no **DataRow**.
   1. Insira o objeto no documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). O método utilizado depende do tipo do objeto que está sendo inserido e.g [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) para o texto e [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) para um array byte que representa uma imagem.
   1. No final do processamento da linha de dados também termina a linha sendo criada pela [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) usando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Uma vez todas as linhas do **DataTable** foram processados terminar a tabela chamando [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Finalmente, podemos definir o estilo de tabela desejado usando uma das propriedades de tabela apropriadas, tais como [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) para aplicar automaticamente a formatação a toda a tabela.
   Os seguintes dados em nosso **DataTable** é usado neste exemplo:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

O exemplo de código a seguir mostra como executar o algoritmo acima em Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

O método pode então ser facilmente chamado usando seu **DocumentBuilder** e dados.

O exemplo de código a seguir mostra como importar os dados de um `DataTable` e inseri-lo em uma nova tabela no documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

A tabela mostrada na imagem abaixo é produzida executando o código acima.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
