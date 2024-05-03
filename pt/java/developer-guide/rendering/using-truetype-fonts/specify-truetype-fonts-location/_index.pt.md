---
title: Especificar True Tipo Fontes Localização em Java
second_title: Aspose.Words para Java
articleTitle: Especificar True Tipo Fontes Localização
linktitle: Especificar True Tipo Fontes Localização
description: "Especificar vários Verdade Tipo fontes de fonte: pasta do sistema, fontes de usuário, carregando fontes de um fluxo, um sistema de arquivos ou memória usando Java."
type: docs
weight: 30
url: /pt/java/specify-truetype-fonts-location/
---

Este tópico descreve o comportamento padrão de Aspose.Words quando procura fontes TrueType, incluindo diferenças específicas do sistema operacional e demonstra como especificar fontes de fonte do usuário.

O [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) classe é usada para especificar várias fontes de fonte. Existem várias implementações do **FontSourceBase** classe:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Os detalhes de implementação para algumas classes são explicados abaixo.

## Carregar fontes do sistema {#loading-fonts-from-system}

Há um especial [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) classe que é sempre usado por padrão. Representa todas as fontes TrueType instaladas no sistema. Portanto, é possível criar uma lista de origem com **SystemFontSource** e quaisquer outras fontes necessárias:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Uma única instância do **SystemFontSource** classe é definida por padrão [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Em diferentes sistemas operacionais, fontes podem estar localizadas em diferentes lugares. No entanto, usando um **FontSettings** exemplo para cada documento não é uma solução ideal. Na maioria dos casos, usando [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Devia ser suficiente.

As instâncias por documento são necessárias apenas se for necessário usar fontes de fonte diferentes para diferentes documentos, o que é um caso raro. Usando vários **FontSettings** instâncias diminui o desempenho porque eles não compartilham o cache.

### Onde? Aspose.Words Procura fontes TrueType em Windows

Na maioria dos casos, Windows os usuários não enfrentam problemas significativos com fontes perdidas ou layouts incorretos. Normalmente, Aspose.Words passa por um documento, e quando ele encontra o link de uma fonte, ele fetches com sucesso os dados de fonte da pasta do sistema.

Em <span notrans="<span notrans=" Windows"=""></span>, Aspose.Words primeiro leva todas as fontes disponíveis do _%windir%\Fonts pasta. Esta configuração vai funcionar para você na maioria das vezes. Você só especificar suas próprias pastas de fontes se você precisar. Aspose.Words também procura fontes adicionais registradas no HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts chave de registro. Além disso, Windows 10 permite a instalação de fontes para o usuário atual. Fontes são colocadas no %userprofile%\AppData\Local\Microsoft\Windows\Fonts pasta e também especificado no HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registro, onde Aspose.Words vai procurar estas fontes.

Se um documento contém fontes incorporadas, Aspose.Words pode ler dados de fonte relevantes do documento e usá-lo para criar o layout do documento. Os documentos também podem conter links para fontes que não estão nas pastas do sistema, caso em que os seguintes cenários vêm trabalhar:

- Os usuários podem configurar novas fontes de fonte através do **FontSettings** classe
- Não. Aspose.Words pode tentar substituir a fonte perdida por uma similar

### Fontes em Non...Windows Sistemas de software

Aspose.Words procurará as fontes nas pastas de fonte do sistema. Uma lista dessas pastas pode ser vista pela [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) método. Se não forem encontradas fontes suportadas, Aspose.Words usará a fonte padrão embutida Fanwood.ttf.

Desde as métricas de fonte Windows e não...Windows OS são diferentes, Aspose.Words faz tudo possível para encontrar uma fonte semelhante e construir um layout semelhante ao original. No entanto, isso nem sempre é possível. Nestes casos, **FontSettings** classe deve ser usado para adicionar fontes personalizadas ou regras de substituição.

#### Onde? Aspose.Words Procura fontes TrueType em Linux

Diferente Linux distribuições podem armazenar fontes em diferentes pastas. Aspose.Words procura fontes em vários locais. Por padrão, Aspose.Words procura as fontes em todos os seguintes locais: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Este comportamento padrão funcionará para a maioria Linux distribuições, mas não é garantido para trabalhar o tempo todo, nesse caso você pode precisar especificar a localização de true digite fontes explicitamente. Para fazer isso, você precisa saber onde fontes TrueType são instaladas em seu Linux distribuição.

#### Onde? Aspose.Words Procura fontes TrueType no Mac OS X

Aspose.Words procura fontes na pasta /Library/Fonts, que é o local padrão para fontes TrueType no Mac OS X. Embora esta configuração funcione para você na maioria das vezes, você pode precisar especificar suas próprias pastas de fontes no caso quando você precisar.

#### Fontes TrueType em Android

Em Android, fluxo de trabalho de fontes é encapsulado na classe Typeface.
Existem cinco tipos de tipos, cada tipo de letra representa um grupo de famílias de fontes semelhantes:

- DEFAUL
- DEFAULTADO
- MONOSPACE
- SANS_SERIF
- SERIF

Por exemplo, segundo Android’ [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" pertence a "serif" família assim NotoSerif-Regular.ttf será usado quando "times" é solicitado:

**Fontes.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Para pesquisar fontes semelhantes, as estratégias descritas anteriormente são usadas

Além deles, Aspose.Words tem sua própria lista de substituições para o Android plataforma.

Digamos que o documento contém a fonte PMingLiU-ExtB, em primeiro lugar, Aspose.Words está procurando a fonte necessária dentro das fontes do sistema.

A lista padrão de Android pastas da fonte é:

- /sistema/fonts
- /sistema/font
- /data/fonts

O Aspose.Words olha através de fontes definidas pelo usuário que foi definido com o método:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

No caso de uma substituição explícita ter sido especificada, Aspose.Words substitui a fonte ausente pela sugestão do usuário:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Se nenhuma das regras funcionou, Aspose.Words verificar a tabela de substituição interna. Se a tabela contém informações sobre um bom ajuste, então a fonte é substituída. No nosso caso Aspose.Words selecionar `Typeface.SERIF`. Mas se a tabela não sabe nada sobre a fonte solicitada então Aspose.Words pega uma fonte baseada em regras especiais do MS Word ou a distância mais próxima no espaço Panose.

#### Fontes TrueType em .NET Core e Xamarin

Para .NET Core e Xamarin a mesma regra aplica-se a Aspose.Words para Java versão. Por padrão, todas as fontes de sistema da plataforma em que o aplicativo é executado estão disponíveis.
A lista de pastas onde a pesquisa será realizada pode ser encontrada chamando o método:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Carregar fontes de pasta {#loading-fonts-from-folder}

Se o documento que está sendo processado contém links para fontes que não estão no sistema, ou você não quer adicioná-los à pasta do sistema, ou você não tem permissões, então a melhor solução seria adicionar uma pasta com suas próprias fontes usando a `SetFontsSources` método. Isso permitirá substituir a fonte do sistema por uma fonte de usuário. Aspose.Words não procurará mais fontes no registro ou Windows\Font pasta e, em vez disso, apenas procurar fontes dentro da pasta(s) especificada(s). O `GetFontSources` método retornará os valores correspondentes.

### Especificar uma ou várias pastas de fonte

O [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) e os métodos SetFontsFolders são atalhos para os **SetFontSources** método com um ou vários [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) instâncias. Estes métodos são usados para indicar onde Aspose.Words deve procurar fontes. Se uma pasta não existe ou não é acessível, Aspose.Words ignora esta pasta. Se todas as pastas, incluindo fontes para a substituição da fonte, foram ignoradas, Aspose.Words usará a fonte Fanwood como padrão.

O exemplo a seguir demonstra como definir a pasta ou fonte, que Aspose.Words posteriormente usará para procurar fontes TrueType durante a renderização ou incorporação de fontes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Um parâmetro extra Boolean controla se as fontes são digitalizadas recursivamente através de todas as pastas, portanto, a digitalização de todas as pastas de crianças de uma pasta especificada. O exemplo a seguir demonstra como definir Aspose.Words para procurar em várias pastas para fontes TrueType ao renderizar ou incorporar fontes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Observe as prioridades. Se houver fontes com o mesmo nome de família e estilo em fontes de fontes diferentes, então Aspose.Words selecionará a fonte da fonte com uma prioridade maior. Veja a descrição do campo "Prioridade" abaixo.

{{% /alert %}}

Se você não quiser usar fontes do sistema em tudo, Aspose.Words permite que você ignorá-los e usar suas próprias fontes apenas:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Propriedade prioritária

O [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) propriedade é usada quando há fontes com o mesmo nome de família e estilo em fontes de fonte diferentes. Neste caso Aspose.Words seleciona a fonte da fonte com o valor de prioridade maior. Por exemplo, há uma versão antiga da fonte na pasta do sistema e o cliente adicionou uma nova versão da mesma fonte em uma pasta personalizada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Carregar fontes de fluxo {#loading-fonts-from-stream}

Aspose.Words fornece o [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) classe, que permite carregar fontes do fluxo. Para usar a fonte de fonte de fluxo, um usuário precisa criar uma classe derivada de **StreamFontSource** e fornecer uma implementação da [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) método. O **OpenFontDataStream** método poderia ser chamado várias vezes. Pela primeira vez, será chamado quando Aspose.Words varre as fontes de fonte fornecidas para obter uma lista de fontes disponíveis. Mais tarde pode ser chamado se a fonte é usada no documento para analisar os dados da fonte e incorporar os dados da fonte para alguns formatos de saída. **StreamFontSource** pode ser útil porque permite carregar os dados da fonte somente quando é necessário, e não armazená-lo na memória para o `FontSettings` vida.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** é uma alternativa para [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) uma vez que é sempre possível carregar um fluxo para a memória e passá-lo para **MemoryFontSource**. A diferença é que **MemoryFontSource** é armazenado na memória o tempo todo, e o **StreamFontSource** é carregado sob demanda e disposto de imediato. Mas pode ser carregado várias vezes, como descrito acima. Em alguns casos **MemoryFontSource** é preferível, e em outros, **StreamFontSource**.

## Salvar e carregar uma fonte Pesquisar Cache

Ao procurar uma fonte pela primeira vez, Aspose.Words itera sobre as fontes de fonte especificadas pelo usuário e forma um cache de pesquisa de fonte com base em dados dessas fontes. Assim, o cache irá coletar informações sobre as fontes disponíveis: família de fontes, estilo, nome de fonte completo e outros. Em chamadas subsequentes, Aspose.Words pesquisa informações sobre a fonte desejada pelo seu nome no cache de pesquisa de fontes, após a qual analisa os arquivos especificados para usar a fonte.

O procedimento para analisar todos os arquivos de fonte disponíveis para inicializar o cache é bastante demorado. Aspose.Words permite salvar e carregar o cache usando o **FontSettings.SaveSearchCache** método para resolver o problema de desempenho. Ou seja, o usuário pode carregar um cache previamente salvo de um arquivo e pular o passo de analisar todos os arquivos de fonte disponíveis.

{{% alert color="primary" %}}

Use o mesmo **SaveSearchCache** método para atualizar o cache.

{{% /alert %}}

{{% alert color="primary" %}}

O cache também é adequado para outros cenários quando as fontes são carregadas pela rede. Ou para cenários quando não há maneira de armazenar uma `FontSettings` instância com um cache carregado.

{{% /alert %}}


## Obter uma lista de fontes disponíveis {#get-a-list-of-available-fonts}

Se você quiser obter a lista de fontes disponíveis, que, por exemplo, pode ser usado para renderizar um documento PDF, você pode usar a [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) método, como mostrado no seguinte exemplo de código. O [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) class especifica informações sobre a fonte física disponível para Aspose.Words motor de fonte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
