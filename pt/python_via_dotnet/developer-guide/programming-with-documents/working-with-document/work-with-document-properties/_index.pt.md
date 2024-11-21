---
title: Trabalhar com propriedades do documento
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhar com propriedades do documento
linktitle: Trabalhar com propriedades do documento
description: "Aspose.Words para Python permite armazenar algumas informações úteis sobre o seu documento, como API e número de versão ou Date autorizado, em propriedades de documento integradas ou personalizadas."
type: docs
weight: 10
url: /pt/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

As propriedades do documento permitem armazenar algumas informações úteis sobre o seu documento. Essas propriedades podem ser divididas em dois grupos:

* Sistema ou integrado que contém valores como título do documento, nome do autor, estatísticas do documento e outros.
* Definido pelo usuário ou personalizado, fornecido como pares nome-valor onde o usuário pode definir o nome e o valor.

É útil saber que as informações sobre API e número de versão são gravadas diretamente nos documentos de saída. Por exemplo, ao converter um documento para PDF, o Aspose.Words preenche o campo "Aplicativo" com "Aspose.Words", e o campo "PDF Producer" com "Aspose.Words para .NET YY.MN", onde *YY.M.N* é a versão do Aspose.Words utilizada para conversão. Para obter mais detalhes, consulte [Nome do Gerador ou Produtor Incluído nos Documentos de Saída](/words/pt/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Observe que você deve **não pode dirigir** Aspose.Words para alterar ou remover essas informações dos documentos de saída.

{{% /alert %}}

## Acessar propriedades do documento

Para acessar as propriedades do documento em Aspose.Words, use:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) para obter propriedades integradas.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) para obter propriedades personalizadas.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) e [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) são coleções de objetos [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Esses objetos podem ser obtidos através da propriedade do indexador por nome ou por índice.

Além disso, [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) fornece acesso às propriedades do documento por meio de um conjunto de propriedades inseridas que retornam valores do tipo apropriado. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) permite adicionar ou remover propriedades de um documento.

A classe [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) permite obter o nome, valor e tipo de propriedade de um documento. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) retorna um objeto, mas há um conjunto de métodos que permitem converter o valor da propriedade em um tipo específico. Depois de saber qual é o tipo da propriedade, você pode usar um dos métodos **DocumentProperty.to_XXX**, como **PropriedadeDoDocumento.\_\_str\_\_** e [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), para obter o valor do tipo apropriado.

O exemplo de código a seguir mostra como enumerar todas as propriedades internas e personalizadas em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

No Microsoft Word, você pode acessar as propriedades do documento usando o menu "Arquivo → Propriedades".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="trabalhar com propriedades do documento-1.png" style="width:400px"/>

## Adicionar ou remover propriedades do documento

Você não pode adicionar ou remover propriedades internas do documento usando Aspose.Words. Você só pode alterar ou atualizar seus valores.

Para adicionar propriedades personalizadas do documento com Aspose.Words, utilize o método [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), passando o nome da nova propriedade e o valor do tipo apropriado. O método retorna o objeto [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) recém-criado.

Para remover propriedades customizadas, utilize o método [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), passando o nome da propriedade a ser removida, ou o método [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) para remover a propriedade por índice. Você também pode remover todas as propriedades usando o método [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

O exemplo de código a seguir verifica se uma propriedade personalizada com um determinado nome existe em um documento e adiciona mais algumas propriedades personalizadas do documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como remover uma propriedade de documento personalizada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Atualizar propriedades integradas do documento

Aspose.Words não atualiza automaticamente as propriedades do documento, como o Microsoft Word faz com algumas propriedades, mas fornece um método para atualizar algumas propriedades estatísticas internas do documento. Chame o método [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) para recalcular e atualizar as seguintes propriedades:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Crie uma nova propriedade personalizada vinculada ao conteúdo

Aspose.Words fornece o método [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) para criar uma nova propriedade de documento personalizada vinculada ao conteúdo. Esta propriedade retorna o objeto de propriedade recém-criado ou nulo se o **link_source** for inválido.

O exemplo de código a seguir mostra como configurar um link para uma propriedade customizada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Obtenha variáveis de documento

Você pode obter uma coleção de variáveis de documento usando a propriedade [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Nomes e valores de variáveis são strings.

O exemplo de código a seguir mostra como adicionar e acessar variáveis de documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Remover informações pessoais do documento

Se quiser compartilhar um documento do Word com outras pessoas, você pode remover informações pessoais, como nome do autor e empresa. Para fazer isso, use a propriedade [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) para definir o sinalizador que indica que o Microsoft Word removerá todas as informações do usuário dos comentários, revisões e propriedades do documento ao salvar o documento.

O exemplo de código a seguir mostra como remover informações pessoais:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Definir esta opção não remove informações pessoais durante o processamento de um documento em Aspose.Words e afeta apenas o comportamento do Microsoft Word.

{{% /alert %}}
