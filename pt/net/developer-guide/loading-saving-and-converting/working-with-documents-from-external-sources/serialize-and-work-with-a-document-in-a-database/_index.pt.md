---
title: Serializar documento em um banco de dados
second_title: Aspose.Words para .NET
articleTitle: Serializar e trabalhar com um documento em um banco de dados
linktitle: Serializar e trabalhar com um documento em um banco de dados
description: "Converta um documento em uma matriz de bytes para trabalhar com este documento em um banco de dados usando C#. Você pode armazenar e recuperar um documento de e para o banco de dados."
type: docs
weight: 10
url: /pt/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Uma das tarefas que você pode precisar realizar ao trabalhar com documentos é armazenar e recuperar objetos **Document** de e para um banco de dados. Por exemplo, isso seria necessário se você estivesse implementando qualquer tipo de sistema de gerenciamento de conteúdo. Todas as versões anteriores dos documentos devem ser armazenadas no sistema de banco de dados. A capacidade de armazenar documentos no banco de dados também é extremamente útil quando seu aplicativo fornece um serviço baseado na web.

Aspose.Words oferece a capacidade de converter um documento em uma matriz de bytes para trabalho posterior com esse documento em um banco de dados.

## Converter um documento em matriz de bytes

Para armazenar um documento em um banco de dados ou preparar um documento para transmissão pela web, muitas vezes é necessário serializar o documento para obter uma matriz de bytes.

Para serializar um objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) em Aspose.Words:

1. Salve-o em um **MemoryStream** usando a sobrecarga do método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) da classe **Document**.
1. Chame o método **ToArray**, que retorna uma matriz de bytes que representa o documento em formato de byte.

As etapas acima podem ser revertidas para carregar os bytes de volta em um objeto **Document**.

{{% alert color="primary" %}}

O formato de salvamento selecionado é importante para garantir que a mais alta fidelidade seja mantida ao salvar e recarregar no objeto **Document**. Por esse motivo, sugere-se o uso de uma série de formatos de arquivo OOXML.

{{% /alert %}}

O exemplo abaixo mostra como serializar um objeto **Document** para obter uma matriz de bytes e, em seguida, como desserializar a matriz de bytes para obter um objeto **Document** novamente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Armazenar, ler e excluir um documento em um banco de dados

Esta seção mostra como salvar um documento em um banco de dados e depois carregá-lo de volta em um objeto `Document` para trabalhar com ele. Para simplificar, o nome do arquivo é a chave usada para armazenar e buscar documentos do banco de dados. O banco de dados contém duas colunas. A primeira coluna "FileName" é armazenada como uma String e é usada para identificar documentos. A segunda coluna "FileContent" é armazenada como um objeto `BLOB` que armazena o objeto do documento na forma de byte.

O exemplo de código a seguir mostra como configurar uma conexão com um banco de dados e executar comandos:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

Neste exemplo, usamos o banco de dados Microsoft Access .mdb para armazenar um documento Aspose.Words.

{{% /alert %}}

O exemplo de código a seguir mostra como salvar um documento no banco de dados, depois ler o mesmo documento novamente e, por fim, excluir o registro que contém o documento do banco de dados:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Salvar um documento em um banco de dados

Para salvar um documento em um banco de dados converta este documento em um array de bytes, conforme descrito no início deste artigo. Em seguida, salve esta matriz de bytes em um campo do banco de dados.

O exemplo de código a seguir mostra como salvar um documento no banco de dados especificado:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Especifique commandString, que é uma expressão SQL que faz todo o trabalho:

- Para salvar um documento no banco de dados, é utilizado o comando "INSERT INTO" e uma tabela especificada junto com os valores de dois campos de registro – FileName e FileContent. Para evitar parâmetros adicionais, o nome do arquivo é retirado do próprio objeto **Document**. O valor do campo `FileContent` recebe bytes do fluxo de memória, que contém uma representação binária do documento armazenado.
- A linha restante do código executa o comando que armazena o documento Aspose.Words no banco de dados.

### Recuperar um documento de um banco de dados

Para recuperar um documento do banco de dados, selecione o registro que contém os dados do documento como uma matriz de bytes. Em seguida, carregue a matriz de bytes do registro no **MemoryStream** e crie um objeto **Document** que carregará o documento do **MemoryStream**.

O exemplo de código a seguir mostra como recuperar e retornar um documento do banco de dados especificado usando o nome do arquivo como chave para buscar esse documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

O comando SQL "SELECT * FROM" é usado para buscar o registro apropriado com base no nome do arquivo.

{{% /alert %}}

### Excluir um documento de um banco de dados

Para excluir um documento do banco de dados, use o comando SQL apropriado sem qualquer manipulação no objeto **Document**.

O exemplo de código a seguir mostra como excluir um documento do banco de dados, usando o nome do arquivo para buscar o registro:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
