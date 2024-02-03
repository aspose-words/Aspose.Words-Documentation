---
title: Visão geral dos campos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Visão geral dos campos
linktitle: Visão geral dos campos
description: "Você pode acessar a modificação de campo usando Python. Os campos do documento são carregados no Document Object Model Aspose.Words (DOM)."
type: docs
weight: 10
url: /pt/python-net/fields-overview/
---


Normalmente um campo, quando inserido no Microsoft Word, já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, ele conterá um valor calculado correto para determinada versão do documento. Mas se você tiver um aplicativo que gera ou modifica um documento com campos (por exemplo, combina dois documentos ou preenche com dados), para que o documento seja útil, o ideal é que todos os campos sejam atualizados.

Um campo consiste em:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Os nós de início e separador de campo são usados para abranger o conteúdo que compõe o código do campo (normalmente como texto simples)
- O separador de campo e o final do campo abrangem o resultado do campo. Isso pode ser composto de vários tipos de conteúdo, desde trechos de texto até parágrafos e tabelas.
- Alguns campos podem não ter separador, o que significa que todo o conteúdo constitui o código do campo.
- O código do campo define o comportamento do campo e é composto pelo identificador do campo e, muitas vezes, por outros parâmetros, como nome do campo e opções.
- O resultado do campo contém a avaliação mais recente do campo. Este valor é armazenado no resultado do campo e é o que é exibido ao usuário. Alguns campos podem não ter nenhum resultado de campo, portanto, não exibirão nada no documento. Da mesma forma, alguns campos podem ainda não estar atualizados e portanto também não terão resultado de campo.

