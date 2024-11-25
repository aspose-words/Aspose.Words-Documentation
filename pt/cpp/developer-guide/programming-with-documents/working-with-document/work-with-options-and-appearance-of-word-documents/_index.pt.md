---
title: Opções e aparência de documentos do Word
second_title: Aspose.Words para C++
articleTitle: Trabalhar com opções e aparência de documentos do Word
linktitle: Trabalhar com opções e aparência de documentos do Word
description: "Controlar a aparência dos documentos do Word, tendo em conta a diferença entre as várias versões Microsoft Word."
type: docs
weight: 40
url: /pt/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Às vezes, pode ser necessário alterar a aparência de um documento, por exemplo, definir preferências de idioma ou o número de linhas por página.Aspose.Words fornece a capacidade de controlar como o documento será exibido, bem como algumas opções adicionais. Este artigo descreve essas possibilidades.

## Definir Opções De Apresentação Do Documento

Você pode controlar como um documento será exibido em Microsoft Word usando a classe [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Por exemplo, pode definir um valor de zoom do documento utilizando a propriedade [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) ou o modo de visualização utilizando a propriedade [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

O exemplo de código a seguir mostra como garantir que um documento seja exibido em 50% quando aberto em Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 não grava nenhum fator de zoom em um documento e não define mais o zoom padrão do valor gravado no documento; em vez disso, parece usar o Fator de zoom do último documento aberto.

{{% /alert %}}

## Definir Opções De Apresentação Da Página

Se pretender definir o número de caracteres por linha, utilize a propriedade [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Você também pode definir o número de linhas por página para um documento do Word – use a propriedade [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) para obter ou definir o número de linhas por página na grade do documento.

{{% alert color="primary" %}}

Em Microsoft Word, você pode definir os mesmos parâmetros usando a guia " Grade do documento "na caixa de diálogo" Configuração da Página " somente quando o Suporte ao Idioma Asiático estiver instalado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o número de caracteres por linha e o número de linhas por página para um documento Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Definir Preferências De Idioma

Exibir um documento em Microsoft Word depende de quais idiomas são definidos como padrão para este documento. Se nenhum idioma for definido como predefinido, Microsoft Word obtém informações da caixa de diálogo" Definir preferências de idioma do Office", que, por exemplo, pode ser encontrada em" Ficheiro de Opções de arquivo de Opções de idioma " em Microsoft Word 2019.

Com Aspose.Words, Você também pode configurar preferências de idioma usando a classe [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Observe também que, para a exibição correta do seu documento, é necessário definir a versão Microsoft Word que o processo de carregamento do documento deve corresponder – isso pode ser feito usando a propriedade [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Se o seu documento gerado Aspose.Words não tiver o aspeto esperado, verifique os valores **LanguagePreferences** e **MswVersion** e ajuste-os, se necessário, para corresponder às definições da sua versão Microsoft Word.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar Japonês aos idiomas de edição:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

O exemplo de código a seguir mostra como definir o russo como o idioma de edição padrão:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Otimizar um documento para uma versão específica do Word

O método [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) permite otimizar o conteúdo do documento, bem como o comportamento padrão Aspose.Words para uma versão específica de Microsoft Word. Pode utilizar este método para evitar que Microsoft Word exiba a faixa de opções "Modo de compatibilidade" aquando do Carregamento do documento. Observe que também pode ser necessário definir a propriedade `Compliance` Como Iso29500_2008_Transitional ou superior.

O exemplo de código a seguir mostra como otimizar o conteúdo do documento para Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}