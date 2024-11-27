---
title: Inserir Checkboxes, entrada de texto ou imagens durante Mail Merge
second_title: Aspose.Words para .NET
articleTitle: Inserir Checkboxes, entrada de texto ou imagens
linktitle: Inserir Checkboxes, entrada de texto ou imagens
description: "Insira checkbox es ou campos de entrada de texto durante Mail Merge usando C#. Insira também imagens de uma base de dados durante Mail Merge em C#."
type: docs
weight: 40
url: /pt/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

O mecanismo de mesclagem pega um documento como entrada, procura campos `MERGEFIELD` nele e os substitui pelos dados obtidos da fonte de dados. Normalmente, texto simples e HTML são inseridos, mas Aspose.Words os usuários também podem gerar um documento que lida com cenários mais incomuns para os campos Mail Merge.

A poderosa funcionalidade Aspose.Words permite estender o processo Mail Merge:

- inserir checkboxes e campos de formulário de entrada de texto no documento durante um mail merge
- inserir imagens de qualquer armazenamento Personalizado (ficheiros, campos BLOB, etc.)

## Inserir Checkboxes e entrada de texto durante Mail Merge

Às vezes, é necessário executar uma operação Mail Merge para que não seja substituído texto no campo de mesclagem, mas um checkbox ou campo de entrada de texto. Embora este não seja o cenário mais comum, é muito útil para algumas tarefas.

A captura de tela a seguir de um documento Word mostra um modelo com campos de mesclagem:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Esta captura de tela do documento Word abaixo mostra o documento já gerado:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Observe que alguns campos foram substituídos por texto simples, alguns campos foram substituídos por campos de formulário checkbox e o campo `Subject` foi substituído por um campo de entrada de texto.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir checkboxes e inserir campos de texto em um documento durante um mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Inserir imagens durante Mail Merge

Ao executar uma operação Mail Merge, você pode inserir imagens do banco de dados no documento usando campos especiais de imagem Mail Merge. O campo image Mail Merge é um campo de mesclagem denominado Image: MyFieldName.

### Inserir imagens de uma base de dados

Durante um mail merge, quando um campo image Mail Merge é encontrado em um documento, o evento [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) é disparado. Você pode responder a esse evento para retornar um nome de arquivo, fluxo ou objeto de imagem ao mecanismo Mail Merge para que ele possa ser inserido no documento.

O exemplo de código a seguir mostra como inserir imagens armazenadas em um campo de banco de dados BLOB em um relatório:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Definir Propriedades da imagem durante Mail Merge

Ao mesclar um campo de mesclagem de imagem, às vezes é necessário controlar várias propriedades de imagem, como [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Atualmente, usando [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) você só pode definir as propriedades de largura ou altura da imagem, respectivamente. Para superar esse problema, Aspose.Words fornece a propriedade [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), o que facilita o controle total sobre a imagem inserida ou qualquer outra forma.

O exemplo de código a seguir mostra como definir várias propriedades de imagem:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