Aqui está uma visão de como um campo é armazenado em Aspose.Words usando o exemplo "*DocumentExplorer"* que pode ser encontrado em [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words é uma biblioteca de classes projetada para processamento de documentos Microsoft Word no servidor e oferece suporte a campos das seguintes maneiras:

- Todos os campos de um documento são preservados durante a abertura/salvamento e conversões.
- É possível atualizar resultados de alguns dos campos mais populares.

## Campos em Microsoft Word

Os campos em documentos Microsoft Word são complexos. Existem mais de 50 tipos de campos (cada um precisa de seu próprio procedimento de cálculo de resultados), fórmulas e expressões, marcadores e referências, funções e várias opções. Os campos também podem ser aninhados. Normalmente quando um documento é aberto, o resultado do campo (o valor do campo) é mostrado para todos os campos do documento. Você pode alternar a exibição do resultado do campo ou dos códigos de campo em Microsoft Word para todos os campos pressionando **ALT+F9**.

| Código de campo | Resultado do campo |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Inserindo campos em Microsoft Word

Para inserir um campo em Microsoft Word:

1. Clique no menu **Insert**.
1. Clique no menu suspenso **Quick Parts**
1. Selecione **Field**
1. É apresentada uma tela que permite inserir os detalhes do campo. No lado esquerdo você recebe uma lista dos campos possíveis e no lado direito uma tela para editar visualmente as propriedades do campo.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Além disso, você pode pressionar o botão **Field Codes** que permite escrever diretamente o código de campo.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Os switches também podem ser inseridos usando o botão **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Usando qualquer um dos métodos, preencha os campos desejados com as informações apropriadas e pressione **Ok**.
1. O campo é inserido no documento na posição atual do cursor.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Atualizando campos em Microsoft Word

Para atualizar um único campo em Microsoft Word:

1. Mova o cursor para o campo que deseja atualizar.
1. Pressione **F9** para atualizar o campo.

Para atualizar todos os campos em Microsoft Word:

1. Pressione **Ctrl+A** para selecionar todo o conteúdo do documento.
1. Pressione **F9** para atualizar todos os campos encontrados na seleção.

### Alternando entre exibição de código de campo e resultado de campo

Para alternar códigos de campo de um único campo em Microsoft Word:

1. Mova o cursor para o campo desejado.
1. Pressione **MUDANÇA+F9** para alternar o código de campo apenas para este campo.

Para alternar os códigos de campo de todos os campos em Microsoft Word:

1. Pressione **ALT+F9**

### Convertendo campos em texto estático em Microsoft Word

Para converter um campo dinâmico em texto estático em Microsoft Word:

1. Mova o cursor para o campo que deseja converter.
1. Pressione **Ctrl+Shift+F9** para converter os campos em texto estático.

### Removendo um campo em Microsoft Word

Para remover um campo em Microsoft Word:

1. Selecione todo o conteúdo que compõe o campo. Se os códigos de campo forem exibidos, as chaves de abertura e final também deverão ser selecionadas.
1. Pressione **Delete** para remover todo o campo.

## Campos em Aspose.Words

Quando um documento é carregado no Aspose.Words, os campos do documento são carregados no Aspose.Words Document Object Model como um conjunto de componentes separados (nós). Um único campo é carregado como uma coleção de nós [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) junto com o conteúdo entre esses nós. Se um campo não tiver um resultado de campo, não haverá nó [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Todos esses nós são sempre encontrados em linha (como filhos de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

O conteúdo que compõe o código do campo é armazenado como nós [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) entre o [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) e o [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). O resultado do campo é armazenado entre os nós [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) e pode ser composto por vários tipos de conteúdo. Normalmente o resultado do campo contém apenas texto composto por nós [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), porém é possível que o nó [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) esteja localizado em um parágrafo completamente diferente, tornando o resultado do campo composto também por nós de nível de bloco, como nós [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

No Aspose.Words, cada um dos nós **FieldXXX** deriva de [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Esta classe fornece uma propriedade para verificar o tipo de campo representado pelo nó especificado através da propriedade [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Por exemplo, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) representa um campo de mesclagem no documento.

{{% alert color="primary" %}}

Existem alguns campos específicos em um documento do Word que não são importados para Aspose.Words como uma coleção de nós **FieldXXX**. Por exemplo, o campo `LINK` e o campo `INCLUDEPICTURE` são importados para Aspose.Words como um objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Este objeto fornece propriedades para trabalhar com os dados de imagem normalmente armazenados nesses campos.

Os campos do formulário também são importados para o Aspose.Words como sua própria classe especial. A classe [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) representa um campo de formulário em um documento do Word e fornece métodos adicionais específicos de um campo de formulário.

{{% /alert %}}

### Campos suportados durante a atualização

O cálculo dos seguintes campos é suportado na versão atual do Aspose.Words:

- = (campo de fórmula)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (incluindo TOT e TOF)
-TC

### Análise sofisticada

Aspose.Words segue a forma como o Microsoft Word processa os campos e como resultado ele trata corretamente:

- Campos aninhados
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- O argumento do campo pode ser resultado de um campo aninhado.
- Os campos podem ser aninhados dentro de um código de campo, bem como no resultado do campo.
- Espaços/sem espaços, aspas/sem aspas, caracteres de escape em campos etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Campos que abrangem vários parágrafos.

#### Campos de Fórmula

Aspose.Words fornece uma implementação muito séria do mecanismo de fórmula e oferece suporte ao seguinte:

- Operadores aritméticos e lógicos:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funções:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Referências a marcadores:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Opções de formatação de números:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

As seguintes funções em expressões são suportadas: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Campos `IF` e `COMPARE`

Apenas algumas das expressões `IF` que o Aspose.Words pode calcular facilmente devem dar uma ideia de quão poderoso é esse recurso:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Campos `DATE` e `TIME`

Aspose.Words suporta todas as opções de formatação de data e hora disponíveis em Microsoft Word, alguns exemplos são:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Campos Mail Merge

Aspose.Words não impõe limites à complexidade dos campos mail merge em seus documentos e oferece suporte a campos `IF` e de fórmula aninhados e pode até calcular o nome do campo de mesclagem usando uma fórmula.

Alguns exemplos de campos mail merge compatíveis com Aspose.Words:

- Alternadores de campo Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Campos de mesclagem aninhados em uma fórmula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Calcule o nome do campo de mesclagem em tempo de execução:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Movimento condicional para o próximo registro na fonte de dados:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Opções de formato

Um campo em um documento pode ter opções de formatação que especificam como o valor resultante deve ser formatado. Aspose.Words oferece suporte às seguintes opções de formato:

- @ - formatação de data e hora
- \\\# - formatação de números
- \\\\\\\\* Cápsulas
- \\\\\\\\* Primeira Cap
- \\\\\\\\* Mais baixo
- \\\\\\\\* Superior
- \\\\\\\\* CHARFORMAT – formata o resultado de acordo com o primeiro caractere do código do campo.
- \\\\\\\\* MERGEFORMAT – formata o resultado de acordo com a formatação do resultado antigo.

#### Date e formatação de números em campos

Quando o Aspose.Words calcula o resultado de um campo, muitas vezes ele precisa analisar uma string em um número ou valor de data e também formatá-la de volta para uma string. Por padrão, o Aspose.Words usa a cultura de thread atual para realizar a análise e formatação ao calcular valores de campo durante a atualização do campo e mail merge. Também existem opções fornecidas na forma de classe [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) que permitem maior controle sobre qual cultura é usada durante a atualização do campo.

- Por padrão a propriedade [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) é definida como [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) que formata os campos usando a cultura do thread atual.
- Esta propriedade pode ser definida como [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) para que o idioma definido no código do campo seja usado para formatação.

#### Formatando usando a cultura do thread atual

Para controlar a cultura usada durante o cálculo do campo, basta usar o método **locale.setlocale** para definir a cultura de sua escolha antes de invocar o cálculo do campo.
O exemplo abaixo mostra como alterar a cultura usada na formatação de campos durante a atualização.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Usar a cultura atual para formatar campos permite que um sistema controle de forma fácil e consistente como todos os campos do documento são formatados durante a atualização do campo.

#### Formatando usando a cultura no documento

Por outro lado, o Microsoft Word formata cada campo individual com base no idioma do texto encontrado no campo (especificamente, as execuções do código do campo). Às vezes, durante a atualização do campo, esse pode ser o comportamento desejado, por exemplo, se você tiver documentos globalizados contendo conteúdo composto de vários idiomas diferentes e quiser que cada campo respeite a localidade usada no texto. Aspose.Words também oferece suporte a essa funcionalidade.

A classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) fornece uma propriedade [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) que contém membros que podem ser usados para controlar como os campos são atualizados no documento. O exemplo abaixo mostra como especificar onde a cultura usada para formatação de data durante a atualização de campo e mail merge é escolhida.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Encontrando o código do campo e o resultado do campo

Um campo inserido usando [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) retorna um objeto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Esta é uma classe de fachada que fornece métodos úteis para encontrar rapidamente tais propriedades de um campo. Observe que se você estiver procurando apenas os nomes dos campos de mesclagem no documento, poderá usar o método interno [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). O exemplo abaixo mostra como obter nomes de todos os campos de mesclagem em um documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Como renomear campos de mesclagem

O exemplo abaixo mostra como renomear campos de mesclagem em um documento do Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
