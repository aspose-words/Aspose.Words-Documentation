---
title: Inserindo campos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Inserir campos
linktitle: Inserir campos
description: "Insira campos em um documento Python de diferentes maneiras: usando `DocumentBuilder` ou DOM (Document Object Model)."
type: docs
weight: 20
url: /pt/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

Existem várias maneiras diferentes de inserir campos em um documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- usando [Aspose.Words Document Object Model (DOM)](/words/pt/python-net/aspose-words-document-object-model/)

Neste artigo, veremos cada forma com mais detalhes e analisaremos como inserir determinados campos usando essas opções.

## Inserindo campos em um documento usando DocumentBuilder

No Aspose.Words o método [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) é usado para inserir novos campos em um documento. O primeiro parâmetro aceita o código completo do campo a ser inserido. O segundo parâmetro é opcional e permite que o resultado do campo seja definido manualmente. Se não for fornecido, o campo será atualizado automaticamente. Você pode passar nulo ou vazio para este parâmetro para inserir um campo com um valor de campo vazio. Se você não tiver certeza sobre a sintaxe do código de campo específico, crie primeiro o campo em Microsoft Word e mude para ver seu código de campo.

{{% alert color="primary" %}}

Se o seu código de campo tiver um parâmetro contendo um espaço, ele deverá ser colocado entre marcas de fala. Caso contrário, o campo em Microsoft Word e Aspose.Words pode não funcionar conforme o esperado, pois o parâmetro é tratado por ambos como truncado.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um campo de mesclagem em um documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

O exemplo de código a seguir mostra como inserir um campo de mesclagem com localidade alemã em um documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

A mesma técnica é usada para inserir campos aninhados em outros campos.

O exemplo de código a seguir mostra como inserir campos aninhados em outro campo usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Especifique o local no nível do campo

Um identificador de idioma é uma abreviatura numérica internacional padrão para o idioma de um país ou região geográfica. Com Aspose.Words, você pode especificar o local no nível do campo. A propriedade [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) obtém ou define o ID de localidade do campo.

O exemplo de código a seguir mostra como usar essa opção:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Inserir campo não digitado/vazio

Se você deseja inserir campos não digitados/vazios ({}) assim como o Microsoft Word permite, você pode usar o método [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) com o parâmetro [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). Para inserir um campo em um documento do Word, você pode pressionar a combinação de teclas "Ctrl + F9".

O exemplo de código a seguir mostra como inserir um campo vazio no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Inserindo campos em um documento usando FieldBuilder

A forma alternativa de inserir campos em Aspose.Words é a classe [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). Ele fornece uma interface fluente para especificar opções de campos e valores de argumentos como texto, nós ou até mesmo campos aninhados.

O exemplo de código a seguir mostra como inserir um campo em um documento usando **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Inserindo campos usando DOM

Você também pode inserir vários tipos de campos usando [Aspose.Words Document Object Model (DOM)](/words/pt/python-net/aspose-words-document-object-model/). Nesta seção, veremos alguns exemplos.

### Inserindo campo de mesclagem em um documento usando DOM

O campo `MERGEFIELD` em um documento Word pode ser representado pela classe [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). Você pode usar a classe [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) para realizar as seguintes operações:

- especifique o nome do campo de mesclagem
- especifique a formatação do campo de mesclagem
- especifique o texto que está entre o separador de campo e o final do campo de mesclagem
- especifique o texto a ser inserido após o campo de mesclagem se o campo não estiver em branco
- especifique o texto a ser inserido antes do campo de mesclagem se o campo não estiver em branco

O exemplo de código a seguir mostra como adicionar um campo `Merge` usando DOM a um parágrafo de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Inserindo campo Mail Merge `ADDRESSBLOCK` em um documento usando DOM

O campo `ADDRESSBLOCK` é usado para inserir um bloco de endereço Mail Merge em um documento Word. O campo `ADDRESSBLOCK` em um documento Word pode ser representado pela classe [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). Você pode usar a classe [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) para realizar as seguintes operações:

- especifique se deseja incluir o nome do país/região no campo
- especifique se deseja formatar o endereço de acordo com o país/região do destinatário conforme definido por POST*CODE (União Postal Universal 2006)
- especifique o nome do país/região excluído
- especifique o formato do nome e endereço
- especifique o ID do idioma usado para formatar o endereço

O exemplo de código a seguir mostra como adicionar o campo Mail Merge `ADDRESSBLOCK` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Inserindo campo `ADVANCE` em um documento sem usar DocumentBuilder

O campo `ADVANCE` é usado para deslocar o texto subsequente dentro de uma linha para a esquerda, direita, para cima ou para baixo. O campo `ADVANCE` em um documento Word pode ser representado pela classe [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). Você pode usar a classe [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) para realizar as seguintes operações:

- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido verticalmente a partir da borda superior da página
- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido horizontalmente a partir da borda esquerda da coluna, quadro ou caixa de texto
- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido para a esquerda, direita, para cima ou para baixo

O exemplo de código a seguir mostra como adicionar o campo `ADVANCE` usando DOM a um parágrafo em um documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Inserindo campo `ASK` em um documento sem usar DocumentBuilder

O campo `ASK` é usado para solicitar ao usuário o texto a ser atribuído a um marcador no documento do Word. O campo `ASK` em um documento Word pode ser representado pela classe [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). Você pode usar a classe **FieldAsk** para executar as seguintes operações:

- especifique o nome do marcador
- especifique a resposta padrão do usuário (valor inicial contido na janela de prompt)
- especifique se a resposta do usuário deve ser recebida uma vez por operação mail merge
- especifique o texto do prompt (o título da janela do prompt)

O exemplo de código a seguir mostra como adicionar o campo `ASK` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Inserindo campo `AUTHOR` em um documento sem usar DocumentBuilder

O campo `AUTHOR` é utilizado para especificar o nome do autor do documento nas propriedades `Document`. O campo `AUTHOR` em um documento Word pode ser representado pela classe [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). Você pode usar a classe **FieldAuthor** para realizar as seguintes operações:

- especifique o nome do autor do documento

O exemplo de código a seguir mostra como adicionar o campo `AUTHOR` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Inserindo campo `INCLUDETEXT` em um documento sem usar DocumentBuilder

O campo `INCLUDETEXT` insere o texto e os gráficos contidos no documento nomeado no código do campo. Você pode inserir o documento inteiro ou uma parte do documento referenciado por um marcador. Este campo no documento Word é representado por INCLUDETEXT. Você pode usar a classe [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) para realizar as seguintes operações:

- especifique o nome do marcador do documento incluído
- especifique a localização do documento

O exemplo de código a seguir mostra como adicionar o campo `INCLUDETEXT` usando DOM a um parágrafo de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Inserindo campo `TOA` em um documento sem usar DocumentBuilder

O campo `TOA` (*Tabela de Autoridades*) cria e insere uma tabela de autoridades. O campo `TOA` coleta entradas marcadas por campos `TA` (*Table of Authorities Entry*). Microsoft Office Word insere o campo `TOA` quando você clica em *Inserir tabela de autoridades* no grupo **Tabela de Autoridades** na guia **References**. Quando você visualiza o campo `TOA` em seu documento, a sintaxe fica assim:

{ `TOA` [Switches ] }

Você pode usar a classe [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) para realizar as operações com o campo `TOA`.

O exemplo de código a seguir mostra como adicionar o campo `TOA` usando DOM a um parágrafo de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
