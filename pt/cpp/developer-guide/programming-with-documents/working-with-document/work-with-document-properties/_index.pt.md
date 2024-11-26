---
title: Trabalhar com propriedades do documento em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com propriedades do documento
linktitle: Trabalhar com propriedades do documento
description: "Aspose.Words para C++ permite armazenar algumas informações úteis sobre o seu documento, como API e número da versão ou data autorizada, em Propriedades de Documento integradas ou personalizadas."
type: docs
weight: 10
url: /pt/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

As propriedades do documento permitem armazenar algumas informações úteis sobre o documento. Essas propriedades podem ser divididas em dois grupos:

* Sistema ou built-in que contêm valores como título do documento, nome do autor, estatísticas do documento e outros.
* Definido pelo utilizador ou personalizado, fornecido como pares nome-valor em que o utilizador pode definir o nome e o valor.

É útil saber que as informações sobre API e o número da versão são gravadas diretamente nos documentos de saída. Por exemplo, ao converter um documento para PDF, Aspose.Words preenche o campo "aplicação" com " Aspose.Words "e o campo" PDF produtor "com"Aspose.Words para C++ YY.M. N", em que *YY.M.N* é a versão de Aspose.Words utilizada para a conversão. Para mais detalhes, ver [Nome do gerador ou do produtor incluído nos documentos de saída](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Observe que você **cannot direct** Aspose.Words Para alterar ou remover essas informações dos documentos de saída.

{{% /alert %}}

## Aceder Às Propriedades Do Documento

Para aceder às propriedades do documento em Aspose.Words utilize:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) para obter propriedades internas.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) para obter propriedades personalizadas.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

A classe [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) permite obter o nome, o valor e o tipo de uma propriedade document. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) retorna um objeto, mas há um conjunto de métodos que permitem que você obtenha o valor da propriedade convertido em um tipo específico. Depois de saber qual é o tipo da propriedade, você pode usar um dos métodos **DocumentProperty.ToXXX**, como **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) e **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), para obter o valor do tipo apropriado.

O exemplo de código a seguir mostra como enumerar todas as propriedades internas e personalizadas em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Em Microsoft Word, pode aceder às propriedades do documento através do menu "Ficheiro Propriedades".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Adicionar ou remover propriedades do documento

Não é possível adicionar ou remover propriedades de Documento integradas utilizando Aspose.Words. Você só pode alterar ou atualizar seus valores.

Para adicionar propriedades de Documento personalizadas com Aspose.Words, use o método [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), passando o novo nome da propriedade e o valor do tipo apropriado. O método retorna o objeto **DocumentProperty** recém-criado.

Para remover propriedades personalizadas, use o método [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), passando o nome da propriedade para remover ou o método [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) para remover a propriedade por índice. Você também pode remover todas as propriedades usando o método [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

O exemplo de código a seguir verifica se uma propriedade personalizada com um determinado nome existe em um documento e adiciona mais algumas propriedades de Documento personalizadas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

O exemplo de código a seguir mostra como remover uma propriedade de Documento personalizada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Actualizar As Propriedades Integradas Do Documento

Aspose.Words não atualiza automaticamente as propriedades do documento, como Microsoft Word faz com algumas propriedades, mas fornece um método para atualizar algumas propriedades estatísticas internas do documento. Chame o método [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) para recalcular e atualizar as seguintes propriedades:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Criar uma nova propriedade personalizada vinculada ao conteúdo

Aspose.Words fornece o método [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) para criar uma nova propriedade de Documento personalizada vinculada ao conteúdo. Esta propriedade retorna o objeto de propriedade recém-criado ou null se [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) For inválido.

O exemplo de código a seguir mostra como configurar um link para uma propriedade personalizada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Obter Variáveis Do Documento

Você pode obter uma coleção de variáveis de documento usando a propriedade [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Os nomes e valores das variáveis são strings.

O exemplo de código a seguir mostra como enumerar variáveis de Documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Remover informações pessoais do documento

Se pretender partilhar um documento do Word com outras pessoas, pode querer remover informações pessoais, como o nome do autor e a empresa. Para fazer isso, use a propriedade [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) para definir o sinalizador indicando que Microsoft Word removerá todas as informações do usuário dos comentários, revisões e propriedades do documento ao salvar o documento.

O exemplo de código a seguir mostra como remover informações pessoais:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

A definição desta opção não remove, de facto, as informações pessoais durante o processamento de um documento em Aspose.Words e afecta apenas o comportamento Microsoft Word.

{{% /alert %}}
