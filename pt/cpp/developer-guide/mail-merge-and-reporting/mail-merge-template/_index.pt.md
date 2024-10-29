---
title: Mail Merge Modelo em C++
second_title: Aspose.Words para C++
articleTitle: Mail Merge Modelo
linktitle: Mail Merge Modelo
type: docs
description: "Criar um mail merge modelo para definir conteúdo fixo em documentos de saída e, em seguida, gerar documentos de mesclagem usando os campos de mesclagem."
keywords: "create mail merge template с++"
weight: 10
url: /pt/cpp/mail-merge-template/
---

É comum usar um modelo de mesclagem como documento base para um mail merge operação ou se for um simples mail merge ou mail merge com regiões. Mail merge com regiões é mais poderoso e popular do que o simples mail merge. Simples mail merge é considerado como um caso particular de mail merge com regiões onde a região é o documento completo. Tudo é explicado no próximo artigo "Tipos de Mail Merge Operação " em mais detalhes.

O modelo garante que o texto no documento mesclado de saída esteja formatado corretamente e mail merge a operação garante que o texto da fonte de dados é correctamente introduzido no modelo de fusão.

Aspose.Words fornece a capacidade de criar um mail merge modelo para definir conteúdo fixo e, em seguida, gerar documentos de mesclagem usando os campos de mesclagem. Assim, o modelo de mesclagem terá o texto necessário, que é o mesmo em todos os documentos de saída, e os campos de mesclagem para preencher o conteúdo em mudança. Como resultado, as informações da fonte de dados especificada serão adicionadas ao modelo de mesclagem por meio desses campos durante a geração do documento mesclado.

## O que é um Mail Merge Modelo

A mail merge modelo é personalizado documento que contém os dados fixos e os campos mesclados onde deseja que a variável texto a ser. Um modelo de impressão pode ser em qualquer formato que ofereça suporte a campos, por exemplo, DOC, DOCX, DOT, DOTX, RTF. Além disso, você também pode usar o mustache modelo que é explicado no artigo "Mustache Modelo de Sintaxe" em mais detalhes.

Você pode criar um modelo de mesclagem para ser um modelo para novos documentos e deve incluir o texto principal que precisa ser o mesmo para cada versão do documento mesclado. A adição de campos de mesclagem dentro do modelo representará os dados de personalização, como nomes ou endereços obtidos de uma fonte de dados. A mail merge a operação inserirá automaticamente os dados de personalização da sua fonte de dados no documento do modelo de mesclagem.

Além disso, você pode adicionar um mail merge região em seu modelo inserindo dois mail merge campos para marcar o início e o fim da região de correio. O próximo artigo "Tipos de Mail Merge Operação " explica isso com mais detalhes.

## Criar um Mail Merge Modelo

Você pode criar um modelo e adicionar campos de mesclagem específicos a ele, que serão substituídos pelos valores da fonte de dados manualmente, por exemplo, usando Microsoft Word, ou programaticamente usando Aspose.Words. Neste artigo, veremos a maneira programática de criar um modelo.

Use o [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) classe para criar o modelo de mesclagem necessário usando Aspose.Words. Você pode incluir um texto, um campo de mesclagem e uma quebra de linha em tal modelo usando o [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), e [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) métodos.

O exemplo de código a seguir mostra como criar um mail merge modelo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

A figura abaixo mostra o modelo criado:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Personalizar um Mail Merge Propriedades Do Modelo

Aspose.Words permite-lhe personalizar o seu modelo através de muitas propriedades. A personalização do modelo será descrita abaixo através de um exemplo de personalização de algumas propriedades de imagens e texto.

### Personalizar As Propriedades Da Imagem

Você pode especificar as propriedades da imagem usando o [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) classe.

O exemplo de código a seguir mostra como especificar o nome do arquivo de imagem e tamanho da imagem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Personalizar As Propriedades Do Texto

Você pode usar o [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) propriedade para inserir texto no documento para o campo de mesclagem atual. Além disso, você pode alterar a formatação de textos e parágrafos dentro do seu modelo usando [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) e [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) aulas. Você pode manipular o texto a ser inserido antes ou depois do campo de mesclagem usando o [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) e [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) propriedades que estão incluídas no [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) classe.

O exemplo de código a seguir mostra como inserir Caixas de seleção ou HTML durante mail merge operação:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Você também pode verificar a implementação do `HandleMergeField` classe de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Ver Também

* Para mais detalhes sobre como criar modelos em Microsoft Word manualmente, verifique por favor [Criar um modelo](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artigo no Microsoft Documentação
