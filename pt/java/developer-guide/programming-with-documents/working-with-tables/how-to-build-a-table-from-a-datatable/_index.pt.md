---
title: Como construir uma tabela a partir de a DataTable em Java
second_title: Aspose.Words para Java
articleTitle: Construir uma tabela a partir de um DataTable
linktitle: Construir uma tabela a partir de um DataTable
description: "Exemplo de preenchimento da tabela de documentos a partir de uma base de dados externa utilizando Java."
type: docs
weight: 130
url: /pt/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Muitas vezes, seu aplicativo extrai dados de um banco de dados e os armazena na forma de **DataTable**. Poderá querer inserir facilmente estes dados no seu documento como uma nova tabela e aplicar rapidamente a formatação a toda a tabela.

{{% alert color="primary" %}}

Observe que a maneira preferida de inserir dados de um **DataTable** em uma tabela de documentos é usando [Mail Merge com regi](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). A técnica apresentada neste artigo só é sugerida se não for possível criar previamente um modelo adequado para fundir os dados, ou seja, se exigir que tudo aconteça de forma programática.

{{% /alert %}}

Usando Aspose.Words, você pode facilmente recuperar dados de um banco de dados e armazená-los como uma tabela:

1. Crie um novo objeto [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) no seu [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Inicie uma nova tabela usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Se quisermos inserir os nomes de cada uma das colunas do nosso **DataTable** como uma linha de cabeçalho, em seguida, iterar através de cada coluna de dados e escrever os nomes das colunas em uma linha na tabela.
1. Iterar através de cada **DataRow** no **DataTable**:
   1. Iterar através de cada objecto no **DataRow**.
   1. Insira o objecto no documento utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). O método utilizado depende do tipo do objecto que está a ser inserido, por exemplo, [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) para texto e [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) para uma matriz de bytes que representa uma imagem.
   1. No final do processamento da linha de dados, também termina a linha que está sendo criada pelo [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) Usando [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Uma vez que todas as linhas do **DataTable** tenham sido processadas, termine a tabela chamando [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Finalmente, podemos definir o estilo de tabela desejado usando uma das propriedades de tabela apropriadas, como [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier), para aplicar automaticamente a formatação a toda a tabela.
   Os seguintes dados em nosso **DataTable** são usados neste exemplo:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

O exemplo de código a seguir mostra como executar o algoritmo acima em Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

O método pode então ser facilmente chamado usando seu **DocumentBuilder** e dados.

O exemplo de código a seguir mostra como importar os dados de um `DataTable` e inseri - los em uma nova tabela no documento:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

A tabela mostrada na figura abaixo é produzida executando o código acima.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
