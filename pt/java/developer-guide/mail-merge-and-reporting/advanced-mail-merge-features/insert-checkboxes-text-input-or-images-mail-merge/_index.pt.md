---
title: Inserir Checkboxes, entrada de texto ou imagens durante Mail Merge
second_title: Aspose.Words para Java
articleTitle: Inserir Checkboxes, entrada de texto ou imagens
linktitle: Inserir Checkboxes, entrada de texto ou imagens
description: "Insira checkbox es ou campos de entrada de texto durante Mail Merge usando Java. Insira também imagens de uma base de dados durante Mail Merge em Java."
type: docs
weight: 20
url: /pt/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

O mecanismo de mesclagem pega um documento como entrada, procura campos `MERGEFIELD` nele e os substitui pelos dados obtidos da fonte de dados. Normalmente, texto simples e HTML são inseridos, mas Aspose.Words os usuários também podem gerar um documento que lida com cenários mais incomuns para os campos Mail Merge.

A poderosa funcionalidade Aspose.Words permite estender o processo Mail Merge:

- inserir checkboxes e campos de formulário de entrada de texto no documento durante um mail merge
- inserir imagens de qualquer armazenamento Personalizado (ficheiros, campos BLOB, etc.)

## Inserir Checkboxes e entrada de texto durante Mail Merge

Às vezes, é necessário executar uma operação Mail Merge para que não seja substituído texto no campo de mesclagem, mas um checkbox ou campo de entrada de texto. Embora este não seja o cenário mais comum, é muito útil para algumas tarefas.

A captura de tela a seguir de um documento do Word mostra um modelo com campos de mesclagem:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

Esta captura de tela do documento do Word abaixo mostra o documento já gerado:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

Observe que alguns campos foram substituídos por texto simples, alguns campos foram substituídos por campos de formulário checkbox e o campo `Subject` foi substituído por um campo de entrada de texto.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir checkboxes e inserir campos de texto em um documento durante um mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Inserir imagens durante Mail Merge

Ao executar uma operação Mail Merge, você pode inserir imagens do banco de dados no documento usando campos especiais de imagem Mail Merge. O campo image Mail Merge é um campo de mesclagem denominado Image: MyFieldName.

### Inserir imagens de uma base de dados

Durante um mail merge, quando um campo image Mail Merge é encontrado em um documento, o evento [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback) é disparado. Você pode responder a esse evento para retornar um nome de arquivo, fluxo ou objeto de imagem ao mecanismo Mail Merge para que ele possa ser inserido no documento.

O exemplo de código a seguir mostra como inserir imagens armazenadas em um campo de banco de dados BLOB em um relatório:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Definir Propriedades da imagem durante Mail Merge

Ao mesclar um campo de mesclagem de imagem, às vezes é necessário controlar várias propriedades de imagem, como [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

Atualmente, usando [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) você só pode definir as propriedades de largura ou altura da imagem, respectivamente. Para superar esse problema, Aspose.Words fornece a propriedade [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape), o que facilita o controle total sobre a imagem inserida ou qualquer outra forma.

O exemplo de código a seguir mostra como definir várias propriedades de imagem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

