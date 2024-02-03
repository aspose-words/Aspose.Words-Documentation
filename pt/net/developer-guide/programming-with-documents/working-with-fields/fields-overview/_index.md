---
title: Visão geral dos campos em C#
second_title: Aspose.Words para .NET
articleTitle: Visão geral dos campos
linktitle: Visão geral dos campos
description: "Os campos são apresentados em detalhes, códigos de campo e resultados de campo explicados em Aspose.Words para .NET."
type: docs
weight: 10
url: /pt/net/fields-overview/
---

Aspose.Words é uma biblioteca de classes projetada para processamento de documentos Microsoft Word no servidor e oferece suporte a campos das seguintes maneiras:

- todos os campos de um documento são preservados durante a abertura/salvamento e conversões
- é possível atualizar os resultados da maioria dos campos

Neste artigo, aprenderemos mais sobre a estrutura dos campos, os campos suportados no Aspose.Words e detalhes de como trabalhar com tais campos.

## Estrutura de campo

Um campo consiste em:

- Os nós de início de campo e separadores são usados para abranger o conteúdo que compõe o código de campo (normalmente como texto simples).
- O separador de campo e o final do campo abrangem o resultado do campo. Isso pode ser composto de vários tipos de conteúdo, desde trechos de texto até parágrafos e tabelas.
- Alguns campos podem não ter separador, o que significa que todo o conteúdo constitui o código do campo.
- O código do campo define o comportamento do campo e é composto pelo identificador do campo e, muitas vezes, por outros parâmetros, como nome do campo e opções.
- O resultado do campo contém a avaliação mais recente do campo. Este valor é armazenado no resultado do campo e é o que é exibido ao usuário. Alguns campos podem não ter nenhum resultado de campo, portanto, não exibirão nada no documento. Da mesma forma, alguns campos podem ainda não estar atualizados, portanto também não terão resultado de campo.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

