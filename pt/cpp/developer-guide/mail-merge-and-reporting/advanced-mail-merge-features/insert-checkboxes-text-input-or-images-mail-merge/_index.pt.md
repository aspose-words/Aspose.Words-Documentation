---
title: Inserir Checkboxes, entrada de texto ou imagens durante Mail Merge
second_title: Aspose.Words para C++
articleTitle: Inserir Checkboxes, entrada de texto ou imagens
linktitle: Inserir Checkboxes, entrada de texto ou imagens
description: "Inserir caixas de seleção ou campos de entrada de texto durante Mail Merge utilização C++. Inserir também imagens de uma base de dados durante Mail Merge em C++."
type: docs
weight: 40
url: /pt/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

O mecanismo de mesclagem pega um documento como entrada, procura `MERGEFIELD` e substitui - os pelos dados obtidos a partir da fonte de dados. Normalmente, texto simples e HTML são inseridos, mas Aspose.Words os usuários também podem gerar um documento que lida com cenários mais incomuns para Mail Merge fields.

Poderoso Aspose.Words a funcionalidade permite-lhe alargar o Mail Merge processo:

- inserir caixas de seleção e campos de formulário de entrada de texto no documento durante um mail merge
- inserir imagens de qualquer armazenamento Personalizado (ficheiros, BLOB campos, etc.)

## Inserir Checkboxes e entrada de texto durante Mail Merge

Às vezes, é necessário realizar um Mail Merge operação para que não seja substituído texto no campo de mesclagem, mas uma caixa de seleção ou campo de entrada de texto. Embora este não seja o cenário mais comum, é muito útil para algumas tarefas.

A captura de tela a seguir de um documento do Word mostra um modelo com campos de mesclagem:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Esta captura de tela do documento do Word abaixo mostra o documento já gerado:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Observe que alguns campos foram substituídos por texto simples, alguns campos foram substituídos por campos de formulário `Subject` o campo foi substituído por um campo de introdução de texto.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir caixas de seleção e inserir campos de texto em um documento durante um mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Inserir imagens durante Mail Merge

Ao realizar um Mail Merge operação, você pode inserir imagens do banco de dados no documento usando imagem especial Mail Merge fields. A imagem Mail Merge campo é um campo de mesclagem denominado imagem:MyFieldName.

### Inserir imagens de uma base de dados

Durante a mail merge, quando uma imagem Mail Merge campo é encontrado em um documento, o [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) o evento é disparado. Você pode responder a esse evento para retornar um nome de arquivo, fluxo ou objeto de imagem Mail Merge motor para que possa ser inserido no documento.

O exemplo de código a seguir mostra como inserir imagens armazenadas em um banco de dados BLOB campo num relatório:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Definir Propriedades da imagem durante Mail Merge

Ao mesclar um campo de mesclagem de imagem, às vezes é necessário controlar várias propriedades de imagem, como [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Atualmente, usando [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) você só pode definir as propriedades de largura ou altura da imagem, respectivamente. Para ultrapassar esta questão, Aspose.Words fornece o [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) propriedade, que facilita para obter o controlo total sobre a imagem inserida ou qualquer outra forma.

O exemplo de código a seguir mostra como definir várias propriedades da imagem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
