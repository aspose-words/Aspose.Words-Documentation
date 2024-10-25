---
title: Visão geral dos campos Em C++
second_title: Aspose.Words para C++
articleTitle: Visão Geral Dos Campos
linktitle: Visão Geral Dos Campos
description: "Os campos figuram em pormenores, códigos de campo e resultados de campo explicados em Aspose.Words para C++."
type: docs
weight: 10
url: /pt/cpp/fields-overview/
---

Aspose.Words é uma biblioteca de classes concebida para o processamento do lado do servidor de Microsoft Word documentos e suporta campos das seguintes formas:

- todos os campos de um documento são preservados durante a abertura / salvamento e as conversões
- é possível atualizar os resultados da maioria dos Campos

Neste artigo, aprenderemos mais sobre a estrutura do campo, os campos suportados em Aspose.Words e detalhes do trabalho com esses campos.

## Estrutura Dos Campos

Um campo consiste em:

- Os nós de início de campo e separador são utilizados para abranger o conteúdo que compõe o código de campo (normalmente como texto simples).
- O separador de campo e a extremidade do campo abrangem o resultado do campo. Isto pode ser constituído por vários tipos de conteúdos, desde séries de texto a parágrafos e tabelas.
- Alguns campos podem não ter um separador, O que significa que todo o conteúdo compõe o código do campo.
- O código de campo define o comportamento do campo e é composto pelo identificador de campo e, muitas vezes, outros parâmetros, como nomes de campo e comutadores.
- O resultado do campo contém a avaliação mais recente do campo. Este valor é armazenado no campo Resultado e é o que é apresentado ao utilizador. Alguns campos podem não ter nenhum resultado de campo, portanto, não exibirão nada no documento. Da mesma forma, alguns campos podem ainda não ser actualizados, pelo que também não terão qualquer resultado de campo.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

O conteúdo que compõe o código do campo é armazenado como nós [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) entre [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) e [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). O resultado do campo é armazenado entre os nós **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) e pode ser composto por vários tipos de conteúdo. Normalmente, o resultado do campo contém apenas texto composto por nós **Run**, no entanto, é possível que o nó **FieldEnd** esteja localizado em um parágrafo completamente diferente, tornando assim o resultado do campo composto por [nós de nível de bloco](/words/cpp/logical-levels-of-nodes-in-a-document/) como **Table** e **Paragraph** Nós também.

Aqui está uma visão de como um campo é armazenado em Aspose.Words usando o exemplo "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Campos no modelo de objecto do documento Aspose.Words (DOM)

