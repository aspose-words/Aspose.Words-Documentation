---
title: Serializar e trabalhar com um documento numa base de dados
second_title: Aspose.Words para Java
articleTitle: Serializar e trabalhar com um documento numa base de dados
linktitle: Serializar e trabalhar com um documento numa base de dados
description: "Converta um documento em uma matriz de bytes para trabalhar com este documento em um banco de dados. Você pode armazenar e recuperar um documento de e para o banco de dados usando Java."
type: docs
weight: 40
url: /pt/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Uma das tarefas que talvez seja necessário realizar ao trabalhar com documentos é armazenar e recuperar objetos **Document** de e para um banco de dados. Por exemplo, isso seria necessário se estivesse a implementar qualquer tipo de Sistema de gestão de conteúdos. Todas as versões anteriores dos documentos devem ser armazenadas no sistema de base de dados. A capacidade de armazenar documentos na base de dados também é extremamente útil quando a sua aplicação fornece um serviço baseado na web.

Aspose.Words fornece a capacidade de converter um documento em uma matriz de bytes para trabalhos subsequentes com este documento em um banco de dados.

## Converter um documento em Matriz de bytes

Para armazenar um documento numa base de dados ou para preparar um documento para transmissão através da web, é frequentemente necessário serializar o documento para obter uma matriz de bytes.

Para serializar um objecto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) em Aspose.Words:

1. Salve-o em um **MemoryStream** usando a sobrecarga do método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) da classe **Document**.
1. Chame o método **ToArray**, que retorna uma matriz de bytes representando o documento em forma de byte.

As etapas acima podem ser revertidas para carregar os bytes de volta em um objeto **Document**.

{{% alert color="primary" %}}

O formato de gravação selecionado é importante para garantir que a maior fidelidade seja mantida ao salvar e recarregar no objeto **Document**. Por esta razão, sugere-se a utilização de uma série de formatos de ficheiro OOXML.

{{% /alert %}}

O exemplo abaixo mostra como serializar um objeto **Document** para obter uma matriz de bytes e, em seguida, como desserializar a matriz de bytes para obter um objeto **Document** novamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Armazenar, ler e apagar um documento numa base de dados

Esta seção mostra como salvar um documento em um banco de dados e, em seguida, carregá-lo novamente em um objeto `Document` para trabalhar com ele. Para simplificar, o nome do arquivo é a chave usada para armazenar e buscar documentos do banco de dados. A base de dados contém duas colunas. A primeira coluna "FileName" é armazenada como uma String e é usada para identificar documentos. A segunda coluna "FileContent " é armazenada como um objeto `BLOB` que armazena o objeto document na forma de byte.

O exemplo de código a seguir mostra como configurar uma conexão com um banco de dados e executar comandos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Neste exemplo, usamos o banco de dados MySQL para armazenar um documento Aspose.Words.

{{% /alert %}}

O exemplo de código a seguir mostra como salvar um documento no banco de dados, depois ler o mesmo documento novamente e, finalmente, excluir o registro que contém o documento do banco de dados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Guardar um documento numa base de dados

Para salvar um documento em um banco de dados, converta este documento em uma matriz de bytes, conforme descrito no início deste artigo. Em seguida, salve essa matriz de bytes em um campo de banco de dados.

O exemplo de código a seguir mostra como salvar um documento no banco de dados especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Especifique commandString, que é uma expressão SQL que faz todo o trabalho:

- Para salvar um documento no banco de dados, o comando "INSERT INTO" é usado e uma tabela especificada junto com os valores de dois campos de registro – FileName e FileContent. Para evitar parâmetros adicionais, o nome do ficheiro é retirado do próprio objecto **Document**. O valor do campo `FileContent` é atribuído bytes do fluxo de memória, que contém uma representação binária do documento armazenado.
- A linha de código restante executa o comando que armazena o documento Aspose.Words na base de dados.

### Recuperar um documento de uma base de dados

Para recuperar um documento do banco de dados, selecione o registro que contém os dados do documento como uma matriz de bytes. Em seguida, carregue a matriz de bytes do registro em **MemoryStream** e crie um objeto **Document** que carregará o documento a partir do **MemoryStream**.

O exemplo de código a seguir mostra como recuperar e retornar um documento do banco de dados especificado usando o nome do arquivo como uma chave para buscar este documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

O comando SQL" SELECT * FROM " é usado para buscar o registro apropriado com base no nome do arquivo.

{{% /alert %}}

### Eliminar um documento de uma base de dados

Para excluir um documento do banco de dados, use o comando SQL apropriado sem nenhuma manipulação no objeto **Document**.

O exemplo de código a seguir mostra como excluir um documento do banco de dados, usando o nome do arquivo para buscar o registro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
