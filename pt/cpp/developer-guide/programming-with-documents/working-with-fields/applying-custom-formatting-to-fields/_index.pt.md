---
title: Aplicar formatação personalizada a campos Em C++
second_title: Aspose.Words para C++
articleTitle: Aplicar formatação personalizada aos campos
linktitle: Aplicar formatação personalizada aos campos
description: "Formate e avalie os resultados dos campos usando C++."
type: docs
weight: 40
url: /pt/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Às vezes, os usuários precisam aplicar formatação personalizada aos campos. Neste artigo, veremos alguns exemplos de como isso pode ser feito.

Para saber mais opções, consulte a lista completa de propriedades para cada tipo de campo na classe correspondente em [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Como aplicar a formatação personalizada ao resultado do campo

Aspose.Words fornece API para formatação personalizada do resultado do campo. Você pode implementar a interface [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) para controlar como o resultado do campo é formatado. Você pode aplicar a opção de formato numérico, ou seja, \#"#.## ", mudança de formato de data/hora, ou seja, \@ " dd.MM.yyyy", e interruptor de formato numérico, ou seja, \* Ordinal.

O exemplo de código a seguir mostra como aplicar a formatação personalizada para o resultado do campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Como avaliar a condição `IF`

Se você quiser avaliar a condição `IF` após mail merge, você pode usar o método [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) que retorna imediatamente o resultado da avaliação da expressão.

O exemplo de código a seguir mostra como usar esse método:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Como aplicar a formatação personalizada ao campo de tempo

Por padrão, Aspose.Words atualiza o campo `TIME` com o formato de tempo curto da cultura atual. Se pretender formatar o campo `TIME` de acordo com o seu requisito, pode fazê-lo implementando a interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Os exemplos de código a seguir mostram como aplicar a formatação personalizada ao campo `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
