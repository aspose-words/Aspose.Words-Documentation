---
title: Atualizar campos em Java
second_title: Aspose.Words para Java
articleTitle: Atualizar Campos
linktitle: Atualizar Campos
description: "Saiba como atualizar campos em Java. Actualizar campos programaticamente ou utilizar a actualização automática de campos utilizando Java API"
type: docs
weight: 30
url: /pt/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Normalmente, um campo inserido em Microsoft Word já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, conterá o valor calculado correcto para a versão dada do documento. Mas se você tiver um aplicativo que gera ou modifica um documento com campos como mesclar dois documentos ou preenchê-lo com dados, então, idealmente, todos os campos devem ser atualizados para que o documento seja útil.

## Como atualizar campos

Quando um documento é carregado, Aspose.Words imita o comportamento de Microsoft Word com a opção de atualizar automaticamente os campos desativada. O comportamento pode ser resumido da seguinte forma:

- quando abre / guarda um documento, os campos permanecem intactos
- é possível atualizar explicitamente todos os campos de um documento, por exemplo, reconstruir `TOC` quando for necessário
- quando você imprime / renderiza em PDF ou XPS, os campos relacionados à numeração de páginas nos cabeçalhos/rodapés são atualizados
- quando você executa Mail Merge todos os campos são atualizados automaticamente

### Atualizar Campos Programaticamente

Para atualizar explicitamente os campos em todo o documento, basta chamar o método [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Para atualizar os campos contidos em parte de um documento, obtenha um objeto [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) e chame o método [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). Em Aspose.Words, Você pode obter um **Range** para qualquer nó na árvore de documentos, como [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. usando a propriedade [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Você pode atualizar o resultado de um único campo chamando o método [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Atualização automática dos campos relacionados com a Página durante a renderização

Quando você executa a conversão de um documento para um formato de página fixa, por exemplo, para PDF ou XPS, então Aspose.Words atualizará automaticamente os campos relacionados ao layout da Página `PAGE`, `PAGEREF` encontrados nos cabeçalhos/rodapés do documento. Este comportamento imita o comportamento de Microsoft Word ao imprimir um documento.

Se você quiser atualizar todos os outros campos no documento, então você precisa chamar [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) antes de renderizar o documento.

O exemplo a seguir mostra como atualizar todos os campos Antes de renderizar um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Actualização automática do campo durante Mail Merge

Ao executar um mail merge, todos os campos do documento serão atualizados automaticamente. Isso ocorre porque o Mail Merge é um caso de uma atualização de campo. O programa encontra um campo Mail Merge e precisa atualizar seu resultado, o que envolve pegar o valor da fonte de dados e inseri-lo no campo. A lógica é, naturalmente, mais complicada, por exemplo, quando se chega ao final da região do documento/mail merge, mas ainda há mais dados a fundir, então a região tem de ser duplicada e o novo conjunto de campos actualizado.

## Atualizar campos com atributo Sujo

O w: dirty é um atributo de nível de campo que atualizará apenas o campo especificado quando o documento for aberto. Diz ao MS Word para actualizar este campo apenas na próxima vez que o documento for aberto. Você pode usar LoadOptions.setUpdateDirtyFields () propriedade para especificar se deseja atualizar os campos com o atributo dirty. Quando o valor de LoadOptions.setUpdateDirtyFields () é definido como *true*, todos os campos com valor *true* para a propriedade `Field.IsDirty` ou `FieldChar.IsDirty` são atualizados no carregamento do documento.

O exemplo de código a seguir mostra como atualizar campos com o atributo dirty:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Atualizar LastSavedTime Propriedade Antes De Salvar

Você pode usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) se deseja atualizar a propriedade de Documento interna correspondente [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) ao salvar o documento.

O exemplo de código a seguir mostra como atualizar essa propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
