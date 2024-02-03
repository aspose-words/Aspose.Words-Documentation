---
title: Atualizar campos C#
second_title: Aspose.Words para .NET
articleTitle: Atualizar campos
linktitle: Atualizar campos
description: "Aprenda como atualizar campos em C#. Atualize os campos programaticamente ou use a atualização automática de campos usando API .NET."
type: docs
weight: 30
url: /pt/net/update-fields/
---

Normalmente, um campo inserido no Microsoft Word já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, ele conterá o valor calculado correto para determinada versão do documento. Mas se você tiver um aplicativo que gera ou modifica um documento com campos como mesclar dois documentos ou preenchê-lo com dados, o ideal é que todos os campos sejam atualizados para que o documento seja útil.

## Como atualizar campos

Quando um documento é carregado, o Aspose.Words imita o comportamento do Microsoft Word com a opção de atualizar campos automaticamente desativada. O comportamento pode ser resumido da seguinte forma:

- quando você abre/salva um documento, os campos permanecem intactos
- você pode atualizar explicitamente todos os campos de um documento, por exemplo, reconstruir `TOC`, quando precisar
- quando você imprime/renderiza em PDF ou XPS, os campos relacionados à numeração de páginas em cabeçalhos/rodapés são atualizados
- quando você executa mail merge todos os campos são atualizados automaticamente

### Atualizar campos programaticamente

Para atualizar explicitamente os campos em todo o documento, basta chamar o método [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Para atualizar campos contidos em parte de um documento, obtenha um objeto [Range](https://reference.aspose.com/words/net/aspose.words/range/) e chame o método [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). No Aspose.Words, você pode obter um **Range** para qualquer nó da árvore de documentos, como [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), etc., usando a propriedade [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Você pode atualizar o resultado de um único campo chamando o método [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Atualização automática de campos relacionados à página durante a renderização

Quando você executa a conversão de um documento para um formato de página fixa, por exemplo, para PDF ou XPS, o Aspose.Words atualizará automaticamente os campos relacionados ao layout da página `PAGE`, `PAGEREF` encontrados nos cabeçalhos/rodapés do documento. Este comportamento imita o comportamento do Microsoft Word ao imprimir um documento.

Se quiser atualizar todos os outros campos do documento, será necessário chamar [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) antes de renderizar o documento.

O exemplo de código a seguir mostra como atualizar todos os campos antes de renderizar um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Atualização automática de campo durante Mail Merge

Ao executar um mail merge, todos os campos do documento serão atualizados automaticamente. Isso ocorre porque o mail merge é um caso de atualização de campo. O programa encontra um campo mail merge e precisa atualizar seu resultado, o que envolve pegar o valor da fonte de dados e inseri-lo no campo. A lógica é obviamente mais complicada, por exemplo, quando o final da região do documento/mail merge é atingido, mas ainda há mais dados a serem mesclados, então a região precisa ser duplicada e o novo conjunto de campos atualizado.

## Atualizar campos com atributos sujos

O w:dirty é um atributo de nível de campo que atualizará apenas o campo especificado quando o documento for aberto. Diz ao MS Word para atualizar este campo apenas na próxima vez que o documento for aberto. Você pode usar a propriedade [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) para especificar se deseja atualizar os campos com o atributo sujo. Quando o valor de **UpdateDirtyFields** é definido como *true*, todos os campos com valor *true* para propriedade [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) ou [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) são atualizados no carregamento do documento.

O exemplo de código a seguir mostra como atualizar campos que possuem o atributo dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Atualize a propriedade LastSavedTime antes de salvar

Você pode usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) para atualizar a propriedade [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) do documento integrada correspondente ao salvar o documento.

O exemplo de código a seguir mostra como atualizar essa propriedade:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
