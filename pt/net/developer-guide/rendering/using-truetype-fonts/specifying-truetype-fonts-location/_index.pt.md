---
title: Especifique a localização das fontes TrueType em C#
second_title: Aspose.Words para .NET
articleTitle: Especifique a localização das fontes TrueType
linktitle: Especifique a localização das fontes TrueType
description: "Especifique várias fontes de fonte TrueType: pasta do sistema, fontes do usuário, carregamento de fontes de um fluxo, sistema de arquivos ou memória usando C#."
type: docs
weight: 30
url: /pt/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Este tópico descreve o comportamento padrão do Aspose.Words ao procurar fontes TrueType, incluindo diferenças específicas do sistema operacional, e demonstra como especificar fontes de fontes do usuário.

A classe [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) é usada para especificar várias fontes de fontes. Existem várias implementações da classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Os detalhes de implementação de algumas classes são explicados abaixo.

## Carregar fontes do sistema {#loading-fonts-from-system}

Existe uma classe [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) especial que é sempre usada por padrão. Representa todas as fontes TrueType instaladas no sistema. Portanto, é possível criar uma lista de fontes com **SystemFontSource** e quaisquer outras fontes necessárias:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Uma única instância da classe **SystemFontSource** é definida por padrão em [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Em sistemas operacionais diferentes, as fontes podem estar localizadas em locais diferentes. Entretanto, usar uma instância **FontSettings** para cada documento não é uma solução ideal. Na maioria dos casos, usar [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) deve ser suficiente.

As instâncias por documento serão necessárias somente se for necessário usar fontes de fontes diferentes para documentos diferentes, o que é um caso raro. O uso de várias instâncias **FontSettings** diminui o desempenho porque elas não compartilham cache.

### Onde Aspose.Words procura fontes TrueType em Windows

Na maioria dos casos, os usuários Windows não enfrentam problemas significativos com fontes perdidas ou layouts incorretos. Normalmente, o Aspose.Words percorre um documento e, quando encontra o link de uma fonte, busca com êxito os dados da fonte na pasta do sistema.

No Windows, o Aspose.Words primeiro pega todas as fontes disponíveis da pasta _%windir%\Fonts. Essa configuração funcionará para você na maioria das vezes. Você só especifica suas próprias pastas de fontes se precisar. Aspose.Words para .NET também procura fontes adicionais registradas na chave de registro HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Além disso, o Windows 10 permite a instalação de fontes para o usuário atual. As fontes são colocadas na pasta %userprofile%\AppData\Local\Microsoft\Windows\Fonts e também especificadas no registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, onde o Aspose.Words procurará por essas fontes.

Se um documento contiver fontes incorporadas, o Aspose.Words poderá ler dados de fontes relevantes do documento e usá-los para criar o layout do documento. Os documentos também podem conter links para fontes que não estão nas pastas do sistema; nesse caso, os seguintes cenários funcionam:

- Os usuários podem configurar novas fontes de fontes através da classe **FontSettings**
- Aspose.Words pode tentar substituir a fonte perdida por uma semelhante

{{% alert color="primary" %}}

A renderização Aspose.Words em um servidor normalmente não funcionará com um aplicativo ASP.NET configurado para ser executado no nível de confiança médio, porque proíbe o acesso ao registro e limita o acesso ao sistema de arquivos.

{{% /alert %}}

### Fontes em sistemas não Windows

Aspose.Words procurará as fontes nas pastas de fontes do sistema. Uma lista dessas pastas pode ser visualizada pelo método [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Se nenhuma fonte suportada for encontrada, o Aspose.Words usará a fonte padrão interna Fanwood.ttf.

Como as métricas de fonte do sistema operacional Windows e não-Windows são diferentes, o Aspose.Words faz todo o possível para encontrar uma fonte semelhante e construir um layout semelhante ao original. No entanto, isso nem sempre é possível. Nestes casos, a classe **FontSettings** deve ser usada para adicionar fontes personalizadas ou regras de substituição.

#### Onde Aspose.Words procura fontes TrueType em Linux

Diferentes distribuições Linux podem armazenar fontes em pastas diferentes. O Aspose.Words procura fontes em vários locais. Por padrão, o Aspose.Words procura as fontes em todos os seguintes locais: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsEste comportamento padrão funcionará para a maioria das distribuições Linux, mas não é garantido que funcione o tempo todo; nesse caso, talvez seja necessário especificar explicitamente o local das fontes do tipo true. Para fazer isso, você precisa saber onde as fontes TrueType estão instaladas em sua distribuição Linux.

#### Onde Aspose.Words procura fontes TrueType no Mac OS X

Aspose.Words procura fontes na pasta /Library/Fonts, que é o local padrão para fontes TrueType no Mac OS X. Embora essa configuração funcione para você na maioria das vezes, pode ser necessário especificar suas próprias pastas de fontes no caso quando Você precisa.

## Carregar fontes da pasta {#loading-fonts-from-folder}

Se o documento que está sendo processado contiver links para fontes que não estão no sistema, ou você não quiser adicioná-los à pasta do sistema, ou não tiver permissões, a melhor solução seria adicionar uma pasta com suas próprias fontes usando o método [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Isto permitirá substituir a fonte do sistema por uma fonte do usuário. O Aspose.Words não procurará mais fontes no registro ou na pasta Windows\Font e, em vez disso, procurará apenas fontes nas pastas especificadas. O método [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) retornará os valores correspondentes.

### Especifique uma ou várias pastas de fontes

Os métodos [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) e [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) são atalhos para o método **SetFontSources** com uma ou várias instâncias [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Esses métodos são usados para indicar onde o Aspose.Words deve procurar fontes. Se uma pasta não existir ou não estiver acessível, o Aspose.Words simplesmente a ignorará. Se todas as pastas, incluindo as fontes para a substituição da fonte, forem ignoradas, o Aspose.Words usará a fonte Fanwood como padrão.

O exemplo a seguir demonstra como definir a pasta ou fonte, que o Aspose.Words usará posteriormente para procurar fontes TrueType durante a renderização ou incorporação de fontes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Um parâmetro booleano extra controla se as fontes são verificadas recursivamente em todas as pastas, verificando, portanto, todas as pastas secundárias de uma pasta especificada. O exemplo a seguir demonstra como configurar o Aspose.Words para procurar fontes TrueType em várias pastas ao renderizar ou incorporar fontes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Observe as prioridades. Se houver fontes com o mesmo nome de família e estilo em fontes de fontes diferentes, o Aspose.Words selecionará a fonte da fonte com prioridade mais alta. Veja a descrição do campo "Prioridade" abaixo.

Se você não quiser usar fontes do sistema, o Aspose.Words permite ignorá-las e usar apenas suas próprias fontes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Propriedade Prioritária

A propriedade [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) é usada quando há fontes com o mesmo nome de família e estilo em fontes de fontes diferentes. Neste caso, o Aspose.Words seleciona a fonte da fonte com o valor de prioridade mais alto. Por exemplo, há uma versão antiga da fonte na pasta do sistema e o cliente adicionou uma nova versão da mesma fonte em uma pasta personalizada.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Carregar fontes do Stream {#loading-fonts-from-stream}

Aspose.Words fornece a classe [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), que permite carregar fontes do stream. Para usar a fonte de fonte de fluxo, o usuário precisa criar uma classe derivada de **StreamFontSource** e fornecer uma implementação do método [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). O método **OpenFontDataStream** pode ser chamado várias vezes. Pela primeira vez, ele será chamado quando o Aspose.Words verificar as fontes de fontes fornecidas para obter uma lista de fontes disponíveis. Posteriormente, poderá ser chamado se a fonte for usada no documento para analisar os dados da fonte e incorporar os dados da fonte em alguns formatos de saída. **StreamFontSource** pode ser útil porque permite carregar os dados da fonte somente quando necessário, e não armazená-los na memória durante a vida útil do [Configurações de fonte](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** é uma alternativa ao [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/), pois sempre é possível carregar um stream na memória e passá-lo para **MemoryFontSource**. A diferença é que o **MemoryFontSource** fica armazenado na memória o tempo todo, e o **StreamFontSource** é carregado sob demanda e descartado na hora. Mas pode ser carregado diversas vezes, conforme descrito acima. Em alguns casos, o **MemoryFontSource** é preferível e, em outros, o **StreamFontSource**.

## Salvar e carregar um cache de pesquisa de fontes

Ao pesquisar uma fonte pela primeira vez, o Aspose.Words itera sobre as fontes de fontes especificadas pelo usuário e forma um cache de pesquisa de fontes com base nos dados dessas fontes. Assim, o cache irá coletar informações sobre as fontes disponíveis: família da fonte, estilo, nome completo da fonte, entre outros. Nas chamadas subsequentes, o Aspose.Words procura informações sobre a fonte desejada por seu nome no cache de pesquisa de fontes e, em seguida, analisa os arquivos especificados para usar a fonte.

O procedimento para analisar todos os arquivos de fontes disponíveis para inicializar o cache é bastante demorado. Aspose.Words permite salvar e carregar o cache usando o método [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) para resolver o problema de desempenho. Ou seja, o usuário pode carregar um cache salvo anteriormente de um arquivo e pular a etapa de análise de todos os arquivos de fontes disponíveis.

{{% alert color="primary" %}}

Use o mesmo método **SaveSearchCache** para atualizar o cache.

{{% /alert %}}

O exemplo de código a seguir mostra como preparar fontes de fontes e gerar cache de pesquisa de fontes antecipadamente:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

O exemplo de código a seguir mostra como definir fontes de fontes e carregar o cache de pesquisa antes de processar documentos:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

O cache de pesquisa de fontes é ótimo para integração Aspose.Words em Lambda AWS devido a uma série de limitações. Por exemplo, no tamanho do contêiner principal e, consequentemente, no número de fontes.

O cache também é adequado para outros cenários quando as fontes são carregadas pela rede. Ou para cenários em que não há como armazenar uma instância `FontSettings` com um cache carregado.

{{% /alert %}}

## Obtenha uma lista de fontes disponíveis {#get-a-list-of-available-fonts}

Se quiser obter a lista de fontes disponíveis, que, por exemplo, podem ser usadas para renderizar um documento PDF, você pode usar o método [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), conforme mostrado no exemplo de código a seguir. A classe [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) especifica informações sobre a fonte física disponível para o mecanismo de fonte Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
