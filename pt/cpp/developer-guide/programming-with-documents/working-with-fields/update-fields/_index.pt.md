---
title: Atualizar campos Em C++
second_title: Aspose.Words para C++
articleTitle: Atualizar Campos
linktitle: Atualizar Campos
description: "Saiba como atualizar campos Em C++. Atualize campos programaticamente ou use a atualização automática de campos usando C++ API."
type: docs
weight: 30
url: /pt/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Normalmente, um campo inserido em Microsoft Word já contém um valor atualizado. Por exemplo, se o campo for uma fórmula ou um número de página, conterá o valor calculado correcto para a versão dada do documento. Mas se você tiver um aplicativo que gera ou modifica um documento com campos como mesclar dois documentos ou preenchê-lo com dados, então, idealmente, todos os campos devem ser atualizados para que o documento seja útil.

## Como atualizar campos

Quando um documento é carregado, Aspose.Words imita o comportamento de Microsoft Word com a opção de atualizar automaticamente os campos desativada. O comportamento pode ser resumido da seguinte forma:

- quando abre / guarda um documento, os campos permanecem intactos
- é possível atualizar explicitamente todos os campos de um documento, por exemplo, reconstruir `TOC`, quando for necessário
- quando você renderiza para PDF ou XPS, os campos relacionados à numeração de páginas nos cabeçalhos/rodapés são atualizados
- quando você executa mail merge todos os campos são atualizados automaticamente

### Atualizar Campos Programaticamente

Para atualizar explicitamente os campos em todo o documento, basta chamar o método [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Para atualizar os campos contidos em parte de um documento, obtenha um objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) e chame o método [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). Em Aspose.Words, Você pode obter um **Range** para qualquer nó na árvore de documentos, como [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), etc. usando a propriedade [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Você pode atualizar o resultado de um único campo chamando o método [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Atualização automática dos campos relacionados com a Página durante a renderização

Quando você executa a conversão de um documento para um formato de página fixa, por exemplo, para PDF ou XPS, então Aspose.Words atualizará automaticamente os campos relacionados ao layout da página `PAGE`, `PAGEREF` encontrados nos cabeçalhos/rodapés do documento. Este comportamento imita o comportamento de Microsoft Word ao imprimir um documento.

Se você quiser atualizar todos os outros campos no documento, então você precisa chamar [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) antes de renderizar o documento.

O exemplo de código a seguir mostra como atualizar todos os campos Antes de renderizar um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Actualização Automática Do Campo Durante Mail Merge

Ao executar um mail merge, todos os campos do documento serão atualizados automaticamente. Isso ocorre porque o mail merge é um caso de uma atualização de campo. O programa encontra um campo mail merge e precisa atualizar seu resultado, o que envolve pegar o valor da fonte de dados e inseri-lo no campo. A lógica é, naturalmente, mais complicada, por exemplo, quando se chega ao final da região do documento/mail merge, mas ainda há mais dados a fundir, então a região tem de ser duplicada e o novo conjunto de campos actualizado.

## Atualizar LastSavedTime Propriedade Antes De Salvar

Você pode usar a propriedade [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) se deseja atualizar a propriedade de Documento interna correspondente [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) ao salvar o documento.

O exemplo de código a seguir mostra como atualizar essa propriedade:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


