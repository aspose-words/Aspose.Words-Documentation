---
title: Substituir campos com texto Java
second_title: Aspose.Words para Java
articleTitle: Substituir campos com texto estático
linktitle: Substituir campos com texto estático
description: "Saiba como substituir campos com texto em Java. Substituir campos com dados estáticos usando o Java API."
type: docs
weight: 37
url: /pt/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Os campos de substituição são frequentemente necessários quando você deseja salvar seu documento como uma cópia estática. Por exemplo, ao enviar como anexo em um e-mail. Converter campos como `DATE` ou `TIME` para o texto estático permitirá que o documento exiba a mesma data que quando foi enviado. Além disso, em algumas situações, você pode precisar remover o condicional `IF` campos do seu documento e substituí-los pelo resultado de texto mais recente. Por exemplo, convertendo o resultado do `IF` campo para texto estático para que ele não vai mais alterar dinamicamente seu valor quando os campos no documento são atualizados.

O diagrama abaixo mostra como o `IF` campo é armazenado em um documento:

* o texto é cercado pelos nós de campo especiais – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) nó separa o texto dentro do campo no código de campo e resultado de campo
* o código de campo define o comportamento geral do campo, enquanto o resultado do campo mantém o resultado mais recente quando este campo é atualizado usando Microsoft Word ou Aspose.Words
* o resultado do campo é o que é armazenado no campo e exibido no documento quando visto

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

A estrutura também pode ser vista abaixo em forma hierárquica usando o projeto demo **“DocumentExplorer”**, que navios com o **Aspose.Words** instalador.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Campos que não podem ser substituídos por texto

Substituir um campo com texto estático não funciona corretamente para alguns campos em um cabeçalho ou rodapé.

Por exemplo, tentando converter o `PAGE` campo em um cabeçalho ou rodapé para texto estático resultará no mesmo valor sendo exibido em todas as páginas. Isso ocorre porque cabeçalhos e rodapés são repetidos em várias páginas, e quando eles permanecem como campos, eles são tratados especialmente para que eles exibam o resultado correto para cada página.

No entanto, no cabeçalho, o `PAGE` campo traduz bem para a execução estática de texto. Esta execução de texto será avaliada como se fosse a última página na seção, o que causará qualquer `PAGE` campo no cabeçalho para exibir a última página em todas as páginas.

O exemplo de código a seguir mostra como substituir o campo com seu resultado mais recente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Converta determinados tipos de campo em peças específicas do documento

Desde o **ConvertFieldsToStaticText** método aceita dois parâmetros – o [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) propriedades e [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumeração, é possível passar qualquer nó composto para este método. Isso permite que os campos sejam convertidos em texto estático apenas em partes específicas do documento.

Por exemplo, você pode passar um [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto e converter campos do tipo especificado de todo o documento para texto estático, ou você pode passar um [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) objeto de uma seção e apenas converter os campos encontrados nesse corpo.

{{% alert color="primary" %}}

Ao passar um nó de nível de bloco, como um [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), estar ciente de que, em alguns casos, os campos podem abranger vários parágrafos. Se isso acontecer, recomenda-se passar o pai do composto para evitar isso.

{{% /alert %}}

O [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumeração passada para o **ConvertFieldsToStaticText** método especifica que tipo de campos devem ser convertidos em texto estático. Qualquer outro tipo de campo encontrado no documento permanecerá inalterado.

O exemplo de código a seguir mostra como selecionar campos de um tipo específico – *targetFieldType* em um nó específico – *compositeNode* e, em seguida, convertê-los em texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

O seguinte exemplo de código mostra como converter todos `IF` campos em um documento para texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

O seguinte exemplo de código mostra como converter todos `PAGE` campos em um corpo de um documento para texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

O seguinte exemplo de código mostra como converter todos `IF` campos no último parágrafo ao texto estático:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
