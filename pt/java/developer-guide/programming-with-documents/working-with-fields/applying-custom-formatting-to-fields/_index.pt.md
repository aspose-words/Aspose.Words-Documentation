---
title: Aplicar formatação personalizada aos campos
second_title: Aspose.Words para Java
articleTitle: Aplicar formatação personalizada aos campos
linktitle: Aplicar formatação personalizada aos campos
description: "Formatar e avaliar o resultado dos Campos utilizando Java."
type: docs
weight: 40
url: /pt/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Às vezes, os usuários precisam aplicar formatação personalizada aos campos. Neste artigo, veremos alguns exemplos de como isso pode ser feito.

Para saber mais opções, consulte a lista completa de propriedades para cada tipo de campo na classe correspondente.

## Como aplicar a formatação personalizada ao resultado do campo

Aspose.Words fornece API para formatação personalizada do resultado do campo. Você pode implementar a interface [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) para controlar como o resultado do campo é formatado. Você pode aplicar a opção de formato numérico, ou seja, \# "#.##", a opção de formato de data/hora, ou seja, \@ "dd.MM.yyyy", e a opção de formato de número, ou seja, \* Ordinal.

O exemplo de código a seguir mostra como aplicar a formatação personalizada para o resultado do campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Como avaliar a condição `IF`

Se você deseja avaliar a condição `IF` após mail merge, pode usar o método [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) que retorna imediatamente o resultado da avaliação da expressão.

O exemplo de código a seguir mostra como usar esse método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Como aplicar a formatação personalizada ao campo de tempo

Por padrão, Aspose.Words atualiza o campo `TIME` com o formato de tempo curto da cultura atual. Se você deseja formatar o campo `TIME` de acordo com sua necessidade, você pode conseguir isso implementando a interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

Os exemplos de código a seguir mostram como aplicar a formatação personalizada ao campo `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
