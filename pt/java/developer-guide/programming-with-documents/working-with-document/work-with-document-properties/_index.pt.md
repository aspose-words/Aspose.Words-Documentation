---
title: Trabalhar com Propriedades de Documentos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalho com Propriedades do Documento
linktitle: Trabalho com Propriedades do Documento
description: "Aspose.Words para Java permite armazenar algumas informações úteis sobre seu documento, como API e Número de versão ou Autorizado Date, em propriedades de documentos embutidas ou personalizadas."
type: docs
weight: 10
url: /pt/java/work-with-document-properties/
---

As propriedades do documento permitem armazenar algumas informações úteis sobre o seu documento. Estas propriedades podem ser divididas em dois grupos:

* Sistema ou built-in que contêm valores como título do documento, nome do autor, estatísticas de documentos e outros.
* Definido pelo usuário ou personalizado, fornecido como pares de nome-valor onde o usuário pode definir o nome e o valor.

É útil saber que informações sobre API e Número de versão é diretamente escrito para documentos de saída. Por exemplo, ao converter um documento em PDF, Aspose.Words preenche o campo "Aplicação" com "Aspose.Words", e o campo "PDF Producer" com "Aspose.Words para Java YY.M.N", onde *YY.M.N* é a versão de Aspose.Words usado para conversão. Para mais detalhes, consulte [Nome do gerador ou produtor fabricado em documentos de saída](/words/pt/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Note que você **não pode ser** Aspose.Words para alterar ou remover essas informações de documentos de saída.

{{% /alert %}}

## Propriedades do documento de acesso

Para acessar propriedades de documentos em Aspose.Words uso:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) para obter propriedades embutidas.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) para obter propriedades personalizadas.

**BuiltInDocumentProperties** e **CustomDocumentProperties** são coleções de [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) objetos. Estes objetos podem ser obtidos através da propriedade indexador pelo nome ou pelo índice.

**BuiltInDocumentProperties** Além disso, fornece acesso a propriedades documentais através de um conjunto de propriedades inseridas que retornam valores do tipo apropriado. **CustomDocumentProperties** permitir que você adicione ou remova as propriedades do documento de um documento.

O [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) classe permite que você obtenha o nome, valor e tipo de uma propriedade de documento. [Valor]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) retorna um objeto, mas há um conjunto de métodos que permitem que você obtenha o valor da propriedade convert para um tipo específico. Depois de saber que tipo a propriedade é, você pode usar um dos {0} métodos, tais como {1}[ToString]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) e **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), para obter o valor do tipo apropriado.

O exemplo de código a seguir mostra como enumerar todas as propriedades embutidas e personalizadas em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Em Microsoft Word, você pode acessar as propriedades do documento usando o menu "Arquivar → Propriedades".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Adicionar ou Remover Propriedades do Documento

Você não pode adicionar ou remover propriedades de documentos embutidas usando Aspose.Words. Você só pode alterar ou atualizar seus valores.

Para adicionar propriedades de documentos personalizadas com Aspose.Words, usar o [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) método, passando o novo nome de propriedade e o valor do tipo apropriado. O método retorna o recém-criado **DocumentProperty** objeto.

Para remover propriedades personalizadas, use o [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) método, passando o nome da propriedade para remover, ou o [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) método para remover a propriedade por índice. Você também pode remover todas as propriedades usando o [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) método.

O exemplo de código a seguir verifica se uma propriedade personalizada com um determinado nome existe em um documento e adiciona algumas propriedades de documento mais personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como remover uma propriedade de documento personalizado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Atualização de Propriedades de Documentos embutidos

Aspose.Words não atualiza automaticamente as propriedades do documento, como Microsoft Word faz com algumas propriedades, mas fornece um método para atualizar algumas propriedades de documentos embutidas estatísticas. Chama a atenção [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) método para recalcular e atualizar as seguintes propriedades:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Criar uma nova propriedade personalizada ligada ao conteúdo

Aspose.Words fornece o [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) método para criar uma nova propriedade de documento personalizado ligada ao conteúdo. Esta propriedade retorna o objeto de propriedade recém-criado ou null se o [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) é inválido.

O exemplo de código a seguir mostra como configurar um link para uma propriedade personalizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Obter Variáveis de Documento

Você pode obter uma coleção de variáveis de documento usando o [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) propriedade. Nomes e valores variáveis são strings.

O exemplo de código a seguir mostra como enumerar variáveis de documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Remover Informações Pessoais do Documento

Se você quiser compartilhar um documento do Word com outras pessoas, você pode querer remover informações pessoais, como nome do autor e empresa. Para fazer isso use o [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) propriedade para definir a bandeira indicando que Microsoft Word removerá todas as informações do usuário de comentários, revisões e propriedades do documento ao salvar o documento.

{{% alert color="primary" %}}

Definir esta opção não realmente remover informações pessoais durante o processamento de um documento em Aspose.Words e afeta apenas o Microsoft Word comportamento.

{{% /alert %}}
