---
title: Especificar TrueType localização das fontes em Java
second_title: Aspose.Words para Java
articleTitle: Especificar TrueType Localização Das Fontes
linktitle: Especificar TrueType Localização Das Fontes
description: "Especifique várias fontes de fonte TrueType: pasta do sistema, fontes do Usuário, Carregando fontes de um fluxo, um sistema de arquivos ou memória usando Java."
type: docs
weight: 30
url: /pt/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Este tópico descreve o comportamento padrão de Aspose.Words quando procura fontes TrueType, incluindo diferenças específicas do sistema operacional, e demonstra como especificar fontes de fonte do Usuário.

A classe [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) é usada para especificar várias fontes de fonte. Existem várias implementações da classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Os detalhes de implementação de algumas classes são explicados abaixo.

## Carregar Fontes Do Sistema {#loading-fonts-from-system}

Existe uma classe [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) especial que é sempre usada por padrão. Representa todas as fontes TrueType instaladas no sistema. Portanto, é possível criar uma lista de fontes com **SystemFontSource** e quaisquer outras fontes necessárias:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Uma única instância da classe **SystemFontSource** é definida por padrão em [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Em diferentes sistemas operativos, as fontes podem estar localizadas em locais diferentes. No entanto, usar uma instância **FontSettings** para cada documento não é uma solução ideal. Na maioria dos casos, utilizar [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) deve ser suficiente.

As instâncias por documento só são necessárias se for necessário utilizar fontes de fonte diferentes para documentos diferentes, o que é um caso raro. O uso de várias instâncias **FontSettings** diminui o desempenho porque elas não compartilham o cache.

### Onde Aspose.Words procura Fontes TrueType em Windows

Na maioria dos casos, Windows os usuários não enfrentam problemas significativos com fontes perdidas ou layouts incorretos. Normalmente, Aspose.Words passa por um documento e, quando encontra o link de uma fonte, obtém com êxito os dados da fonte da pasta do sistema.

Em Windows, Aspose.Words primeiro pega todas as fontes disponíveis da pasta _%windir%\Fonts. Esta definição irá funcionar para si na maior parte do tempo. Você só especifica suas próprias pastas de fontes Se precisar. Aspose.Words também procura fontes adicionais registadas na chave de Registo HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Além disso, Windows 10 permite a instalação de fontes para o utilizador actual. As fontes são colocadas na pasta %userprofile%\AppData\Local\Microsoft\Windows\Fonts e também especificadas no registro HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, onde Aspose.Words procurará essas fontes.

Se um documento contiver fontes incorporadas, Aspose.Words pode ler os dados de fonte relevantes do documento e usá-los para criar o layout do documento. Os documentos também podem conter links para fontes que não estão nas pastas do sistema, caso em que os seguintes cenários funcionam:

- Os usuários podem configurar novas fontes de fonte através da classe **FontSettings**
- Aspose.Words pode tentar substituir a fonte perdida por uma semelhante

### Fontes em sistemas NãoWindows

Aspose.Words procurará as fontes nas pastas de fontes do sistema. Uma lista dessas pastas pode ser vista pelo método [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders). Se nenhuma fonte suportada for encontrada, Aspose.Words usará a fonte padrão interna Fanwood.ttf.

Como as métricas de fonte de Windows e não-Windows OS são diferentes, Aspose.Words faz todo o possível para encontrar uma fonte semelhante e construir um layout semelhante ao original. No entanto, isso nem sempre é possível. Nesses casos, a classe **FontSettings** deve ser usada para adicionar fontes personalizadas ou regras de substituição.

#### Onde Aspose.Words procura Fontes TrueType em Linux

Diferentes distribuições Linux podem armazenar fontes em pastas diferentes. Aspose.Words procura fontes em vários locais. Por padrão, Aspose.Words procura as fontes em todos os locais a seguir: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Esse comportamento padrão funcionará para a maioria das distribuições Linux, mas não é garantido que funcione o tempo todo, caso em que talvez seja necessário especificar explicitamente a localização das fontes true type. Para fazer isso, você precisa saber onde as fontes TrueType estão instaladas em sua distribuição Linux.

#### Onde Aspose.Words procura Fontes TrueType em Mac OS X

Aspose.Words procura fontes na pasta `/Library/Fonts`, que é o local padrão para Fontes TrueType em Mac OS X. Embora essa configuração funcione para você na maioria das vezes, talvez seja necessário especificar suas próprias pastas de Fontes no caso em que for necessário.

#### TrueType fontes em Android

Em Android, o fluxo de trabalho de fontes é encapsulado na classe Typeface.
Existem cinco tipos de fontes, cada fonte representa um grupo de famílias de fontes semelhantes:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Por exemplo, de acordo com a de Android [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) arquivo de configuração," times "pertence à família" serif " então NotoSerif-Regular.ttf será usado quando" times " for solicitado:

**Fonts.xml**

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

Para procurar fontes semelhantes, são utilizadas as estratégias descritas anteriormente.

Além deles, Aspose.Words tem sua própria lista de substituições para a plataforma Android.

Digamos que o documento contenha a fonte PMingLiU-ExtB, em primeiro lugar, Aspose.Words está procurando a fonte necessária nas fontes do sistema.

A lista padrão das pastas da fonte Android é:

- /sistema / fontes
- /sistema / fonte
- /dados / Fontes

O Aspose.Words examina as fontes definidas pelo usuário que foram definidas com o método:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Caso tenha sido especificada uma substituição explícita, Aspose.Words substitui a fonte em falta pela sugestão do utilizador:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Se nenhuma das regras funcionou, Aspose.Words Verifique a tabela de substituição interna. Se a tabela contiver informações sobre um bom ajuste, a fonte será substituída. No nosso caso, Aspose.Words irá seleccionar `Typeface.SERIF`. Mas se a tabela não souber nada sobre a fonte solicitada, Aspose.Words pega uma fonte com base em regras especiais de Palavras MS ou na distância mais próxima no espaço Panose.

#### TrueType Fontes em .NET Core e Xamarin

Para .NET Core e Xamarin aplica-se a mesma regra que para Aspose.Words para a versão Java. Por padrão, todas as fontes do sistema da plataforma na qual o aplicativo é executado estão disponíveis.
A lista de pastas onde a pesquisa será realizada pode ser encontrada chamando o método:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Carregar fontes da pasta {#loading-fonts-from-folder}

Se o documento que está sendo processado contiver links para fontes que não estão no sistema, ou se você não quiser adicioná-las à pasta do sistema, ou se não tiver permissões, a melhor solução seria adicionar uma pasta com suas próprias fontes usando o método `SetFontsSources`. Isso permitirá substituir a fonte do sistema por uma fonte do Usuário. Aspose.Words deixará de procurar fontes no registo ou na pasta Windows\Font e, em vez disso, apenas procurará fontes dentro da(s) Pasta (s) especificada (s). O método `GetFontSources` retornará os valores correspondentes.

### Especificar uma ou várias pastas de fontes

Os métodos [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) e SetFontsFolders são atalhos para o método **SetFontSources** com uma ou várias instâncias [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/). Esses métodos são usados para indicar onde Aspose.Words deve procurar fontes. Se uma pasta não existir ou não estiver acessível, Aspose.Words simplesmente ignora esta pasta. Se todas as pastas, incluindo fontes para a substituição de fonte, foram ignoradas, Aspose.Words usará a fonte Fanwood como padrão.

O exemplo a seguir demonstra como definir a pasta ou a fonte, que Aspose.Words usará posteriormente para procurar fontes TrueType durante a renderização ou incorporação de fontes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Um parâmetro booleano extra controla se as fontes são verificadas recursivamente em todas as pastas, portanto, varrendo todas as pastas filhas de uma pasta especificada. O exemplo a seguir demonstra como definir Aspose.Words para procurar em várias pastas fontes TrueType ao renderizar ou incorporar fontes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Observe as prioridades. Se houver fontes com o mesmo nome de família e estilo em fontes diferentes, Aspose.Words selecionará a fonte da fonte com uma prioridade mais alta. Veja a descrição do campo" Prioridade " abaixo.

{{% /alert %}}

Se você não quiser usar fontes do sistema, Aspose.Words permite que você as ignore e use apenas suas próprias fontes:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Propriedade Prioritária

A propriedade [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) é usada quando existem fontes com o mesmo nome de família e estilo em fontes de fonte diferentes. Neste caso, Aspose.Words selecciona a fonte da fonte com o valor de prioridade mais elevado. Por exemplo, há uma versão antiga da fonte na pasta do sistema e o cliente adicionou uma nova versão da mesma fonte em uma pasta personalizada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Carregar Fontes Do Stream {#loading-fonts-from-stream}

Aspose.Words fornece a classe [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/), que permite carregar fontes do fluxo. Para usar a fonte de fonte de fluxo, um usuário precisa criar uma classe derivada de **StreamFontSource** e fornecer uma implementação do método [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream). O método **OpenFontDataStream** pode ser chamado várias vezes. Pela primeira vez, será chamado quando Aspose.Words verificar as fontes de fonte fornecidas para obter uma lista de fontes disponíveis. Posteriormente, pode ser chamado se a fonte for usada no documento para analisar os dados da fonte e incorporar os dados da fonte em alguns formatos de saída. **StreamFontSource** pode ser útil porque permite carregar os dados da fonte apenas quando necessário, e não armazená-los na memória durante o tempo de vida de `FontSettings`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## Salvar e carregar um cache de pesquisa de fonte

Ao pesquisar uma fonte pela primeira vez, Aspose.Words itera sobre as fontes de fonte especificadas pelo Usuário e forma um cache de pesquisa de fonte com base nos dados dessas fontes. Assim, o cache coletará informações sobre as fontes disponíveis: família de Fontes, Estilo, nome completo da fonte e outros. Em chamadas subsequentes, Aspose.Words procura informações sobre a fonte desejada pelo seu nome no cache de pesquisa de fontes, após o que analisa os arquivos especificados para usar a fonte.

O procedimento para analisar todos os arquivos de fonte disponíveis para inicializar o cache é bastante demorado. Aspose.Words permite salvar e carregar o cache usando o método **FontSettings.SaveSearchCache** para resolver o problema de desempenho. Ou seja, o usuário pode carregar um cache salvo anteriormente de um arquivo e pular a etapa de análise de todos os arquivos de fonte disponíveis.

{{% alert color="primary" %}}

Use o mesmo método **SaveSearchCache** para atualizar o cache.

{{% /alert %}}

{{% alert color="primary" %}}

O cache também é adequado para outros cenários quando as fontes são carregadas pela rede. Ou para cenários em que não há como armazenar uma instância `FontSettings` com um cache carregado.

{{% /alert %}}


## Obter uma lista de fontes disponíveis {#get-a-list-of-available-fonts}

Se você deseja obter a lista de fontes disponíveis, que, por exemplo, podem ser usadas para renderizar um documento PDF, você pode usar o método [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts), conforme mostrado no exemplo de código a seguir. A classe [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) especifica informações sobre a fonte física disponível para o mecanismo de fontes Aspose.Words:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
