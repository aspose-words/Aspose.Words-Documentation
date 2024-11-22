---
title: Atualizar campos em Java
second_title: Aspose.Words para Java
articleTitle: Campos de atualização
linktitle: Campos de atualização
description: "Saiba como atualizar campos em Java. Atualizar campos programaticamente ou usar atualização de campo automática usando Java API"
type: docs
weight: 30
url: /pt/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Tipicamente, um campo inserido Microsoft Word já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, ele conterá o valor calculado correto para a versão dada do documento. Mas se você tem um aplicativo que gera ou modifica um documento com campos como a fusão de dois documentos ou a população com dados, então idealmente todos os campos devem ser atualizados para que o documento seja útil.

## Como Atualizar Campos

Quando um documento é carregado, Aspose.Words imita o comportamento de Microsoft Word com a opção de atualizar automaticamente os campos é desligado. O comportamento pode ser resumido da seguinte forma:

- quando você abrir / salvar um documento os campos permanecem intactos
- você pode atualizar explicitamente todos os campos em um documento, por exemplo, reconstruir `TOC` quando você precisa
- quando imprimir/render em PDF ou XPS os campos relacionados com a numeração de páginas em cabeçalhos / rodapés são atualizados
- quando executar Mail Merge todos os campos são atualizados automaticamente

### Atualização de campos Programticamente

Para atualizar explicitamente campos em todo o documento, basta chamar o [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) método. Para atualizar os campos contidos em parte de um documento, obter um [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objeto e chamar o [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) método. Em Aspose.Words, você pode obter um **Range** para qualquer nó na árvore do documento, como [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. usando o [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) propriedade. Você pode atualizar o resultado de um único campo chamando o [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) método.

### Atualização automática de campos relacionados à página durante a renderização

Quando você executa a conversão de um documento para um formato de página fixa, por exemplo, para PDF ou XPS, então Aspose.Words atualizará automaticamente os campos relacionados ao layout da página `PAGE`, `PAGEREF` encontrados em cabeçalhos/pés do documento. Este comportamento imita o comportamento de Microsoft Word ao imprimir um documento.

Se você quiser atualizar todos os outros campos no documento, então você precisa ligar [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) antes de renderizar o documento.

O exemplo a seguir mostra como atualizar todos os campos antes de renderizar um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Atualização de campo automática durante Mail Merge

Quando você executa um mail merge, todos os campos no documento serão atualizados automaticamente. Isto é porque o Mail Merge é um caso de uma atualização de campo. O programa encontra um Mail Merge campo e precisa atualizar seu resultado, o que envolve pegar o valor da fonte de dados e inseri-lo no campo. A lógica é, naturalmente, mais complicada, por exemplo, quando o fim do documento/mail merge A região é atingida, mas ainda há mais dados a serem fundidos, então a região precisa ser duplicada e o novo conjunto de campos atualizados.

## Atualizar campos com atributo sujo

O w:dirty é um atributo de nível de campo que irá atualizar apenas o campo que você especificar quando o documento é aberto. Ele diz ao MS Word para apenas atualizar este campo da próxima vez que o documento é aberto. Você pode usar a propriedade LoadOptions.setUpdateDirtyFields() para especificar se atualizar os campos com o atributo sujo. Quando o valor de LoadOptions.setUpdateDirtyFields() estiver definido como *true* todos os campos tendo *true* valor para `Field.IsDirty` ou `FieldChar.IsDirty` A propriedade é atualizada na carga de documentos

O exemplo de código a seguir mostra como atualizar campos com o atributo sujo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Actualizar a propriedade LastSavedTime antes de economizar

Você pode usar o [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) propriedade para atualizar a propriedade do documento embutido correspondente [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) ao salvar o documento.

O exemplo de código a seguir mostra como atualizar esta propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
