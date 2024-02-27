---
title: Especifique opções de carregamento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especifique opções de carregamento
linktitle: Especifique opções de carregamento
description: "Controle com mais precisão o processo de carregamento usando Python."
type: docs
weight: 10
url: /pt/python-net/specify-load-options/
---

Ao carregar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), que permite um controle mais preciso do processo de carregamento. Alguns formatos de carregamento possuem uma classe correspondente que contém opções de carregamento para este formato de carregamento, por exemplo, há [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) para carregar em formato PDF ou [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) para carregar em TXT. Este artigo fornece exemplos de como trabalhar com opções da classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Defina a versão Microsoft Word para alterar a aparência

Diferentes versões do aplicativo Microsoft Word podem exibir documentos de maneira diferente. Por exemplo, há um problema bem conhecido com documentos OOXML, como DOCX ou DOTX, produzidos usando o WPS Office. Nesse caso, elementos essenciais de marcação do documento podem estar faltando ou podem ser interpretados de forma diferente, fazendo com que o Microsoft Word 2019 mostre tal documento de forma diferente em comparação com o Microsoft Word 2010.

Por padrão, o Aspose.Words abre documentos usando as regras Microsoft Word 2019. Se você precisar fazer com que o carregamento do documento apareça como aconteceria em uma das versões anteriores da aplicação Microsoft Word, você deve especificar explicitamente a versão desejada usando a propriedade [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) da classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

O exemplo de código a seguir mostra como definir a versão Microsoft Word com opções de carregamento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Defina preferências de idioma para alterar a aparência

Os detalhes da exibição de um documento em Microsoft Word dependem não apenas da versão do aplicativo e do valor da propriedade [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), mas também das configurações de idioma. Microsoft Word pode mostrar documentos de forma diferente dependendo das configurações da caixa de diálogo "Preferências de idioma do Office", que podem ser encontradas em "Arquivo → Opções → Idioma". Usando esta caixa de diálogo, um usuário pode selecionar, por exemplo, idioma principal, idiomas de revisão, idiomas de exibição e assim por diante. Aspose.Words fornece a propriedade [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) como equivalente a esta caixa de diálogo. Se a saída Aspose.Words for diferente da saída Microsoft Word, defina o valor apropriado para [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – isso pode melhorar o documento de saída.

O exemplo de código a seguir mostra como definir o japonês como [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Use TempFolder para evitar uma exceção de memória

Aspose.Words suporta documentos extremamente grandes que possuem milhares de páginas cheias de conteúdo rico. Carregar esses documentos pode exigir muita RAM. No processo de carregamento, o Aspose.Words precisa de ainda mais memória para armazenar estruturas temporárias usadas para analisar um documento.

Se você tiver um problema com a exceção de memória insuficiente ao carregar um documento, tente usar a propriedade [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). Nesse caso, o Aspose.Words armazenará alguns dados em arquivos temporários em vez de na memória, e isso pode ajudar a evitar tal exceção.

O exemplo de código a seguir mostra como definir [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Defina a codificação explicitamente

A maioria dos formatos de documentos modernos armazena seu conteúdo em Unicode e não requer tratamento especial. Por outro lado, ainda existem muitos documentos que usam alguma codificação pré-Unicode e, às vezes, perdem informações de codificação ou nem mesmo suportam a codificação de informações por natureza. Aspose.Words tenta detectar automaticamente a codificação apropriada por padrão, mas em casos raros você pode precisar usar uma codificação diferente daquela detectada pelo nosso algoritmo de reconhecimento de codificação. Neste caso, use a propriedade [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) para obter ou definir a codificação.

O exemplo de código a seguir mostra como definir a codificação para substituir a codificação escolhida automaticamente:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Carregar documentos criptografados

Você pode carregar documentos do Word criptografados com uma senha. Para fazer isso, use uma sobrecarga de construtor especial, que aceita um objeto [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Este objeto contém a propriedade [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), que especifica a string da senha.

O exemplo de código a seguir mostra como carregar um documento criptografado com senha:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Se você não souber antecipadamente se o arquivo está criptografado, poderá usar a classe [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), que fornece métodos utilitários para trabalhar com formatos de arquivo, como detectar o formato do arquivo ou converter extensões de arquivo de/para enumerações de formato de arquivo. Para detectar se o documento está criptografado e requer uma senha para abri-lo, use a propriedade [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

O exemplo de código a seguir mostra como verificar se o documento está criptografado ou não:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
