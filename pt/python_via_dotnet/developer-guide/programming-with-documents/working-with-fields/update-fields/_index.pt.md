---
title: Atualizando Campos Python
second_title: Aspose.Words para Python via .NET
articleTitle: Atualizar campos
linktitle: Atualizar campos
description: "Atualize campos em um documento de diferentes maneiras e usando diferentes opções no Python."
type: docs
weight: 30
url: /pt/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Normalmente, um campo inserido no Microsoft Word já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, ele conterá o valor calculado correto para determinada versão do documento. Mas se você tiver um aplicativo que gera ou modifica um documento com campos como mesclar dois documentos ou preenchê-lo com dados, o ideal é que todos os campos sejam atualizados para que o documento seja útil.

## Como atualizar campos

Quando um documento é carregado, o Aspose.Words imita o comportamento do Microsoft Word com a opção de atualizar campos automaticamente desativada. O comportamento pode ser resumido da seguinte forma:

- quando você abre/salva um documento, os campos permanecem intactos
- você pode atualizar explicitamente todos os campos de um documento (por exemplo, reconstruir o sumário) quando precisar
- quando você imprime/renderiza em PDF ou XPS, os campos relacionados à numeração de páginas em cabeçalhos/rodapés são atualizados
- quando você executa mail merge todos os campos são atualizados automaticamente

### Atualizar campos programaticamente

Para atualizar explicitamente os campos em todo o documento, basta chamar [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Para atualizar campos contidos em parte de um documento, obtenha um objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) e chame o método [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). No Aspose.Words, você pode obter um **Range** para qualquer nó da árvore de documentos, como [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), etc., usando a propriedade [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Você pode atualizar o resultado de um único campo chamando o método [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Atualização automática de campos relacionados à página durante a renderização

Quando você executa a conversão de um documento para um formato de página fixa, por exemplo, para PDF ou XPS, o Aspose.Words atualizará automaticamente os campos relacionados ao layout da página `PAGE`, `PAGEREF` encontrados nos cabeçalhos/rodapés do documento. Este comportamento imita o comportamento do Microsoft Word ao imprimir um documento.

Se quiser atualizar todos os outros campos do documento, será necessário chamar [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) antes de renderizar o documento.

O exemplo de código a seguir mostra como atualizar todos os campos antes de renderizar um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Atualização automática de campo durante Mail Merge

Ao executar um mail merge, todos os campos do documento serão atualizados automaticamente. Isso ocorre porque o mail merge é um caso de atualização de campo. O programa encontra um campo mail merge e precisa atualizar seu resultado, o que envolve pegar o valor da fonte de dados e inseri-lo no campo. A lógica é obviamente mais complicada, por exemplo, quando o final da região do documento/mail merge é atingido, mas ainda há mais dados a serem mesclados, então a região precisa ser duplicada e o novo conjunto de campos atualizado.

## Atualizar campos com atributos sujos

O w:dirty é um atributo de nível de campo que atualizará apenas o campo especificado quando o documento for aberto. Diz ao MS Word para atualizar este campo apenas na próxima vez que o documento for aberto. Você pode usar a propriedade [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) para especificar se deseja atualizar os campos com o atributo sujo. Quando o valor de **update_dirty_fields** é definido como `True`, todos os campos com valor `True` para propriedade [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) ou [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) são atualizados no carregamento do documento.

O exemplo de código a seguir mostra como atualizar campos que possuem o atributo dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Atualize a propriedade LastSavedTime antes de salvar

Você pode usar a propriedade [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) para atualizar a propriedade [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) do documento integrada correspondente ao salvar o documento.

O exemplo de código a seguir mostra como atualizar essa propriedade:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

