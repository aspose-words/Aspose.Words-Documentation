---
title: Especificar Opções de Carga em Java
second_title: Aspose.Words para Java
articleTitle: Especificar Opções de Carga
linktitle: Especificar Opções de Carga
description: "Definir propriedades avançadas ao carregar um documento usando Java para obter um controle mais preciso do processo."
type: docs
weight: 10
url: /pt/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Ao carregar um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece-lhe com o [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) classe, que permite o controle mais preciso do processo de carga. Alguns formatos de carga têm uma classe correspondente que possui opções de carga para este formato de carga, por exemplo, há [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) para carregar em formato PDF ou [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) para carregar para TXT. Este artigo fornece exemplos de trabalhar com opções do **LoadOptions** classe.

## Conjunto Microsoft Word Versão para mudar a aparência

Versões diferentes do Microsoft Word aplicativo pode exibir documentos de forma diferente. Por exemplo, há um problema bem conhecido com documentos OOXML como DOCX ou DOTX produzido usando WPS Office. Nesses casos, elementos essenciais de marcação de documentos podem estar ausentes ou podem ser interpretados de forma diferente. Microsoft Word 2019 para mostrar tal documento diferentemente em comparação com Microsoft Word 2010.

Por padrão Aspose.Words abre documentos usando Microsoft Word Regras de 2019. Se você precisar fazer o carregamento de documentos aparecer como aconteceria em um dos anteriores Microsoft Word versões do aplicativo, você deve especificar explicitamente a versão desejada usando o [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propriedade da **LoadOptions** classe.

O seguinte exemplo de código mostra como definir o Microsoft Word versão com opções de carga:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Definir preferências de idioma para mudar a aparência

Os detalhes de exibir um documento em Microsoft Word depender não só da versão do aplicativo e da **MswVersion** valor de propriedade, mas também nas configurações do idioma. Microsoft Word pode mostrar documentos de forma diferente dependendo das configurações de diálogo "Preferências de idioma do escritório", que podem ser encontradas em "File → Opções → Languаge". Usando esta caixa de diálogo um usuário pode selecionar, por exemplo, linguagem primária, linguagens de prova, linguagens de exibição e assim por diante. Aspose.Words fornece o [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) propriedade como o equivalente desta caixa de diálogo. Se Aspose.Words saída difere do Microsoft Word saída, definir o valor apropriado para **EditingLanguage** – isso pode melhorar o documento de saída.

O seguinte exemplo de código mostra como definir japonês como **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Uso WarningCallback para controlar problemas Carregando um documento

Alguns documentos podem ser corrompidos, conter entradas inválidas, ou ter recursos não suportados atualmente Aspose.Words. Se você quiser saber sobre problemas que ocorreram ao carregar um documento, Aspose.Words fornece o [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interface.

O seguinte exemplo de código mostra a implementação da **IWarningCallback** interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Para obter informações sobre todos os problemas ao longo do tempo de carga, use o [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) propriedade.

O exemplo de código a seguir mostra como usar esta propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Use o recursoLoading Retorno ao Controle dos Recursos Externos

Um documento pode conter links externos para imagens localizadas em algum lugar em um disco local, rede ou Internet. Aspose.Words carrega automaticamente essas imagens em um documento, mas há situações em que esse processo precisa ser controlado. Por exemplo, para decidir se realmente precisamos carregar uma determinada imagem ou talvez pular. O [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) opção de carga permite que você controle isso.

O seguinte exemplo de código mostra a implementação da [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

O seguinte exemplo de código mostra como usar o **ResourceLoadingCallback** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Use TempFolder para evitar uma exceção de memória

Aspose.Words suporta documentos extremamente grandes que têm milhares de páginas cheias de conteúdo rico. Carregar tais documentos pode exigir muito RAM. No processo de carregamento, Aspose.Words precisa ainda mais memória para manter estruturas temporárias usadas para analisar um documento.

Se você tiver um problema com a exceção Out of Memory ao carregar um documento, tente usar o [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) propriedade. Neste caso, Aspose.Words armazenará alguns dados em arquivos temporários em vez de memória, e isso pode ajudar a evitar tal exceção.

O seguinte exemplo de código mostra como definir **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Definir o Encoding Explicitly

A maioria dos formatos de documentos modernos armazenam seu conteúdo em Unicode e não exigem manipulação especial. Por outro lado, ainda há muitos documentos que usam alguma codificação pré-Unicode e, às vezes, ou perder informações de codificação ou nem mesmo apoiar informações de codificação por natureza. Aspose.Words tenta detectar automaticamente a codificação apropriada por padrão, mas em um caso raro você pode precisar usar uma codificação diferente da detectada pelo nosso algoritmo de reconhecimento de codificação. Neste caso, use o [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) propriedade para obter ou definir a codificação.

O exemplo a seguir mostra como definir a codificação para substituir a codificação automaticamente escolhida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Carregar documentos criptografados

Você pode carregar Documentos do Word criptografados com uma senha. Para fazer isso, use uma sobrecarga especial do construtor, que aceita um [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) objeto. Este objeto contém [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) propriedade, que especifica a string de senha.

O exemplo de código a seguir mostra como carregar um documento criptografado com uma senha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Se você não sabe com antecedência se o arquivo é criptografado, você pode usar o [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) classe, que fornece métodos utilitários para trabalhar com formatos de arquivo, tais como detectar o formato de arquivo ou converter extensões de arquivo para / de enumerações de formato de arquivo. Para detectar se o documento é criptografado e requer uma senha para abri-lo, use o [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propriedade.

O exemplo de código a seguir mostra como verificar OpenDocument é criptografado ou não:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