O conteúdo que compõe o código do campo é armazenado como nós [Run](https://reference.aspose.com/words/net/aspose.words/run/) entre o [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) e o [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). O resultado do campo é armazenado entre os nós **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) e pode ser composto por vários tipos de conteúdo. Normalmente o resultado do campo contém apenas texto composto por nós **Run**, porém é possível que o nó **FieldEnd** esteja localizado em um parágrafo completamente diferente, tornando o resultado do campo composto também por [Níveis lógicos de nós em um documento](/words/pt/net/logical-levels-of-nodes-in-a-document/) como **Table** e **Paragraph** nós.

Aqui está uma visão de como um campo é armazenado em Aspose.Words usando o exemplo "*DocumentExplorer"* que pode ser encontrado em [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Campos no Aspose.Words Document Object Model (DOM)

Quando um documento é carregado no Aspose.Words, os campos do documento são carregados no [Aspose.Words Document Object Model (DOM)](/words/pt/net/aspose-words-document-object-model/) como um conjunto de componentes separados (nós). Um único campo é carregado como uma coleção de nós **FieldStart**, **FieldSeparator** e **FieldEnd** junto com o conteúdo entre esses nós. Se um campo não tiver um resultado de campo, não haverá nó **FieldSeparator**. Todos esses nós são sempre encontrados em linha (como filhos de [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

No Aspose.Words, cada um dos nós **FieldXXX** deriva de [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Esta classe fornece uma propriedade para verificar o tipo de campo representado pelo nó especificado através da propriedade [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Por exemplo, **FieldType.FieldMergeField** representa um campo de mesclagem no documento.

{{% alert color="primary" %}}

Existem alguns campos específicos em um documento do Word que não são importados para Aspose.Words como uma coleção de nós **FieldXXX**. Por exemplo, o campo `LINK` e o campo `INCLUDEPICTURE` são importados para Aspose.Words como um objeto [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). Este objeto fornece propriedades para trabalhar com os dados de imagem normalmente armazenados nesses campos. Para importar campos `INCLUDEPICTURE` como nós **FieldXXX**, a opção [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) deve ser especificada como **true**.

Os campos do formulário também são importados para o Aspose.Words como sua própria classe especial. A classe [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) representa um campo de formulário em um documento do Word e fornece métodos adicionais específicos de um campo de formulário.

{{% /alert %}}

## Campos Suportados

O cálculo dos seguintes campos é suportado na versão atual do Aspose.Words:

- = (fórmula)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Análise de campo sofisticada

Aspose.Words segue a forma como o Microsoft Word processa os campos e como resultado ele trata corretamente:

- campos aninhados:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumento de campo pode ser resultado de um campo aninhado
- os campos podem ser aninhados dentro de um código de campo, bem como no resultado do campo
- espaços/sem espaços, aspas/sem aspas, caracteres de escape em campos etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abrangem vários parágrafos

### Campos de Fórmula

Aspose.Words fornece uma implementação muito séria do mecanismo de fórmula e oferece suporte ao seguinte:

- operadores aritméticos e lógicos:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funções:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referências a marcadores:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- opções de formatação de números:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

As seguintes funções em expressões são suportadas: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Campos `IF` e `COMPARE`

Apenas algumas das expressões `IF` que o Aspose.Words pode calcular facilmente devem dar uma ideia de quão poderoso é esse recurso:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Campos `DATE` e `TIME`

Aspose.Words suporta todas as opções de formatação de data e hora disponíveis em Microsoft Word, alguns exemplos são:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Campos Mail Merge

Aspose.Words não impõe limites à complexidade dos campos mail merge em seus documentos e oferece suporte a campos `IF` e de fórmula aninhados e pode até calcular o nome do campo de mesclagem usando uma fórmula.

Alguns exemplos de campos mail merge compatíveis com Aspose.Words:

- Alternadores de campo Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campos de mesclagem aninhados em uma fórmula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcule o nome do campo de mesclagem em tempo de execução:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- movimento condicional para o próximo registro na fonte de dados:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Opções de formato

Um campo em um documento pode ter opções de formatação que especificam como o valor resultante deve ser formatado. Aspose.Words oferece suporte às seguintes opções de formato:

- \\\@ – formatação de data e hora
- \\\# – formatação de números
- \\\* Cápsulas
- \\\* Primeiro Cap
- \\\* Mais baixo
- \\\* Superior
- \\\* CHARFORMAT – formata o resultado de acordo com o primeiro caractere do código do campo
- \\\* MERGEFORMAT – formata o resultado de acordo com a forma como o resultado antigo é formatado

### Date e formatação de números em campos

Quando o Aspose.Words calcula o resultado de um campo, muitas vezes ele precisa analisar uma string em um número ou valor de data e também formatá-la de volta para uma string. Por padrão, o Aspose.Words usa a cultura de thread atual para realizar análise e formatação ao calcular valores de campo durante a atualização do campo e mail merge. Também existem opções fornecidas na forma de classe [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) que permitem maior controle sobre qual cultura é usada durante a atualização do campo.

- por padrão, a propriedade [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) é definida como [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/), que formata os campos usando a cultura do thread atual
- esta propriedade pode ser definida como [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) para que o idioma definido no código do campo seja usado para formatação

### Formatando usando a cultura do thread atual

Para controlar a cultura usada durante o cálculo do campo, basta definir a propriedade **Thread.CurrentThread.CurrentCulture** para uma cultura de sua escolha antes de invocar o cálculo do campo.

O exemplo de código a seguir mostra como alterar a cultura usada na formatação de campos durante a atualização:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Usar a cultura atual para formatar campos permite que um sistema controle de forma fácil e consistente como todos os campos do documento são formatados durante a atualização do campo.

### Formatando usando a cultura no documento

Por outro lado, o Microsoft Word formata cada campo individual com base no idioma do texto encontrado no campo (especificamente, as execuções do código do campo). Às vezes, durante a atualização do campo, esse pode ser o comportamento desejado, por exemplo, se você tiver documentos globalizados contendo conteúdo composto de vários idiomas diferentes e quiser que cada campo respeite a localidade usada no texto. Aspose.Words também oferece suporte a essa funcionalidade.

A classe [Document](https://reference.aspose.com/words/net/aspose.words/document/) fornece uma propriedade [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) que contém membros que podem ser usados para controlar como os campos são atualizados no documento.

O exemplo de código a seguir mostra como especificar onde a cultura usada para formatação de data durante a atualização do campo e mail merge é escolhida:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
