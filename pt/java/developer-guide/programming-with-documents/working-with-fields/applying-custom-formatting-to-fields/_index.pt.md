---
title: Aplicar formatação personalizada para campos
second_title: Aspose.Words para Java
articleTitle: Aplicar formatação personalizada para campos
linktitle: Aplicar formatação personalizada para campos
description: "Formatar e avaliar o resultado de campos usando Java."
type: docs
weight: 40
url: /pt/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Às vezes, os usuários precisam aplicar formatação personalizada para campos. Neste artigo, vamos ver alguns exemplos de como isso pode ser feito.

Para saber mais opções, consulte a lista completa de propriedades para cada tipo de campo na classe correspondente.

## Como Aplicar Formatação Personalizada para Resultado de Campo

Aspose.Words fornece API para a formatação personalizada do resultado do campo. Você pode implementar [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interface para controlar como o resultado do campo é formatado. Você pode aplicar o interruptor de formato numérico, ou seja, \ # # # # # # #", data / hora formato switch, ou seja, \@ "dd.MM.yyyyyy", e número de formato switch, ou seja, \ * Ordinal.

O exemplo de código a seguir mostra como aplicar formatação personalizada para o resultado do campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Como avaliar `IF` condição

Se você quiser avaliar `IF` condição após mail merge, você pode usar [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) método que retorna imediatamente o resultado da avaliação de expressão.

O exemplo de código a seguir mostra como usar este método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Como Aplicar Formatação Personalizada no Campo do Tempo

Por padrão Aspose.Words atualizações `TIME` campo com cultura atual formato de tempo curto. Se você quiser formatar o `TIME` campo de acordo com sua exigência, você pode conseguir isso implementando [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) interface.

Os seguintes exemplos de código mostram como aplicar a formatação personalizada ao `TIME` campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
