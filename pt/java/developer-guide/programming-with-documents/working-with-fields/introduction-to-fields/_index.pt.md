---
title: Introdução a Campos em Java
second_title: Aspose.Words para Java
articleTitle: Introdução aos Campos
linktitle: Introdução aos Campos
description: "Recursos de campos em detalhes, códigos de campo e resultados de campo explicados em Aspose.Words para Java."
type: docs
weight: 10
url: /pt/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words é uma biblioteca de classe projetada para processamento do lado do servidor de Microsoft Word documentos e suporta campos das seguintes formas:

- todos os campos em um documento são preservados durante a abertura/save e conversões
- é possível atualizar os resultados da maioria dos campos

Neste artigo, aprenderemos mais sobre a estrutura de campo, os campos suportados em Aspose.Words, e detalhes de trabalhar com tais campos.

## Estrutura de campo

Um campo consiste em:

- Não. Os nós de início e separador de campo são usados para abranger o conteúdo que compõe o código de campo (normalmente como texto simples).
- O separador de campo e fim de campo abrangem o resultado de campo. Isso pode ser composto por vários tipos de conteúdo que vão desde corridas de texto até parágrafos até tabelas.
- Alguns campos podem não ter um separador, o que significa que todo o conteúdo compõe o código de campo.
- Não. O código de campo define o comportamento do campo e é composto do identificador de campo e muitas vezes outros parâmetros, como nome de campo e switches.
- Não. O resultado do campo contém a avaliação mais recente do campo. Este valor é armazenado no resultado do campo e é o que é exibido ao usuário. Alguns campos podem não ter qualquer resultado de campo, portanto, não exibirá nada no documento. Da mesma forma, alguns campos podem não ser atualizados ainda assim também não terá nenhum resultado de campo.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

O conteúdo que compõe o código de campo é armazenado como [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nós entre os [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) e [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). O resultado do campo é armazenado entre o **FieldSeparator** e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) nós e pode ser composto de vários tipos de conteúdo. Normalmente, o resultado do campo contém apenas texto composto de nós Run, no entanto, é possível que o nó FieldEnd esteja localizado em um parágrafo completamente diferente, e, portanto, fazendo o resultado do campo composto por [Níveis Lógicos de Nós em um Documento](/words/pt/java/logical-levels-of-nodes-in-a-document/) como **Table** e **Paragraph** nós também.

