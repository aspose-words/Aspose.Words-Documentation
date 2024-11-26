---
title: Especifique as opções de carregamento em Java
second_title: Aspose.Words para Java
articleTitle: Especificar Opções De Carregamento
linktitle: Especificar Opções De Carregamento
description: "Defina propriedades avançadas ao carregar um documento usando Java para obter um controle mais preciso do processo."
type: docs
weight: 10
url: /pt/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Ao carregar um documento, pode definir algumas propriedades avançadas. Aspose.Words fornece a classe [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/), que permite um controle mais preciso do processo de carga. Alguns formatos de carga têm uma classe correspondente que contém opções de carga para este formato de carga, por exemplo, existe [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) para carregar para o formato PDF ou [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) para carregar para TXT. Este artigo fornece exemplos de trabalho com opções da classe **LoadOptions**.

## Definir Microsoft Word versão para alterar a aparência

Diferentes versões do aplicativo Microsoft Word podem exibir documentos de forma diferente. Por exemplo, existe um problema bem conhecido com OOXML documentos como DOCX ou DOTX produzidos utilizando WPS Office. Nesses casos, os elementos essenciais de marcação de documentos podem estar ausentes ou podem ser interpretados de forma diferente, fazendo com que Microsoft Word 2019 mostre tal documento de forma diferente em comparação com Microsoft Word 2010.

Por padrão, Aspose.Words abre documentos usando as regras Microsoft Word 2019. Se você precisar fazer com que o carregamento de documentos apareça como aconteceria em uma das versões anteriores do aplicativo Microsoft Word, especifique explicitamente a versão desejada usando a propriedade [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) da classe **LoadOptions**.

O exemplo de código a seguir mostra como definir a versão Microsoft Word com opções de carregamento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Definir preferências de idioma para alterar a aparência

Os detalhes da exibição de um documento em Microsoft Word dependem não apenas da versão do aplicativo e do valor da propriedade **MswVersion**, mas também das configurações de idioma. Microsoft Word pode apresentar documentos de forma diferente, dependendo das definições da caixa de diálogo "Preferências de idioma do Office", que pode ser encontrada em "Ficheiro Opções de Ficheiro Opções de idioma". Utilizando esta caixa de diálogo, o utilizador pode seleccionar, por exemplo, o idioma principal, os idiomas de revisão, os idiomas de apresentação, etc. Aspose.Words fornece a propriedade [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) como equivalente a esta caixa de diálogo. Se a saída Aspose.Words for diferente da saída Microsoft Word, Defina o valor apropriado para **EditingLanguage** – isso pode melhorar o documento de saída.

O exemplo de código a seguir mostra como definir japonês como **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Use WarningCallback para controlar problemas ao carregar um documento

Alguns documentos podem estar corrompidos, conter entradas inválidas ou ter funcionalidades actualmente não suportadas por Aspose.Words. Se você quiser saber sobre problemas que ocorreram durante o carregamento de um documento, Aspose.Words fornece a interface [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/).

O exemplo de código a seguir mostra a implementação da interface **IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Para obter informações sobre todos os problemas ao longo do tempo de carregamento, use a propriedade [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Use ResourceLoadingCallback para controlar o carregamento de recursos externos

Um documento pode conter links externos para imagens localizadas em algum lugar em um disco local, rede ou Internet. Aspose.Words carrega automaticamente essas imagens em um documento, mas há situações em que esse processo precisa ser controlado. Por exemplo, para decidir se realmente precisamos carregar uma determinada imagem ou talvez ignorá-la. A opção de carregamento [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) permite-lhe controlar isto.

O exemplo de código a seguir mostra a implementação da interface [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

O exemplo de código a seguir mostra como usar a propriedade **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Use TempFolder para evitar uma exceção de memória

Aspose.Words suporta documentos extremamente grandes que têm milhares de páginas cheias de conteúdo rico. O carregamento desses documentos pode exigir muito RAM. No processo de carregamento, Aspose.Words precisa de ainda mais memória para armazenar estruturas temporárias usadas para analisar um documento.

Se você tiver um problema com a exceção falta de memória ao carregar um documento, tente usar a propriedade [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder). Nesse caso, Aspose.Words armazenará alguns dados em arquivos temporários em vez de memória, e isso pode ajudar a evitar essa exceção.

O exemplo de código a seguir mostra como definir **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Definir a codificação explicitamente

A maioria dos formatos de documentos modernos armazena seu conteúdo em Unicode e não requer tratamento especial. Por outro lado, ainda existem muitos documentos que utilizam alguma codificação pré-Unicode e, por vezes, perdem informações de codificação ou nem sequer suportam informações de codificação por natureza. Aspose.Words tenta detectar automaticamente a codificação apropriada por padrão, mas em um caso raro você pode precisar usar uma codificação diferente da detectada pelo nosso algoritmo de reconhecimento de codificação. Nesse caso, use a propriedade [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) para obter ou definir a codificação.

O exemplo de código a seguir mostra como definir a codificação para substituir a codificação escolhida automaticamente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Carregar Documentos Encriptados

Você pode carregar documentos do Word criptografados com uma senha. Para fazer isso, use uma sobrecarga de construtor especial, que aceita um objeto [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/). Este objecto contém a propriedade [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword), que especifica a cadeia de palavras-passe.

O exemplo de código a seguir mostra como carregar um documento criptografado com uma senha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Se você não souber com antecedência se o arquivo está criptografado, poderá usar a classe [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/), que fornece métodos utilitários para trabalhar com formatos de arquivo, como detectar o formato do arquivo ou converter extensões de arquivo de/para enumerações de formato de arquivo. Para detectar se o documento está criptografado e requer uma senha para abri-lo, use a propriedade [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

O exemplo de código a seguir mostra como verificar OpenDocument se ele está criptografado ou não:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
