---
title: Mail Merge modelo em C#
second_title: Aspose.Words para .NET
articleTitle: Mail Merge Modelo
linktitle: Mail Merge Modelo
type: docs
description: "Crie um modelo Mail Merge para definir conteúdo fixo em documentos de saída e, em seguida, gere documentos de mesclagem usando os campos de mesclagem em C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /pt/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

É comum usar um modelo de mesclagem como documento base para uma operação Mail Merge se for um simples Mail Merge ou Mail Merge com regiões. Mail merge com regiões é mais poderoso e popular do que o simples mail merge. Simples Mail Merge é considerado como um caso particular de Mail Merge com regiões onde a região é o documento completo. Tudo é explicado no próximo artigo" Tipos de Mail Merge operação " em mais detalhes.

O modelo garante que o texto no documento mesclado de saída seja formatado corretamente e a operação Mail Merge garante que o texto da fonte de dados seja inserido corretamente no modelo de mesclagem.

Aspose.Words fornece a capacidade de criar um modelo Mail Merge para definir conteúdo fixo e, em seguida, gerar documentos de mesclagem usando os campos de mesclagem. Assim, o modelo de mesclagem terá o texto necessário, que é o mesmo em todos os documentos de saída, e os campos de mesclagem para preencher o conteúdo em mudança. Como resultado, as informações da fonte de dados especificada serão adicionadas ao modelo de mesclagem por meio desses campos durante a geração do documento mesclado.

## O que é um modelo Mail Merge

Um modelo Mail Merge é um documento personalizado que contém os dados fixos e os campos mesclados onde você deseja que o texto da variável esteja. Um modelo de mesclagem pode estar em qualquer formato que suporte campos, por exemplo, DOC, DOCX, DOT, DOTX, RTF. Além disso, você também pode usar o modelo mustache explicado no artigo "sintaxe do ModeloMustache" em mais detalhes.

Você pode criar um modelo de mesclagem para ser um modelo para novos documentos e deve incluir o texto principal que precisa ser o mesmo para cada versão do documento mesclado. A adição de campos de mesclagem dentro do modelo representará os dados de personalização, como nomes ou endereços obtidos de uma fonte de dados. Uma operação Mail Merge irá inserir automaticamente os dados de personalização da sua fonte de dados no documento do modelo de mesclagem.

Além disso, pode adicionar uma região Mail Merge ao seu modelo inserindo dois campos Mail Merge para marcar o início e o fim da região de correio. O próximo artigo" Tipos de operação Mail Merge " explica isso com mais detalhes.

## Criar um modelo Mail Merge

Você pode criar um modelo e adicionar campos de mesclagem específicos a ele, que serão substituídos pelos valores da fonte de dados manualmente, por exemplo, usando Microsoft Word ou programaticamente usando Aspose.Words. Neste artigo, veremos a maneira programática de criar um modelo.

Use a classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para criar o modelo de mesclagem necessário usando Aspose.Words. É possível incluir um texto, um campo de mesclagem e uma quebra de linha nesse modelo usando os métodos [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) e [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

O exemplo de código a seguir mostra como criar um modelo Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

A figura abaixo mostra o modelo criado:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizar as propriedades de um modelo Mail Merge

Aspose.Words permite-lhe personalizar o seu modelo através de muitas propriedades. A personalização do modelo será descrita abaixo através de um exemplo de personalização de algumas propriedades de imagens e texto.

### Personalizar As Propriedades Da Imagem

Você pode especificar as propriedades da imagem usando a classe [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Observe que você pode inserir uma imagem de um banco de dados conforme descrito em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

O exemplo de código a seguir mostra como especificar o nome do arquivo de imagem e o tamanho da imagem:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Personalizar As Propriedades Do Texto

Você pode usar a propriedade [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) para inserir texto no documento para o campo de mesclagem atual. Além disso, você pode alterar a formatação de textos e parágrafos dentro do seu modelo usando as classes [Font](https://reference.aspose.com/words/net/aspose.words/font/) e [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Você pode manipular o texto a ser inserido antes ou depois do campo de mesclagem usando as propriedades [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) e [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) incluídas na classe [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

O exemplo de código a seguir mostra como inserir Caixas de seleção ou HTML durante a operação Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Você também pode verificar a implementação da classe `HandleMergeField` de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Ver Também

* Para obter mais detalhes sobre como criar modelos em Microsoft Word manualmente, verifique o [Criar um modelo](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artigo na documentação Microsoft