Aqui está uma visão de como um campo é armazenado em Aspose.Words usando o exemplo "*DocumentExplorer"* que pode ser encontrado em [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Campos em Aspose.Words Document Object Model (DOM)

Quando um documento é carregado <span notrans="<span notrans=" Aspose.Words"=""></span>, os campos do documento são carregados no Aspose.Words Document Object Model como um conjunto de componentes separados (nodos). Um único campo é carregado como uma coleção de **FieldStart**, **FieldSeparator** e **FieldEnd** nós juntamente com o conteúdo entre esses nós. Se um campo não tem um resultado de campo, então não haverá **FieldSeparator** nó. Todos estes nós são sempre encontrados inline (como crianças de [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

Em Aspose.Words cada um dos **FieldXXX** nós deriva de [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Esta classe fornece uma propriedade para verificar o tipo de campo representado pelo nó especificado através do [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) propriedade. Por exemplo `FieldType.FieldMergeField` representa um campo de mesclagem no documento.

{{% alert color="primary" %}}

Existem alguns campos específicos que existem em um documento do Word que não são importados para Aspose.Words como uma coleção de **FieldXXX** nós. Por exemplo, `LINK` campo e `INCLUDEPICTURE` campo são importados para Aspose.Words como [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto. Este objeto fornece propriedades para trabalhar com os dados de imagem normalmente armazenados nestes campos. Importar `INCLUDEPICTURE` campo como **FieldXXX** nós o [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) opção deve ser especificada como **true**.

Campos de formulário também são importados para Aspose.Words como sua própria classe especial. O [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) classe representa um campo de formulário em um documento do Word e fornece métodos adicionais que são específicos para um campo de formulário.

{{% /alert %}}

## Campos suportados

Cálculo dos seguintes campos é suportado na versão atual de Aspose.Words:

- = (formula)
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
- Não. `TOC` (incluindo TOT e TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Parsing de campo sofisticado

Aspose.Words segue o caminho Microsoft Word processa campos e, como resultado, lida corretamente:

- campos aninhados:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumento de campo pode ser resultado de um campo aninhado
- campos podem ser aninhados dentro de um código de campo, bem como no resultado do campo
- espaços/sem espaços, citações/sem citações, caracteres de fuga em campos etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abrangem vários parágrafos

### Campos de Fórmula

Aspose.Words fornece uma implementação muito séria do motor de fórmulas e suporta o seguinte:

- operadores aritméticos e lógicos:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funções:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referências a marcadores:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- interruptores de formatação de número:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

As seguintes funções em expressões são suportadas: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` e `COMPARE` Campos

Apenas alguns dos `IF` expressões que Aspose.Words pode facilmente calcular deve dar-lhe uma ideia de quão poderoso este recurso é:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` e `TIME` Campos

Aspose.Words suporta todos os interruptores de formatação de data e hora disponíveis em Microsoft Word, alguns exemplos são:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Campos

Aspose.Words não impõe nenhum limite à complexidade de mail merge campos em seus documentos e suportes aninhados `IF` e campos de fórmula e pode até calcular o nome do campo de mesclagem usando uma fórmula.

Alguns exemplos de mail merge campos que Aspose.Words suportes:

- Não. Mail merge interruptores de campo:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campos de mesclagem aninhados em uma fórmula:
  `IF { `MERGEFIELED` Value1 } >= { `MERGEFIELED` Value2 } True False`
- calcular o nome do campo de mesclagem no tempo de execução:
  `MERGEFIELD { `IF` { `MERGEFIELED` Value1 } >= { `MERGEFIELED` Value2 } FirstName"LastName" }`
- mudança condicional para o próximo registro na fonte de dados:
  `NEXTIF { `MERGEFIELED` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELED` Value2 }, 2, -.45) }`

### Interruptores de formato

Um campo em um documento pode ter switches de formatação que especificam como o valor resultante deve ser formatado. Aspose.Words suporta os seguintes switches de formato:

- @ – formatação de data e hora
- \\\# – formatação de números
- \\\\\\\\\\* Caps
- \\\\\\\\\\* FirstCap
- \\\\\\\\\\* Mais baixo
- \\\\\\\\\\* Alto
- \\\\\\\\\* CHARFORMAT – resultado do formato de acordo com o primeiro caractere do código de campo
- \\\\\\\\\* MERGEFORMAT – resultado do formato de acordo com a forma como o resultado antigo é formatado

### Date e formatação de números em campos

Quando Aspose.Words calcula um resultado de campo, muitas vezes precisa analisar uma string em um valor de número ou data e também formatá-lo de volta a uma string. Por padrão Aspose.Words usa a cultura de thread atual para executar a análise e formatação ao calcular os valores de campo durante a atualização de campo e mail merge. Há também opções fornecidas na forma de [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) classe que permite mais controle sobre qual cultura é usada durante a atualização de campo%

* por padrão [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) A propriedade está definida [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) que formata campos usando a cultura de thread atual
* esta propriedade pode ser definida [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) assim que o conjunto de idioma do código de campo do campo é usado para formatação em vez

### Formatação usando a cultura do segmento atual

Para controlar a cultura utilizada durante o cálculo do campo, basta definir o **CurrentCulture** propriedade para uma cultura de sua escolha antes de invocar o cálculo do campo.

O exemplo de código a seguir mostra como alterar a cultura usada nos campos de formatação durante a atualização:

EXEMPLO (use the public wrapper CurrentThreadSettings.getLocale() e setLocale() em vez do privado `Thread.CurrentThread`.CurrentCulture)

Usando a cultura atual para formatar campos permite que um sistema controle facilmente e consistentemente como todos os campos no documento são formatados durante a atualização de campo.

### Formatação usando a Cultura no Documento

Por outro lado, Microsoft Word formata cada campo individual com base na linguagem do texto encontrado no campo (especificamente, as corridas do código de campo). Às vezes, durante a atualização de campo este pode ser o comportamento desejado, por exemplo, se você tiver documentos globalizados contendo conteúdo composto de muitos idiomas diferentes e gostaria que cada campo honrasse o local usado no texto. Aspose.Words também suporta esta funcionalidade.

O [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe fornece uma [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) propriedade que contém membros que podem ser usados para controlar como os campos são atualizados dentro do documento.

O exemplo de código a seguir mostra como especificar onde a cultura usada para formatação de data durante a atualização de campo e mail merge é escolhido de:

EXEMPLO
