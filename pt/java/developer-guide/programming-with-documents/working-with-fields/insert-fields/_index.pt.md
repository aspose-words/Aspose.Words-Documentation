---
title: Inserir campos em Java
second_title: Aspose.Words para Java
articleTitle: Inserir campos
linktitle: Inserir campos
description: "Diferentes maneiras de inserir campos em seu documento usando Java."
type: docs
weight: 20
url: /pt/java/insert-fields/
---

Existem várias maneiras diferentes de inserir campos em um documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- usando [Aspose.Words Document Object Model (DOM)](/words/pt/java/aspose-words-document-object-model/)

Neste artigo, vamos olhar cada vez mais detalhadamente e analisar como inserir determinados campos usando essas opções.

## Inserindo campos em um documento usando DocumentBuilder

Em Aspose.Words o [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) método é usado para inserir novos campos em um documento. O primeiro parâmetro aceita o código de campo completo do campo a ser inserido. O segundo parâmetro é opcional e permite que o resultado de campo do campo seja definido manualmente. Se isso não for fornecido, então o campo é atualizado automaticamente. Você pode passar nulo ou vazio para este parâmetro para inserir um campo com um valor de campo vazio. Se você não tem certeza sobre a sintaxe do código de campo em particular, crie o campo em Microsoft Word primeiro e mudar para ver seu código de campo.

{{% alert color="primary" %}}

Se o seu código de campo tiver um parâmetro contendo um espaço, ele deve ser fechado dentro das marcas de fala. Caso contrário, o campo em ambos Microsoft Word e Aspose.Words pode não funcionar como esperado como o parâmetro é tratado por ambos como sendo truncado.

{{% /alert %}}

O exemplo a seguir mostra como inserir um campo de mesclagem em um documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

A mesma técnica é usada para inserir campos aninhados em outros campos.

O exemplo de código a seguir demonstra como inserir campos aninhados em outro campo usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Especificar Locale no Nível de Campo

Um identificador de idioma é uma abreviatura numérica internacional padrão para a língua em um país ou região geográfica. Com Aspose.Words, você pode especificar o Locale no nível de campo usando o [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) propriedade, que recebe ou define o ID local do campo.

O exemplo de código a seguir mostra como usar esta opção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Inserir campo não digitado / vazio

Se você quiser inserir campos não digitados / vazios ({}) apenas como Microsoft Word permite, você pode usar o [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) método com o [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) parâmetro. Para inserir um campo em um documento do Word, você pode pressionar a combinação de teclas "Ctrl + F9".

O exemplo de código a seguir mostra como inserir um campo vazio no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Inserção `COMPARE` Campo

O `COMPARE` campo compara dois valores e retorna o valor numérico 1 se a comparação for true ou 0 se a comparação for false.

O seguinte exemplo de código mostra como adicionar `COMPARE` campos usando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Inserção `IF` Campo

O `IF` campo pode ser usado para avaliar argumentos condicionalmente.

O seguinte exemplo de código mostra como adicionar `IF` campos usando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserindo campos em um documento usando FieldBuilder

A maneira alternativa de inserir campos em Aspose.Words é o [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) classe. Ele fornece interface fluente para especificar switches de campo e valores de argumento como texto, nós ou mesmo campos aninhados.

O exemplo de código a seguir mostra como inserir um campo em um documento usando **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Inserindo campos usando DOM

Você também pode inserir vários tipos de campos usando [Aspose.Words Document Object Model (DOM)](/words/pt/java/aspose-words-document-object-model/). Nesta seção, vamos ver alguns exemplos.

### Inserindo fusão Campo em um documento usando DOM

`MERGEFIELD` campo no documento do Word pode ser representado pelo [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) classe. Você pode usar **FieldMergeField** classe para executar as seguintes operações:

- especifique o nome do campo de fusão
- especifique a formatação do campo de mesclagem
- especifique o texto que está entre o separador de campo e a extremidade de campo do campo de mesclagem
- especifique o texto a ser inserido após o campo de mesclagem se o campo não estiver em branco
- especifique o texto a ser inserido antes do campo de mesclagem se o campo não estiver em branco

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `MERGE` campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserção Mail Merge `ADDRESSBLOCK` campo em um documento usando DOM

O `ADDRESSBLOCK` campo é usado para inserir um mail merge bloco de endereço em um documento do Word. `ADDRESSBLOCK` campo no documento do Word pode ser representado pelo [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) classe. Você pode usar **FieldAddressBlock** classe para executar as seguintes operações:

- especificar se deve incluir o nome do país/região no campo
- especifique se deve formatar o endereço de acordo com o país/região do destinatário conforme definido pelo POST*CODE (Universal Postal Union 2006)
- especificar o nome do país/região excluído
- especifique o nome e o formato de endereço
- especifique o ID de idioma usado para formatar o endereço

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar Mail Merge `ADDRESSBLOCK` Campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserção `ADVANCE` campo em um documento sem usar DocumentBuilder

O `ADVANCE` campo é usado para compensar o texto subsequente dentro de uma linha para a esquerda, direita, para cima ou para baixo. `ADVANCE` campo no documento do Word pode ser representado pelo [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) classe. Você pode usar o **FieldAdvance** classe para executar as seguintes operações:

- especificar o número de pontos pelos quais o texto que segue o campo deve ser movido verticalmente a partir da borda superior da página
- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido horizontalmente da borda esquerda da coluna, quadro ou caixa de texto
- especificar o número de pontos pelos quais o texto que segue o campo deve ser movido esquerda, direita, para cima ou para baixo

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `ADVANCE` Campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserção `ASK` campo em um documento sem usar DocumentBuilder

O `ASK` campo é usado para levar o usuário para o texto para atribuir a um Bookmark no documento do Word. `ASK` campo no documento do Word pode ser representado pelo [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) classe. Você pode usar **FieldAsk** classe para executar as seguintes operações:

- especifique o nome do marcador
- especifique a resposta do usuário padrão (valor inicial contido na janela do prompt)
- especifique se a resposta do usuário deve ser recebida uma vez por uma mail merge operação
- especifique o texto de prompt (o título da janela de prompt)

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `ASK` Campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserção `AUTHOR` campo em um documento sem usar DocumentBuilder

O `AUTHOR` campo é usado para especificar o nome do autor do documento do `Document` propriedades. `AUTHOR` campo no documento do Word pode ser representado pelo [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) classe. Você pode usar **FieldAuthor** classe para executar as seguintes operações:

- especifique o nome do autor do documento

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `AUTHOR` Campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserção `INCLUDETEXT` campo em um documento sem usar DocumentBuilder

O `INCLUDETEXT` campo insere o texto e os gráficos contidos no documento chamado no código de campo. Você pode inserir todo o documento ou uma parte do documento referido por um marcador. Este campo no documento do Word é representado pelo INCLUDETEXT. Você pode usar [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe para executar as seguintes operações:

- especifique o nome do marcador de documento incluído
- especificar a localização do documento

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `INCLUDETEXT` campo usando DOM para um parágrafo em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserção `TOA` campo em um documento sem usar DocumentBuilder

O `TOA` (* Tabela de Autoridades*) campo constrói e insere uma tabela de autoridades. O `TOA` campo recolhe entradas marcadas por `TA` (* Tabela de Entrada de Autoridades*) campos. Microsoft Office Word insere o `TOA` campo quando você clica *Inserir tabela de autoridades* no **Quadro das Autoridades** grupo sobre o **References** Aba. Quando você vê o `TOA` campo em seu documento, a sintaxe parece assim:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Para mais detalhes, consulte o [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) classe API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar `TOA` campo usando DOM para um parágrafo em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