Quando um documento é carregado em Aspose.Words, os campos do documento são carregados no [Aspose.Words Modelo Do Objecto Do Documento](/words/cpp/aspose-words-document-object-model/) como um conjunto de componentes separados (nós). Um único campo é carregado como uma coleção de nós **FieldStart**, **FieldSeparator** e **FieldEnd** juntamente com o conteúdo entre esses nós. Se um campo não tiver um resultado de campo, não haverá nó **FieldSeparator**. Todos esses nós são sempre encontrados inline (como filhos de [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) ou [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

Em Aspose.Words cada um dos **FieldXXX** nós deriva de [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Esta classe fornece uma propriedade para verificar o tipo de campo representado pelo nó especificado através da propriedade [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Por exemplo, **FieldType.FieldMergeField** representa um campo de mesclagem no documento.

{{% alert color="primary" %}}

Existem alguns campos específicos que existem em um documento do Word que não são importados para Aspose.Words como uma coleção de **FieldXXX** nós. Por exemplo, os Campos `LINK` e `INCLUDEPICTURE` são importados para Aspose.Words como um objecto `Shape`. Este objeto fornece propriedades para trabalhar com os dados de imagem normalmente armazenados nesses campos. Para importar o campo `INCLUDEPICTURE` como nós **FieldXXX**, a opção [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) deve ser especificada como **true**.

Os campos de formulário também são importados para Aspose.Words Como sua própria classe especial. A classe [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) representa um campo de formulário em um documento do Word e fornece métodos adicionais que são específicos para um campo de formulário.

{{% /alert %}}

## Campos Suportados

O cálculo dos seguintes campos é suportado na versão actual de Aspose.Words:

- = (fórmula)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Análise De Campo Sofisticada

Aspose.Words segue a forma como Microsoft Word processa os campos e, como resultado, trata corretamente:

- campos aninhados:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumento de campo pode ser um resultado de um campo aninhado
- os campos podem ser aninhados dentro de um código de campo, bem como no resultado do campo
- espaços / sem espaços, aspas / sem aspas, caracteres de escape em campos, etc.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abrangem vários parágrafos

### Campos Da Fórmula

Aspose.Words fornece uma implementação muito séria do motor de fórmula e suporta o seguinte:

- operadores aritméticos e lógicos:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funções:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referências a marcadores:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- opções de formatação numérica:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

As seguintes funções em expressões são suportadas: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Apenas algumas das expressões `IF` que Aspose.Words podem calcular facilmente devem dar uma ideia de quão poderoso é esse recurso:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words suporta todas as opções de formatação de data e hora disponíveis em Microsoft Word, alguns exemplos são:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge campos

Aspose.Words não impõe limites à complexidade de mail merge campos nos seus documentos e suporta `IF` aninhados e campos de fórmula e pode até calcular o nome do campo de mesclagem usando uma fórmula.

Alguns exemplos de mail merge campos que Aspose.Words suporta:

- Mail merge Interruptores de campo:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campos de mesclagem aninhados em uma fórmula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcular o nome do campo de mesclagem em tempo de execução:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- movimento condicional para o próximo registo na fonte de dados:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Opções De Formato

Um campo em um documento pode ter opções de formatação que especificam como o valor resultante deve ser formatado. Aspose.Words suporta as seguintes opções de formato:

- @ - formatação de data e hora
- \\\# - formatação numérica
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* inferior
- \\\\\\\\* superior
- \\\\\\\\* CHARFORMAT - formatar o resultado de acordo com o primeiro carácter do Código do campo
- \\\\\\\\* MERGEFORMAT - formatar o resultado de acordo com a forma como o resultado antigo é formatado

### Formatação de data e número nos campos

Quando Aspose.Words calcula um resultado de campo, ele geralmente precisa analisar uma string em um valor de número ou data e também formatá-la de volta para um string.By o padrão Aspose.Words usa a cultura de encadeamento atual para executar a análise e a formatação ao calcular os valores de campo durante a atualização de campo e mail merge. Existem também opções fornecidas na forma da classe [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) que permite um controlo adicional sobre qual cultura é utilizada durante a actualização de campo.

- por padrão, a propriedade [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) é definida como [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) que Formata campos usando a cultura de thread atual
- esta propriedade pode ser definida como [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) para que o idioma definido a partir do código de campo do campo seja usado para formatação

### Formatação usando a cultura do tópico atual

Para controlar a cultura usada durante o cálculo do campo, basta definir a propriedade **CurrentCulture** como uma cultura de sua escolha antes de invocar o cálculo do campo.

O exemplo de código a seguir mostra como alterar a cultura usada nos campos de formatação durante a atualização:

EXAMPLE

O uso da cultura atual para formatar campos permite que um sistema controle de forma fácil e consistente como todos os campos do documento são formatados durante a atualização do campo.

### Formatação usando a cultura no documento

Por outro lado, Microsoft Word Formata cada campo individual com base no idioma do texto encontrado no campo (especificamente, as execuções do Código do campo). Às vezes, durante a atualização do campo, esse pode ser o comportamento desejado, por exemplo, se você tiver documentos globalizados contendo conteúdo composto por muitos idiomas diferentes e quiser que cada campo honre a localidade usada no texto. Aspose.Words também suporta esta funcionalidade.

A classe [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) fornece uma propriedade [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) que contém membros que podem ser usados para controlar como os campos são atualizados no documento.

O exemplo de código a seguir mostra como especificar onde a cultura usada para formatação de data durante a atualização do campo e mail merge é escolhida:

EXAMPLE