---
title: Trabalhar com propriedades de documentos em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhar com propriedades do documento
linktitle: Trabalhar com propriedades do documento
description: "Aspose.Words para .NET permite armazenar algumas informações úteis sobre o seu documento, como API e número de versão ou Date autorizado, em propriedades de documento integradas ou personalizadas usando C#."
type: docs
weight: 10
url: /pt/net/work-with-document-properties/
---

As propriedades do documento permitem armazenar algumas informações úteis sobre o seu documento. Essas propriedades podem ser divididas em dois grupos:

* Sistema ou integrado que contém valores como título do documento, nome do autor, estatísticas do documento e outros.
* Definido pelo usuário ou personalizado, fornecido como pares nome-valor onde o usuário pode definir o nome e o valor.

É útil saber que as informações sobre API e número de versão são gravadas diretamente nos documentos de saída. Por exemplo, ao converter um documento para PDF, o Aspose.Words preenche o campo "Aplicativo" com "Aspose.Words", e o campo "PDF Producer" com "Aspose.Words para .NET YY.MN", onde *YY.M.N* é a versão do Aspose.Words utilizada para conversão. Para obter mais detalhes, consulte [Nome do Gerador ou Produtor Incluído nos Documentos de Saída](/words/pt/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Observe que você deve **não pode dirigir** Aspose.Words para alterar ou remover essas informações dos documentos de saída.

{{% /alert %}}

## Acessar propriedades do documento

Para acessar as propriedades do documento em Aspose.Words, use:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) para obter propriedades integradas.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) para obter propriedades personalizadas.

**BuiltInDocumentProperties** e **CustomDocumentProperties** são coleções de objetos [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/). Esses objetos podem ser obtidos através da propriedade do indexador por nome ou por índice.

Além disso, **BuiltInDocumentProperties** fornece acesso às propriedades do documento por meio de um conjunto de propriedades inseridas que retornam valores do tipo apropriado. **CustomDocumentProperties** permite adicionar ou remover propriedades de um documento.

A classe [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) permite obter o nome, valor e tipo de propriedade de um documento. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) retorna um objeto, mas há um conjunto de métodos que permitem converter o valor da propriedade em um tipo específico. Depois de saber qual é o tipo da propriedade, você pode usar um dos métodos **DocumentProperty.ToXXX**, como **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) e **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), para obter o valor do tipo apropriado.

O exemplo de código a seguir mostra como enumerar todas as propriedades internas e personalizadas em um documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

No Microsoft Word, você pode acessar as propriedades do documento usando o menu "Arquivo → Propriedades".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="trabalhar com propriedades do documento-1.png" style="width:400px"/>

## Adicionar ou remover propriedades do documento

Você não pode adicionar ou remover propriedades internas do documento usando Aspose.Words. Você só pode alterar ou atualizar seus valores.

Para adicionar propriedades personalizadas do documento com Aspose.Words, utilize o método [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), passando o nome da nova propriedade e o valor do tipo apropriado. O método retorna o objeto **DocumentProperty** recém-criado.

Para remover propriedades customizadas, utilize o método [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), passando o nome da propriedade a ser removida, ou o método [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) para remover a propriedade por índice. Você também pode remover todas as propriedades usando o método [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

O exemplo de código a seguir verifica se uma propriedade personalizada com um determinado nome existe em um documento e adiciona mais algumas propriedades personalizadas do documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como remover uma propriedade de documento personalizada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Atualizar propriedades integradas do documento

Aspose.Words não atualiza automaticamente as propriedades do documento, como o Microsoft Word faz com algumas propriedades, mas fornece um método para atualizar algumas propriedades estatísticas internas do documento. Chame o método [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) para recalcular e atualizar as seguintes propriedades:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Crie uma nova propriedade personalizada vinculada ao conteúdo

Aspose.Words fornece o método [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) para criar uma nova propriedade de documento personalizada vinculada ao conteúdo. Esta propriedade retorna o objeto de propriedade recém-criado ou nulo se o [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) for inválido.

O exemplo de código a seguir mostra como configurar um link para uma propriedade customizada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Obtenha variáveis de documento

Você pode obter uma coleção de variáveis de documento usando a propriedade [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Nomes e valores de variáveis são strings.

O exemplo de código a seguir mostra como enumerar variáveis de documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Remover informações pessoais do documento

Se quiser compartilhar um documento do Word com outras pessoas, você pode remover informações pessoais, como nome do autor e empresa. Para fazer isso, use a propriedade [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) para definir o sinalizador que indica que o Microsoft Word removerá todas as informações do usuário dos comentários, revisões e propriedades do documento ao salvar o documento.

O exemplo de código a seguir mostra como remover informações pessoais:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Definir esta opção não remove informações pessoais durante o processamento de um documento em Aspose.Words e afeta apenas o comportamento do Microsoft Word.

{{% /alert %}}
