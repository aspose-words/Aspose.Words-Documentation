---
title: Opções e aparência do documento Word
second_title: Aspose.Words para .NET
articleTitle: Trabalhe com opções e aparência de documentos do Word
linktitle: Trabalhe com opções e aparência de documentos do Word
description: "Controle a aparência dos documentos do Word levando em consideração a diferença entre as várias versões Microsoft Word usando C#."
type: docs
weight: 40
url: /pt/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Às vezes você pode precisar alterar a aparência de um documento, por exemplo, definir preferências de idioma ou o número de linhas por página. Aspose.Words oferece a capacidade de controlar como o documento será exibido, bem como algumas opções adicionais. Este artigo descreve essas possibilidades.

## Definir opções de exibição de documentos

Você pode controlar como um documento será exibido em Microsoft Word usando a classe [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Por exemplo, você pode definir um valor de zoom de documento usando a propriedade [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) ou o modo de visualização usando a propriedade [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

O exemplo de código a seguir mostra como garantir que um documento seja exibido em 50% quando aberto em Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 não grava nenhum fator de zoom em um documento e não define mais o zoom padrão do valor gravado no documento; em vez disso, parece usar o fator de zoom do último documento aberto.

{{% /alert %}}

## Definir opções de exibição de página

Se quiser definir o número de caracteres por linha, use a propriedade [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Você também pode definir o número de linhas por página para um documento do Word – use a propriedade [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) para obter ou definir o número de linhas por página na grade do documento.

{{% alert color="primary" %}}

No Microsoft Word, você pode definir os mesmos parâmetros usando a guia "Grade de documentos" na caixa de diálogo "Configurar página" somente quando o suporte ao idioma asiático estiver instalado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o número de caracteres por linha e o número de linhas por página para um documento Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Definir preferências de idioma

A exibição de um documento em Microsoft Word depende de quais idiomas estão definidos como padrão para este documento. Se nenhum idioma estiver definido como padrão, o Microsoft Word obtém informações da caixa de diálogo "Definir preferências de idioma do Office", que, por exemplo, pode ser encontrada em "Arquivo → Opções → Idioma" no Microsoft Word 2019.

Com Aspose.Words, você também pode configurar preferências de idioma usando a classe [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Observe também que para a exibição correta do seu documento é necessário definir a versão Microsoft Word que o processo de carregamento do documento deve corresponder – isso pode ser feito utilizando a propriedade [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Se o documento Aspose.Words gerado não tiver a aparência esperada, verifique os valores **LanguagePreferences** e **MswVersion** e ajuste-os, se necessário, para corresponder às configurações da sua versão Microsoft Word.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar japonês aos idiomas de edição:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

O exemplo de código a seguir mostra como definir o russo como idioma de edição padrão:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Otimize um documento para uma versão específica do Word

O método [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) permite otimizar o conteúdo do documento, bem como o comportamento Aspose.Words padrão para uma versão específica do Microsoft Word. Você pode usar este método para evitar que o Microsoft Word exiba a faixa "Modo de compatibilidade" ao carregar o documento. Observe que também pode ser necessário definir a propriedade `Compliance` como Iso29500_2008_Transitional ou superior.

O exemplo de código a seguir mostra como otimizar o conteúdo do documento para Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
