---
title: Mail Merge modelo em Python
second_title: Aspose.Words Para Python via .NET
articleTitle: Mail Merge Modelo
linktitle: Mail Merge Modelo
type: docs
description: "Crie um modelo Mail Merge para definir conteúdo fixo em documentos de saída e, em seguida, gere documentos de mesclagem usando os campos de mesclagem em Python."
keywords: "create Mail Merge template python"
weight: 10
url: /pt/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

Use a classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para criar o modelo de mesclagem necessário usando Aspose.Words. É possível incluir um texto, um campo de mesclagem e uma quebra de linha nesse modelo usando os métodos [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) e [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

O exemplo de código a seguir mostra como criar um modelo Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

A figura abaixo mostra o modelo criado:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personalizar as propriedades de um modelo Mail Merge

Aspose.Words permite-lhe personalizar o seu modelo através de muitas propriedades. A personalização do modelo será descrita abaixo através de um exemplo de personalização de algumas propriedades de imagens e texto.

## Ver Também

* Para obter mais detalhes sobre como criar modelos em Microsoft Word manualmente, verifique o [Criar um modelo](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) artigo na documentação Microsoft
