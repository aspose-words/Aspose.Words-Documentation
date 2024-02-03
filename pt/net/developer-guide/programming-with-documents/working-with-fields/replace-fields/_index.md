---
title: Substituir Campos C#
second_title: Aspose.Words para .NET
articleTitle: Substitua campos por texto estático
linktitle: Substitua campos por texto estático
description: "Aprenda como substituir campos por texto em C#. Substitua os campos por dados estáticos usando o API .NET."
type: docs
weight: 37
url: /pt/net/replace-fields/
---

A substituição de campos geralmente é necessária quando você deseja salvar seu documento como uma cópia estática. Por exemplo, ao enviar como anexo de um e-mail. A conversão de campos como `DATE` ou `TIME` em texto estático permitirá que o documento exiba a mesma data de quando foi enviado. Além disso, em algumas situações, pode ser necessário remover os campos `IF` condicionais do documento e substituí-los pelo resultado de texto mais recente. Por exemplo, converter o resultado do campo `IF` em texto estático para que seu valor não seja mais alterado dinamicamente quando os campos do documento forem atualizados.

O diagrama abaixo mostra como o campo `IF` é armazenado em um documento:

* o texto é cercado por nós de campo especiais – [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend)
* o nó [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) separa o texto dentro do campo no código do campo e no resultado do campo
* o código do campo define o comportamento geral do campo, enquanto o resultado do campo retém o resultado mais recente quando este campo é atualizado usando Microsoft Word ou Aspose.Words
* o resultado do campo é o que é armazenado no campo e exibido no documento quando visualizado

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

A estrutura também pode ser vista abaixo de forma hierárquica utilizando o [projeto de demonstração *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## Campos que não podem ser substituídos por texto

Substituir um campo por texto estático não funciona corretamente para alguns campos de cabeçalho ou rodapé.

Por exemplo, tentar converter o campo `PAGE` em um cabeçalho ou rodapé em texto estático resultará na exibição do mesmo valor em todas as páginas. Isso ocorre porque os cabeçalhos e rodapés são repetidos em várias páginas e, quando permanecem como campos, são tratados especialmente para exibir o resultado correto para cada página.

No entanto, no cabeçalho, o campo `PAGE` se traduz bem em execução estática de texto. Essa sequência de texto será avaliada como se fosse a última página da seção, o que fará com que qualquer campo `PAGE` no cabeçalho exiba a última página em todas as páginas.

O exemplo de código a seguir mostra como substituir o campo pelo resultado mais recente:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## Converter certos tipos de campos em partes específicas do documento

Como o método **ConvertFieldsToStaticText** aceita dois parâmetros – as propriedades [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) e a enumeração [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), é possível passar qualquer nó composto para este método. Isto permite que os campos sejam convertidos em texto estático apenas em partes específicas do documento.

Por exemplo, você pode passar um objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) e converter campos do tipo especificado de todo o documento em texto estático, ou pode passar um objeto [Body](https://reference.aspose.com/words/net/aspose.words/body/) de uma seção e converter apenas os campos encontrados nesse corpo.

{{% alert color="primary" %}}

Ao passar um nó em nível de bloco, como um [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), esteja ciente de que, em alguns casos, os campos podem abranger vários parágrafos. Se isso acontecer, é recomendado passar o pai do composto para evitar isso.

{{% /alert %}}

A enumeração [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) passada para o método **ConvertFieldsToStaticText** especifica que tipo de campo deve ser convertido em texto estático. Qualquer outro tipo de campo encontrado no documento permanecerá inalterado.

O exemplo de código a seguir mostra como selecionar campos de um tipo específico – *targetFieldType* em um nó específico – *compositeNode* e depois convertê-los em texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

O exemplo de código a seguir mostra como converter todos os campos `IF` de um documento em texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como converter todos os campos `PAGE` em um corpo de documento em texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

O exemplo de código a seguir mostra como converter todos os campos `IF` do último parágrafo em texto estático:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
