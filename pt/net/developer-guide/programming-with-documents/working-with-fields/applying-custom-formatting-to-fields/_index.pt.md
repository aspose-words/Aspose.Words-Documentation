---
title: Aplicar formatação personalizada a campos em C#
second_title: Aspose.Words para .NET
articleTitle: Aplicar formatação personalizada aos campos
linktitle: Aplicar formatação personalizada aos campos
description: "Formate e avalie o resultado dos campos usando C#."
type: docs
weight: 40
url: /pt/net/applying-custom-formatting-to-fields/
---

Às vezes, os usuários precisam aplicar formatação personalizada aos campos. Neste artigo, veremos alguns exemplos de como isso pode ser feito.

Para conhecer mais opções, consulte a lista completa de propriedades de cada tipo de campo na classe correspondente no [Namespace de campos](https://reference.aspose.com/words/net/aspose.words.fields/).

## Como aplicar formatação personalizada ao resultado do campo

Aspose.Words fornece API para formatação personalizada do resultado do campo. Você pode implementar a interface [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) para controlar como o resultado do campo é formatado. Você pode aplicar a troca de formato numérico, ou seja, \# "#.##", a troca de formato de data/hora, ou seja, \@ "dd.MM.yyyy", e a troca de formato numérico, ou seja, \* Ordinal.

O exemplo de código a seguir mostra como aplicar formatação personalizada ao resultado do campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Como avaliar a condição `IF`

Se quiser avaliar a condição `IF` após mail merge, você pode usar o método [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) que retorna imediatamente o resultado da avaliação da expressão.

O exemplo de código a seguir mostra como usar esse método:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Como aplicar formatação personalizada ao campo de hora

Por padrão, o Aspose.Words atualiza o campo `TIME` com o formato de tempo curto da cultura atual. Descobrimos que há uma diferença entre a formatação Microsoft Word e a formatação .NET/Windows, e também entre diferentes versões de .NET Framework. Se você deseja formatar o campo `TIME` de acordo com sua necessidade, você pode conseguir isso implementando a interface [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Os exemplos de código a seguir mostram como aplicar formatação personalizada ao campo `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
