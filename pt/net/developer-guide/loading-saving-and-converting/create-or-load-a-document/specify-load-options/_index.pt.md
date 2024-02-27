---
title: Especifique opções de carregamento em C#
second_title: Aspose.Words para .NET
articleTitle: Especifique opções de carregamento
linktitle: Especifique opções de carregamento
description: "Controle com mais precisão o processo de carregamento usando C#."
type: docs
weight: 10
url: /pt/net/specify-load-options/
---

Ao carregar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), que permite um controle mais preciso do processo de carregamento. Alguns formatos de carregamento possuem uma classe correspondente que contém opções de carregamento para este formato de carregamento, por exemplo, há [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) para carregar em formato PDF ou [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) para carregar em TXT. Este artigo fornece exemplos de como trabalhar com opções da classe **LoadOptions**.

## Defina a versão Microsoft Word para alterar a aparência

Diferentes versões do aplicativo Microsoft Word podem exibir documentos de maneira diferente. Por exemplo, há um problema bem conhecido com documentos OOXML, como DOCX ou DOTX, produzidos usando o WPS Office. Nesse caso, elementos essenciais de marcação do documento podem estar faltando ou podem ser interpretados de forma diferente, fazendo com que o Microsoft Word 2019 mostre tal documento de forma diferente em comparação com o Microsoft Word 2010.

Por padrão, o Aspose.Words abre documentos usando as regras do Microsoft Word 2019. Se você precisar fazer com que o carregamento do documento apareça como aconteceria em uma das versões anteriores da aplicação Microsoft Word, você deve especificar explicitamente a versão desejada usando a propriedade [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) da classe **LoadOptions**.

O exemplo de código a seguir mostra como definir a versão Microsoft Word com opções de carregamento:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Defina preferências de idioma para alterar a aparência

Os detalhes da exibição de um documento em Microsoft Word dependem não apenas da versão do aplicativo e do valor da propriedade **MswVersion**, mas também das configurações de idioma. Microsoft Word pode mostrar documentos de forma diferente dependendo das configurações da caixa de diálogo "Preferências de idioma do Office", que podem ser encontradas em "Arquivo → Opções → Idioma". Usando esta caixa de diálogo, um usuário pode selecionar, por exemplo, o idioma principal, os idiomas de revisão, os idiomas de exibição e assim por diante. Aspose.Words fornece a propriedade [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) como equivalente a esta caixa de diálogo. Se a saída Aspose.Words for diferente da saída Microsoft Word, defina o valor apropriado para **EditingLanguage** – isso pode melhorar o documento de saída.

O exemplo de código a seguir mostra como definir o japonês como **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Use WarningCallback para controlar problemas ao carregar um documento

Alguns documentos podem estar corrompidos, conter entradas inválidas ou ter recursos não suportados atualmente pelo Aspose.Words. Se você deseja saber sobre problemas ocorridos ao carregar um documento, Aspose.Words disponibiliza a interface [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

O exemplo de código a seguir mostra a implementação da interface **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Para obter informações sobre todos os problemas durante o tempo de carregamento, use a propriedade [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Use ResourceLoadingCallback para controlar o carregamento de recursos externos

Um documento pode conter links externos para imagens localizadas em algum lugar de um disco local, rede ou Internet. Aspose.Words carrega automaticamente essas imagens em um documento, mas há situações em que esse processo precisa ser controlado. Por exemplo, para decidir se realmente precisamos carregar uma determinada imagem ou talvez ignorá-la. A opção de carregamento [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) permite controlar isso.

O exemplo de código a seguir mostra a implementação da interface [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

O exemplo de código a seguir mostra como usar a propriedade **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Use TempFolder para evitar uma exceção de memória

Aspose.Words suporta documentos extremamente grandes que possuem milhares de páginas cheias de conteúdo rico. Carregar esses documentos pode exigir muita RAM. No processo de carregamento, o Aspose.Words precisa de ainda mais memória para armazenar estruturas temporárias usadas para analisar um documento.

Se você tiver um problema com a exceção de memória insuficiente ao carregar um documento, tente usar a propriedade [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). Nesse caso, o Aspose.Words armazenará alguns dados em arquivos temporários em vez de na memória, e isso pode ajudar a evitar tal exceção.

O exemplo de código a seguir mostra como definir **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Defina a codificação explicitamente

A maioria dos formatos de documentos modernos armazena seu conteúdo em Unicode e não requer tratamento especial. Por outro lado, ainda existem muitos documentos que usam alguma codificação pré-Unicode e, às vezes, perdem informações de codificação ou nem mesmo suportam a codificação de informações por natureza. Aspose.Words tenta detectar automaticamente a codificação apropriada por padrão, mas em casos raros você pode precisar usar uma codificação diferente daquela detectada pelo nosso algoritmo de reconhecimento de codificação. Neste caso, use a propriedade [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) para obter ou definir a codificação.

O exemplo de código a seguir mostra como definir a codificação para substituir a codificação escolhida automaticamente:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Carregar documentos criptografados

Você pode carregar documentos do Word criptografados com uma senha. Para fazer isso, use uma sobrecarga de construtor especial, que aceita um objeto [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). Este objeto contém a propriedade [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), que especifica a string da senha.

O exemplo de código a seguir mostra como carregar um documento criptografado com senha:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Se você não souber antecipadamente se o arquivo está criptografado, poderá usar a classe [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), que fornece métodos utilitários para trabalhar com formatos de arquivo, como detectar o formato do arquivo ou converter extensões de arquivo de/para enumerações de formato de arquivo. Para detectar se o documento está criptografado e requer uma senha para abri-lo, use a propriedade [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

O exemplo de código a seguir mostra como verificar se o OpenDocument está criptografado ou não:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
