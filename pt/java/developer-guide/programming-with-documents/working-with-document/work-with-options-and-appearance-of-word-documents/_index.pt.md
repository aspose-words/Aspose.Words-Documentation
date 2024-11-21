---
title: Opções e Aparência de Documentos do Word
second_title: Aspose.Words para Java
articleTitle: Trabalho com Opções e Aparência de Documentos do Word
linktitle: Trabalho com Opções e Aparência de Documentos do Word
description: "Controlar a aparência de documentos do Word levando em conta a diferença entre vários Microsoft Word versões usando Java."
type: docs
weight: 40
url: /pt/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Às vezes você pode precisar alterar a aparência de um documento, por exemplo, definir preferências de idioma ou o número de linhas por página.Aspose.Words fornece a capacidade de controlar como o documento será exibido, bem como algumas opções adicionais. Este artigo descreve tais possibilidades.

## Definir opções de exibição de documentos

Você pode controlar como um documento será exibido em Microsoft Word usando o [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) classe. Por exemplo, você pode definir um valor de zoom de documento usando o [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) propriedade ou o modo de exibição usando [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) propriedade.

O exemplo a seguir mostra como garantir que um documento seja exibido em 50% quando aberto Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 não escreve nenhum fator de zoom para um documento e não define mais o zoom padrão do valor escrito para o documento, em vez disso, parece usar o fator de zoom do último documento aberto.

{{% /alert %}}

## Definir opções de exibição de página

Se você quiser definir o número de caracteres por linha, use o [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) propriedade. Você também pode definir o número de linhas por página para um documento do Word – use o [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) propriedade para obter ou definir o número de linhas por página na grade do documento.

{{% alert color="primary" %}}

Em Microsoft Word, você pode definir os mesmos parâmetros usando a aba "Doument Grid" na caixa de diálogo "Page Setup" somente quando o suporte de idioma asiático é instalado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o número de caracteres por linha e o número de linhas por página para uma Microsoft Word documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Definir preferências de idioma

Exibindo um documento em Microsoft Word depende de quais idiomas são definidos como padrão para este documento. Se nenhum idioma for definido como padrão, Microsoft Word leva informações da caixa de diálogo "Set Office Language Preferences", que, por exemplo, pode ser encontrado em "File → Opções → Idioma" em Microsoft Word 2019.

Com Aspose.Words, você também pode configurar preferências de idioma usando [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) classe. Observe também que para a exibição correta do seu documento é necessário definir o Microsoft Word versão que o processo de carregamento do documento deve corresponder – isso pode ser feito usando o [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propriedade.

{{% alert color="primary" %}}

Se você Aspose.Words documento gerado não parece como esperado, verifique o **LanguagePreferences** e **MswVersion** valores e ajuste-os se necessário para combinar as configurações para o seu Microsoft Word versão.

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar japonês a linguagens de edição:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

O exemplo de código a seguir mostra como definir o russo como o idioma de edição padrão:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Otimizar um documento para um particular Versão do Word

O [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) método permite otimizar o conteúdo do documento, bem como o padrão Aspose.Words comportamento para uma versão específica Microsoft Word. Você pode usar este método para evitar Microsoft Word de exibir a fita "modo de compatibilidade" no carregamento de documentos. Note que você também pode precisar definir o `Compliance` propriedade para Iso29500_2008_Transitional ou superior.

O exemplo a seguir mostra como otimizar o conteúdo do documento para Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
