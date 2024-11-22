---
title: Especifique a localização das fontes TrueType
second_title: Aspose.Words para Python via .NET
articleTitle: Especifique a localização das fontes TrueType
linktitle: Especifique a localização das fontes TrueType
description: "Especifique várias fontes de fonte TrueType: pasta do sistema, fontes do usuário, carregamento de fontes de um fluxo, sistema de arquivos ou memória usando Python."
type: docs
weight: 30
url: /pt/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Este tópico descreve o comportamento padrão do Aspose.Words ao procurar fontes TrueType, incluindo diferenças específicas do sistema operacional, e demonstra como especificar fontes de fontes do usuário.

A classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) é usada para especificar várias fontes de fontes. Existem várias implementações da classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Os detalhes de implementação de algumas classes são explicados abaixo.

## Carregando fontes do sistema

Existe uma classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) especial que é sempre usada por padrão. Representa todas as fontes TrueType instaladas no sistema. Portanto, é possível criar uma lista de fontes com [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) e quaisquer outras fontes necessárias:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Uma única instância da classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) é definida por padrão em [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Em sistemas operacionais diferentes, as fontes podem estar localizadas em locais diferentes. No entanto, usar uma instância [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) para cada documento não é a solução ideal. Na maioria dos casos, usar [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) deve ser suficiente.

As instâncias por documento serão necessárias somente se for necessário usar fontes de fontes diferentes para documentos diferentes, o que é um caso raro. O uso de várias instâncias [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) diminui o desempenho porque elas não compartilham cache.

### Onde Aspose.Words procura fontes TrueType em Windows

Na maioria dos casos, os usuários Windows não enfrentam problemas significativos com fontes perdidas ou layouts incorretos. Normalmente, o Aspose.Words percorre um documento e, quando encontra o link de uma fonte, busca com êxito os dados da fonte na pasta do sistema.

No Windows, o Aspose.Words primeiro pega todas as fontes disponíveis da pasta _%windir%\Fonts. Essa configuração funcionará para você na maioria das vezes. Você só especifica suas próprias pastas de fontes se precisar. Aspose.Words para .NET também procura fontes adicionais registradas na chave de registro *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Além disso, o Windows 10 permite a instalação de fontes para o usuário atual. As fontes são colocadas na pasta *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* e também especificadas no registro *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, onde o Aspose.Words procurará por essas fontes.

Se um documento contiver fontes incorporadas, o Aspose.Words poderá ler dados de fontes relevantes do documento e usá-los para criar o layout do documento. Os documentos também podem conter links para fontes que não estão nas pastas do sistema; nesse caso, os seguintes cenários funcionam:

- Os usuários podem configurar novas fontes de fontes através da classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words pode tentar substituir a fonte perdida por uma semelhante


### Fontes em sistemas não Windows

Aspose.Words procurará as fontes nas pastas de fontes do sistema. Uma lista dessas pastas pode ser visualizada pelo método [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Se nenhuma fonte suportada for encontrada, o Aspose.Words usará a fonte padrão interna Fanwood.ttf.

Como as métricas de fonte do sistema operacional Windows e não-Windows são diferentes, o Aspose.Words faz todo o possível para encontrar uma fonte semelhante e construir um layout semelhante ao original. No entanto, isso nem sempre é possível. Nestes casos, a classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) deve ser usada para adicionar fontes personalizadas ou regras de substituição.

#### Onde Aspose.Words procura fontes TrueType em Linux

Diferentes distribuições Linux podem armazenar fontes em pastas diferentes. O Aspose.Words procura fontes em vários locais. Por padrão, o Aspose.Words procura as fontes em todos os seguintes locais: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`. Esse comportamento padrão funcionará para a maioria das distribuições Linux, mas não é garantido que funcione o tempo todo; nesse caso, talvez seja necessário especificar explicitamente o local das fontes do tipo true. Para fazer isso, você precisa saber onde as fontes TrueType estão instaladas em sua distribuição Linux.

#### Onde Aspose.Words procura fontes TrueType no Mac OS X

Aspose.Words procura fontes na pasta */Library/Fonts*, que é o local padrão para fontes TrueType no Mac OS X. Embora essa configuração funcione para você na maioria das vezes, pode ser necessário especificar suas próprias pastas de fontes no caso quando você precisar.

## Carregando fontes da pasta

Se o documento que está sendo processado contiver links para fontes que não estão no sistema, ou você não quiser adicioná-los à pasta do sistema, ou não tiver permissões, a melhor solução seria adicionar uma pasta com suas próprias fontes usando o método [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Isto permitirá substituir a fonte do sistema por uma fonte do usuário. O Aspose.Words não procurará mais fontes no registro ou na pasta Windows\Font e, em vez disso, procurará apenas fontes nas pastas especificadas. O método [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) retornará os valores correspondentes.

### Especificando uma ou várias pastas de fontes

Os métodos [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) e [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) são atalhos para o método [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) com uma ou várias instâncias [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Esses métodos são usados para indicar onde o Aspose.Words deve procurar fontes. Se uma pasta não existir ou não estiver acessível, o Aspose.Words simplesmente ignorará essa pasta. Se todas as pastas, incluindo as fontes para a substituição da fonte, forem ignoradas, o Aspose.Words usará a fonte Fanwood como padrão.

O exemplo a seguir demonstra como definir a pasta ou fonte, que o Aspose.Words usará posteriormente para procurar fontes TrueType durante a renderização ou incorporação de fontes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Um parâmetro booleano extra controla se as fontes são verificadas recursivamente em todas as pastas, verificando, portanto, todas as pastas secundárias de uma pasta especificada. O exemplo a seguir demonstra como configurar o Aspose.Words para procurar fontes TrueType em várias pastas ao renderizar ou incorporar fontes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Observe as prioridades. Se houver fontes com o mesmo nome de família e estilo em fontes de fontes diferentes, o Aspose.Words selecionará a fonte da fonte com prioridade mais alta. Veja a descrição do campo "prioridade" abaixo.

Se você não quiser usar fontes do sistema, o Aspose.Words permite ignorá-las e usar apenas suas próprias fontes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Propriedade Prioritária

A propriedade **prioridade** é usada quando há fontes com o mesmo nome de família e estilo em fontes de fontes diferentes. Neste caso, o Aspose.Words seleciona a fonte da fonte com o valor de prioridade mais alto. Por exemplo, há uma versão antiga da fonte na pasta do sistema e o cliente adicionou uma nova versão da mesma fonte em uma pasta personalizada.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Obtendo uma lista de fontes disponíveis

Se quiser obter a lista de fontes disponíveis, que, por exemplo, podem ser usadas para renderizar um documento PDF, você pode usar o método [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), conforme mostrado no exemplo de código a seguir. A classe [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) especifica informações sobre a fonte física disponível para o mecanismo de fontes Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
