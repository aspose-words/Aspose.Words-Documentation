---
title: Inserir Campos em C++
second_title: Aspose.Words para C++
articleTitle: Inserir Campos
linktitle: Inserir Campos
description: "Diferentes maneiras de inserir campos em seu documento usando C++."
type: docs
weight: 20
url: /pt/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Existem várias maneiras diferentes de inserir campos em um documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- utilização [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/cpp/aspose-words-document-object-model/)

Neste artigo, examinaremos cada forma com mais detalhes e analisaremos como inserir determinados campos usando essas opções.

## Inserir campos num documento utilizando DocumentBuilder

Em Aspose.Words o método [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) é utilizado para inserir novos campos num documento. O primeiro parâmetro aceita o código de campo completo do campo a inserir. O segundo parâmetro é opcional e permite que o resultado do campo seja definido manualmente. Se isso não for fornecido, o campo é atualizado automaticamente. Você pode passar null ou empty para este parâmetro para inserir um campo com um valor de campo vazio. Se você não tiver certeza sobre a sintaxe do código de campo específico, crie o campo em Microsoft Word Primeiro e alterne para ver seu código de campo.

{{% alert color="primary" %}}

Se o seu código de campo tiver um parâmetro contendo um espaço, ele deve ser colocado dentro de marcas de fala. Caso contrário, o campo em Microsoft Word e Aspose.Words pode não funcionar como esperado, pois o parâmetro é tratado por ambos como truncado

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um campo de mesclagem em um documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

A mesma técnica é usada para inserir campos aninhados em outros campos.

O exemplo de código a seguir mostra como inserir campos aninhados em outro campo usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Especificar localidade ao nível do campo

Um identificador de idioma é uma abreviatura numérica internacional padrão para o idioma em um país ou região geográfica. Com Aspose.Words, você pode especificar a localidade no nível do campo usando a propriedade [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), que obtém ou define a localidade do campo ID.

O exemplo de código a seguir mostra como usar essa opção:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Inserir Campo Não Digitado / Vazio

Se você deseja inserir campos não digitados / vazios ({}) da mesma forma que Microsoft Word permite, você pode usar o método [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) com o parâmetro [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Para inserir um campo em um documento do Word, você pode pressionar a combinação de teclas "Ctrl + F9".

O exemplo de código a seguir mostra como inserir um campo vazio no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Inserir campos num documento utilizando FieldBuilder

A forma alternativa de inserir campos em Aspose.Words é a classe [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Ele fornece interface fluente para especificar comutadores de campo e valores de argumento como texto, nós ou mesmo campos aninhados.

O exemplo de código a seguir mostra como inserir um campo em um documento usando **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Inserir Campos utilizando DOM

Você também pode inserir vários tipos de campos usando [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/cpp/aspose-words-document-object-model/). Nesta secção, veremos alguns exemplos.

### Inserindo o campo de mesclagem em um documento usando DOM

O campo `MERGEFIELD` no documento do Word pode ser representado pela classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Você pode usar a classe **FieldMergeField** para executar as seguintes operações:

- especifique o nome do campo de mesclagem
- especifique a formatação do campo de mesclagem
- especifique o texto que está entre o separador de campo e o fim do campo do campo de mesclagem
- especifique o texto a ser inserido após o campo de mesclagem se o campo não estiver em branco
- especifique o texto a ser inserido antes do campo de mesclagem se o campo não estiver em branco

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `MERGE` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserir Mail Merge campo de bloco de endereços num documento utilizando DOM

O campo `ADDRESSBLOCK` é utilizado para inserir um bloco de endereços Mail Merge num documento do Word. O campo `ADDRESSBLOCK` no documento do Word pode ser representado pela classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Você pode usar a classe **FieldAddressBlock** para executar as seguintes operações:

- especificar se deve incluir o nome do país / região no campo
- especificar se deve formatar o endereço de acordo com o país / região do destinatário, tal como definido em POST * CODE (União Postal Universal 2006)
- especificar o nome do país/região excluído
- especificar o nome e o formato do endereço
- especificar o idioma ID utilizado para formatar o endereço

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo Mail Merge `ADDRESSBLOCK` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserir um campo avançado num documento sem utilizar DocumentBuilder

O campo `ADVANCE` é utilizado para deslocar o texto subsequente dentro de uma linha à esquerda, à direita, para cima ou para baixo. O campo `ADVANCE` no documento do Word pode ser representado pela classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Você pode usar a classe FieldAdvance para executar as seguintes operações:

- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido verticalmente a partir da borda superior da página
- especifique o número de pontos pelos quais o texto que segue o campo deve ser movido horizontalmente a partir da borda esquerda da coluna, quadro ou caixa de texto
- especificar o número de pontos pelos quais o texto que segue o campo deve ser movido para a esquerda, direita, para cima ou para baixo

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `ADVANCE` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserir o campo `ASK` num documento sem utilizar DocumentBuilder

O campo `ASK` é utilizado para solicitar ao utilizador que o texto atribua a um marcador no documento do Word. O campo `ASK` no documento do Word pode ser representado pela classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Você pode usar a classe **FieldAsk** para executar as seguintes operações:

- especifique o nome do marcador
- especifique a resposta padrão do Usuário (valor inicial contido na janela do prompt)
- especificar se a resposta do utilizador deve ser recebida uma vez por uma operação mail merge
- especifique o texto do prompt (O título da janela do prompt)

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `ASK` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserir o campo `AUTHOR` num documento sem utilizar DocumentBuilder

O campo `AUTHOR` é utilizado para especificar o nome do autor do documento a partir das propriedades `Document`. O campo `AUTHOR` no documento do Word pode ser representado pela classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Você pode usar a classe **FieldAuthor** para executar as seguintes operações:

- especificar o nome do autor do documento

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `AUTHOR` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserir o campo `INCLUDETEXT` num documento sem utilizar DocumentBuilder

O campo `INCLUDETEXT` insere o texto e os gráficos contidos no documento indicado no código do campo. Pode inserir o documento inteiro ou uma parte do documento referido por um marcador. Este campo no documento do Word é representado por INCLUDETEXT. Você pode usar a classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) para executar as seguintes operações:

- especifique o nome do marcador do documento incluído
- especificar a localização do documento

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `INCLUDETEXT` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Inserir o campo `TOA` num documento sem utilizar DocumentBuilder

O campo `TOA` (*Table of Authorities*) cria e insere uma tabela de autoridades. O campo `TOA` recolhe entradas marcadas por campos `TA` (*Table of Authorities Entry*). O Microsoft Office Word insere o campo `TOA` quando clica em *Insert Table of Authorities* no grupo **Table of Authorities** no separador **References**. Quando visualiza o campo `TOA` no documento, a sintaxe é semelhante a esta:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Para obter mais detalhes, consulte a classe [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar o campo `TOA` usando DOM a um parágrafo em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
