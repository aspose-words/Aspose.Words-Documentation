---
title: Substituir campos por texto Java
second_title: Aspose.Words para Java
articleTitle: Substituir campos por texto estático
linktitle: Substituir campos por texto estático
description: "Saiba como substituir campos por texto em Java. Substitua os campos por dados estáticos utilizando o Java API."
type: docs
weight: 37
url: /pt/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

A substituição de Campos é frequentemente necessária quando pretende guardar o documento como uma cópia estática. Por exemplo, ao enviar como anexo em um e-mail. A conversão de campos como `DATE` ou `TIME` em texto estático permitirá que o documento exiba a mesma data em que foi enviado. Além disso, em algumas situações, pode ser necessário remover os campos condicionais `IF` do documento e substituí-los pelo resultado de texto mais recente. Por exemplo, converter o resultado do campo `IF` em texto estático para que ele não altere mais dinamicamente seu valor quando os campos no documento forem atualizados.

O diagrama abaixo mostra como o campo `IF` é armazenado em um documento:

* o texto está rodeado pelos nós de campo especiais - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* o nó [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) separa o texto dentro do campo no código do campo e no resultado do campo
* o código do campo define o comportamento geral do campo, enquanto o resultado do campo mantém o resultado mais recente quando este campo é atualizado usando Microsoft Word ou Aspose.Words
* o resultado do campo é o que é armazenado no campo e exibido no documento quando visualizado

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

A estrutura também pode ser vista abaixo em forma hierárquica usando o projeto de demonstração **"DocumentExplorer"**, que vem com o instalador **Aspose.Words**.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Campos que não podem ser substituídos por texto

Substituir um campo por texto estático não funciona corretamente para alguns campos em um cabeçalho ou rodapé.

Por exemplo, tentar converter o campo `PAGE` em um cabeçalho ou rodapé em texto estático resultará na exibição do mesmo valor em todas as páginas. Isso ocorre porque os cabeçalhos e rodapés são repetidos em várias páginas e, quando permanecem como campos, são tratados especialmente para exibir o resultado correto para cada página.

No entanto, no cabeçalho, o campo `PAGE` se traduz bem em execução estática de texto. Essa execução de texto será avaliada como se fosse a última página da seção, o que fará com que qualquer campo `PAGE` no cabeçalho exiba a última página sobre todas as páginas.

O exemplo de código a seguir mostra como substituir o campo pelo resultado mais recente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Converter certos tipos de campo em partes específicas do documento

Como o método **ConvertFieldsToStaticText** Aceita dois parâmetros-as propriedades [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) e a enumeração [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/), é possível passar qualquer nó composto para este método. Isso permite que os campos sejam convertidos em texto estático apenas em partes específicas do documento.

Por exemplo, você pode passar um objeto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e converter campos do tipo especificado de todo o documento para texto estático, ou você pode passar um objeto [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) de uma seção e converter apenas os campos encontrados nesse corpo.

{{% alert color="primary" %}}

Ao passar um nó em nível de bloco, como a [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), esteja ciente de que, em alguns casos, os campos podem se estender por vários parágrafos. Se isso acontecer, recomenda-se passar o pai do composto para evitar isso.

{{% /alert %}}

A enumeração [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) passada para o método **ConvertFieldsToStaticText** especifica que tipo de campos devem ser convertidos em texto estático. Qualquer outro tipo de campo encontrado no documento permanecerá inalterado.

O exemplo de código a seguir mostra como selecionar campos de um tipo específico – *targetFieldType* em um nó específico - *compositeNode* e depois convertê-los em texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

O exemplo de código a seguir mostra como converter todos os campos `IF` em um documento em texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

O exemplo de código a seguir mostra como converter todos os campos `PAGE` em um corpo de um documento em texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

O exemplo de código a seguir mostra como converter todos os campos `IF` no último parágrafo em texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
