---
title: Como construir uma tabela a partir de um DataTable em C#
second_title: Aspose.Words para .NET
articleTitle: Construir uma tabela a partir de um DataTable
linktitle: Construir uma tabela a partir de um DataTable
description: "Exemplo de preenchimento de tabela de documentos de banco de dados externo usando C#."
type: docs
weight: 120
url: /pt/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

Freqüentemente, seu aplicativo extrai dados de um banco de dados e os armazena na forma de **DataTable**. Você pode inserir facilmente esses dados em seu documento como uma nova tabela e aplicar rapidamente a formatação a toda a tabela.

{{% alert color="primary" %}}

Observe que a forma preferida de inserir dados de um **DataTable** em uma tabela de documentos é usando [Mail Merge com regiões](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). A técnica apresentada neste artigo só é sugerida se você não conseguir criar previamente um modelo adequado para mesclar os dados, ou seja, se você precisar que tudo aconteça de forma programática.

{{% /alert %}}

Usando Aspose.Words, você pode recuperar facilmente dados de um banco de dados e armazená-los como uma tabela:

1. Crie um novo objeto **DocumentBuilder** em seu **Document**.
1. Inicie uma nova tabela usando **DocumentBuilder**.
1. Se quisermos inserir os nomes de cada uma das colunas de nosso **DataTable** como uma linha de cabeçalho, itere cada coluna de dados e escreva os nomes das colunas em uma linha da tabela.
1. Itere cada **DataRow** no **DataTable**:
   1. Itere cada objeto no **DataRow**.
   1. Insira o objeto no documento usando **DocumentBuilder**. O método utilizado depende do tipo de objeto que está sendo inserido, por exemplo, **DocumentBuilder.Writeln** para texto e **DocumentBuilder.InsertImage** para uma matriz de bytes que representa uma imagem.
   1. Ao final do processamento do **DataRow** finalize também a linha que está sendo criada pelo **DocumentBuilder** utilizando **DocumentBuilder.EndRow**.
1. Depois que todas as linhas do **DataTable** forem processadas, finalize a tabela chamando **DocumentBuilder.EndTable**.
1. Finalmente podemos definir o estilo de tabela desejado usando uma das propriedades de tabela apropriadas, como **Table.StyleIdentifier**, para aplicar automaticamente a formatação a toda a tabela.

O método **ImportTableFromDataTable** aceita um objeto **DocumentBuilder**, o **DataTable** contendo os dados e um sinalizador que especifica se o cabeçalho da coluna do **DataTable** está incluído no topo da tabela. Este método cria uma tabela a partir desses parâmetros usando a posição e a formatação atuais do construtor. Fornece um método para importar dados do `DataTable` e inseri-los em uma nova tabela usando o DocumentBuilder.

Os seguintes dados em nosso **DataTable** são usados neste exemplo:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

O exemplo de código a seguir mostra como executar o algoritmo acima em Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

O método pode então ser facilmente chamado usando seu **DocumentBuilder** e dados.

O exemplo de código a seguir mostra como importar os dados de um `DataTable` e inseri-los em uma nova tabela no documento:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
