---
title: Serialize e trabalhe com um documento em um banco de dados
second_title: Aspose.Words para Java
articleTitle: Serialize e trabalhe com um documento em um banco de dados
linktitle: Serialize e trabalhe com um documento em um banco de dados
description: "Converta um documento em um array byte para trabalhar com este documento em um banco de dados. Você pode armazenar e recuperar um documento de e para o banco de dados usando Java."
type: docs
weight: 40
url: /pt/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Uma das tarefas que você pode precisar fazer quando trabalhar com documentos está armazenando e recuperando **Document** objetos para e de um banco de dados. Por exemplo, isso seria necessário se você estivesse implementando qualquer tipo de sistema de gerenciamento de conteúdo. Todas as versões anteriores dos documentos devem ser armazenadas no sistema de banco de dados. A capacidade de armazenar documentos no banco de dados também é extremamente útil quando sua aplicação fornece um serviço baseado na web.

Aspose.Words fornece uma capacidade de converter um documento em um array byte para o trabalho subsequente com este documento em um banco de dados.

## Converter um documento para Byte Array

Para armazenar um documento em um banco de dados ou preparar um documento para a transmissão em toda a web, muitas vezes é necessário serializar o documento para obter um array byte.

Para serializar um [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto em Aspose.Words:

1. Guarda-o para um **MemoryStream** usando o [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) sobrecarga do método **Document** classe.
1. Chamar **ToArray** método, que retorna um array de bytes representando o documento em forma byte.

Os passos acima então podem ser revertidos para carregar os bytes de volta em um **Document** objeto.

{{% alert color="primary" %}}

O formato de salvamento selecionado é importante para garantir a maior fidelidade é mantida ao salvar e recarregar no **Document** objeto. Por esta razão, sugere-se usar uma série de formatos de arquivo OOXML.

{{% /alert %}}

O exemplo abaixo mostra como serializar um **Document** objeto para obter um array byte e, em seguida, como unserialize o array byte para obter um **Document** objeto novamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Armazenar, ler e excluir um documento em um banco de dados

Esta seção mostra como salvar um documento em um banco de dados e depois carregá-lo de volta em um `Document` objeto para trabalhar com ele. Para simplicidade, o nome do arquivo é a chave usada para armazenar e buscar documentos do banco de dados. O banco de dados contém duas colunas. A primeira coluna "FileName" é armazenada como uma corda e é usada para identificar documentos. A segunda coluna "FileContent" é armazenada como uma `BLOB` objeto que armazena o objeto do documento no formulário byte.

O exemplo de código a seguir mostra como configurar uma conexão com um banco de dados e executar comandos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Neste exemplo, usamos o banco de dados MySQL para armazenar um Aspose.Words documento.

{{% /alert %}}

O exemplo de código a seguir mostra como salvar um documento no banco de dados, depois ler o mesmo documento novamente, e finalmente excluir o registro contendo o documento do banco de dados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Salvar um documento em um banco de dados

Para salvar um documento em um banco de dados converter este documento para uma variedade de bytes, como descrito no início deste artigo. Então, salve este array byte em um campo de banco de dados.

O exemplo de código a seguir mostra como salvar um documento no banco de dados especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Especifique commandString, que é uma expressão SQL que faz todo o trabalho:

- Não. Para salvar um documento no banco de dados, o comando "INSERT INTO" é usado e uma tabela especificada junto com os valores de dois campos de registro – FileName e FileContent. Para evitar parâmetros adicionais, o nome do arquivo é retirado do **Document** objeto em si. O `FileContent` valor de campo é atribuído bytes do fluxo de memória, que contém uma representação binária do documento armazenado.
- Não. A linha restante do código executa o comando que armazena o Aspose.Words documento na base de dados.

### Recupere um documento de um banco de dados

Para recuperar um documento do banco de dados, selecione o registro que contém os dados do documento como um array de bytes. Em seguida, carregue o array byte do registro em **MemoryStream** e criar um **Document** objeto que carregará o documento do **MemoryStream**.

O exemplo de código a seguir mostra como recuperar e devolver um documento do banco de dados especificado usando o nome do arquivo como uma chave para buscar este documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

O comando SQL "SELECT * FROM" é usado para buscar o registro apropriado com base no nome do arquivo.

{{% /alert %}}

### Excluir um documento de um banco de dados

Para excluir um documento do banco de dados, use o comando SQL apropriado sem qualquer manipulação no **Document** objeto.

O exemplo de código a seguir mostra como excluir um documento do banco de dados, usando o nome do arquivo para buscar o registro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
