---
title: Opções e aparência do documento Word
second_title: Aspose.Words para Python
articleTitle: Trabalhe com opções e aparência de documentos do Word
linktitle: Trabalhe com opções e aparência de documentos do Word
description: "Controle a aparência dos documentos do Word levando em consideração a diferença entre as várias versões Microsoft Word usando Python."
type: docs
weight: 40
url: /pt/python-net/work-with-word-document-options-and-appearance/
---

Às vezes você pode precisar alterar a aparência de um documento, por exemplo, definir preferências de idioma ou o número de linhas por página. Aspose.Words oferece a capacidade de controlar como o documento será exibido, bem como algumas opções adicionais. Este artigo descreve essas possibilidades.

## Definir opções de exibição de documentos

Você pode controlar como um documento será exibido em Microsoft Word usando a classe [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Por exemplo, você pode definir um valor de zoom de documento usando a propriedade [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) ou o modo de visualização usando a propriedade [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

O exemplo de código a seguir mostra como garantir que um documento seja exibido em 50% quando aberto em Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 não grava nenhum fator de zoom em um documento e não define mais o zoom padrão do valor gravado no documento; em vez disso, parece usar o fator de zoom do último documento aberto.

{{% /alert %}}

## Definir opções de exibição de página

Se quiser definir o número de caracteres por linha, use a propriedade [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). Você também pode definir o número de linhas por página para um documento do Word – use a propriedade [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) para obter ou definir o número de linhas por página na grade do documento.

{{% alert color="primary" %}}

No Microsoft Word, você pode definir os mesmos parâmetros usando a guia "Grade de documentos" na caixa de diálogo "Configurar página" somente quando o suporte ao idioma asiático estiver instalado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o número de caracteres por linha e o número de linhas por página para um documento Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Definir preferências de idioma

A exibição de um documento em Microsoft Word depende de quais idiomas estão definidos como padrão para este documento. Se nenhum idioma estiver definido como padrão, o Microsoft Word obtém informações da caixa de diálogo "Definir preferências de idioma do Office", que, por exemplo, pode ser encontrada em "Arquivo → Opções → Idioma" no Microsoft Word 2019.

Com Aspose.Words, você também pode configurar preferências de idioma usando a classe [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). Observe também que para a exibição correta do seu documento é necessário definir a versão Microsoft Word que o processo de carregamento do documento deve corresponder – isso pode ser feito utilizando a propriedade [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Se o documento Aspose.Words gerado não tiver a aparência esperada, verifique os valores [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) e [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) e ajuste-os, se necessário, para corresponder às configurações da sua versão Microsoft Word.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar japonês aos idiomas de edição:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

O exemplo de código a seguir mostra como definir o russo como idioma de edição padrão:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Otimize um documento para uma versão específica do Word

O método [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) permite otimizar o conteúdo do documento, bem como o comportamento Aspose.Words padrão para uma versão específica do Microsoft Word. Você pode usar este método para evitar que o Microsoft Word exiba a faixa "Modo de compatibilidade" ao carregar o documento. Observe que também pode ser necessário definir a propriedade [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) como [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) ou superior.

O exemplo de código a seguir mostra como otimizar o conteúdo do documento para Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
