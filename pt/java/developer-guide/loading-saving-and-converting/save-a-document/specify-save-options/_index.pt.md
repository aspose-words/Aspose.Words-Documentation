---
title: Especificar Salvar opções em Java
second_title: Aspose.Words para Java
articleTitle: Especifique Salvar opções
linktitle: Especifique Salvar opções
description: "Definir propriedades avançadas ao salvar um documento usando Java para fornecer controle mais preciso sobre o processo."
type: docs
weight: 20
url: /pt/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Ao salvar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece-lhe com o [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) classe, que permite o controle mais preciso do processo de salvamento. Há sobrecargas dos **Save** método que aceita um **SaveOptions** objeto – deve ser um objeto de uma classe derivada do **SaveOptions** classe. Cada formato de salvamento tem uma classe correspondente que possui opções de salvamento para este formato de salvamento, por exemplo, há [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) para salvar ao formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para salvar Markdown formato, ou [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) para salvar a uma imagem. Este artigo fornece exemplos de trabalho com algumas classes de opções derivadas de **SaveOptions**.

O exemplo de código a seguir mostra como definir as opções de salvamento antes de salvar o documento em HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O artigo descreve algumas propriedades que você pode controlar ao salvar um documento.

## Criptografar um documento Com uma senha

Use o **Password** propriedade para obter ou definir uma senha para um documento criptografado. Use o **Password** propriedade da classe correspondente para trabalhar com o formato de documento selecionado.

Por exemplo, ao salvar um documento para DOC ou DOT formato, use o [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) propriedade da [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) classe.

O exemplo de código a seguir mostra como definir uma senha para criptografar um documento usando o método de criptografia RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Ao salvar um documento no formato ODT, use o [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) propriedade da [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) classe.

O exemplo de código a seguir mostra como carregar e salvar OpenDocument criptografado com uma senha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nem todos os formatos suportam criptografia e o uso de **Password** propriedade.

## Mostrar notificações de progresso de economia de documentos

Aspose.Words fornece a capacidade de usar o [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) propriedade para obter notificações sobre o progresso da poupança de documentos.

Ele está agora disponível ao salvar para DOCX, FlatOpc, DOCM, DOTM. DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack ou formatos TXT.

## Atualizar o Tempo de Criação de Documentos

Aspose.Words fornece uma capacidade de usar o [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) propriedade para obter ou definir a data de criação do documento no UTC. Você também pode atualizar esse valor antes de salvar usando o [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) opção.

O exemplo a seguir mostra como atualizar o tempo de criação do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Actualização Última propriedade salva

Aspose.Words fornece uma capacidade de usar o [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) propriedade para obter ou definir um valor determinando se [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) a propriedade é atualizada antes de salvar.

O exemplo de código a seguir mostra como definir esta propriedade e salvar o documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Salvar imagem preta e branca com um bit por pixel formato

Para controlar as opções de poupança de imagem, o **ImageSaveOptions** A classe é usada. Por exemplo, você pode usar o [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propriedade para definir o formato pixel para as imagens geradas. Por favor, note que o formato de pixel da imagem de saída pode diferir do valor definido por causa do trabalho do GDI+.

O exemplo de código a seguir mostra como salvar uma imagem preta e branca com um pouco por formato de pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
