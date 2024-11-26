---
title: MFont disponibilidade e substituição em C++
second_title: Aspose.Words para C++
articleTitle: Disponibilidade e substituição de fontes
linktitle: Disponibilidade e substituição de fontes
description: "Quando a fonte de substituição exata não pode ser encontrada, Aspose.Words deve substituí-la por uma fonte semelhante. Este artigo descreve o processo de encontrar a fonte mais adequada."
type: docs
weight: 12
url: /pt/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Um texto em um documento pode ser formatado com várias fontes, como Arial, Times New Roman, Verdana e outras. Quando Aspose.Words renderiza um documento, ele tenta selecionar as fontes especificadas no documento.

No entanto, existem situações em que a fonte exata não pode ser encontrada e Aspose.Words deve substituí-la por uma fonte semelhante. Aspose.Words seleciona a fonte de acordo com o seguinte processo:

1. Aspose.Words tenta encontrar uma fonte entre as fontes de fonte disponíveis com um nome de fonte exato.
1. Aspose.Words tenta encontrar a fonte necessária entre as fontes incorporadas no documento original. Alguns formatos de documentos, como DOCX, podem conter fontes incorporadas.
1. Se Aspose.Words não conseguir localizar a fonte necessária com a correspondência exata do nome e a propriedade [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) definida para essa fonte, Aspose.Words encontrará a fonte definida com **AltName** da classe [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), que especifica as informações da fonte.
1. Se Aspose.Words não conseguir localizar a fonte definida e **AltName** também não estiver definida, as regras de substituição de fonte serão aplicadas uma a uma, conforme descrito abaixo (quando a substituição apropriada for encontrada, o processo de substituição de fonte será interrompido e a próxima etapa não será executada):
   1. Aspose.Words tentará aplicar as configurações de fonte OS, se estiverem disponíveis, usando o utilitário `FontConfig`. Este recurso nãoWindows deve ser usado com um FontConfig compatível com OS. Quase todos os OS baseados em Unix já possuem uma biblioteca `FontConfig` projetada para fornecer configuração de fonte, personalização e acesso a aplicativos em todo o sistema. Caso contrário, esta biblioteca pode ser facilmente instalada pelo utilizador.<br>
      Aspose.Words sabe consultar dados e interpretar FontConfig Resultados para os seus próprios fins. Por predefinição, o utilitário `FontConfig` está desactivado. Você pode ativá-lo da seguinte maneira:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. O próximo passo é um mecanismo simples, mas incrivelmente poderoso, chamado [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Por predefinição, esta funcionalidade está activa e disponível para qualquer OS. Aspose.Words usa XML tabelas que definem regras básicas de substituição para diferentes OS. De acordo com a regra de substituição de tabelas, será utilizada a lista de nomes de fontes substitutas.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - uma fonte a ser substituída, SubstituteFonts - lista de variantes de substituição, separadas por uma vírgula. A primeira fonte disponível é usada para substituição.<br>
      A principal característica desta regra é a capacidade de carregar suas próprias tabelas de substituição, como é mostrado no exemplo a seguir:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Você pode tomar como base a tabela existente do jar ou salvá-la programaticamente da seguinte maneira:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Apesar da flexibilidade deste mecanismo, existem alguns casos em que é melhor desativá-lo, como mostrado abaixo:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. A regra de substituição **FontInfo** será aplicada se a regra de substituição da tabela não conseguir encontrar a fonte. Este mecanismo está activado por predefinição. Aspose.Words Encontra a fonte mais adequada de acordo com as informações de fonte contidas em um documento específico. Esta informação pode ser obtida a partir da classe **FontInfo**, como mostrado abaixo:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Os utilizadores não podem interferir no fluxo de trabalho desta funcionalidade, a menos que decidam desativá - la em caso de resultados insatisfatórios:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Se **FontInfo** não estiver disponível para a fonte ausente, o processo será interrompido.
   1. A regra de substituição **DefaultFont** será aplicada no caso em que a substituição `FontInfo` também falhou. Esta regra também está activada por predefinição. De acordo com esta regra, Aspose.Words tentará usar a fonte padrão especificada na propriedade [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Se o Usuário não escolheu sua própria fonte padrão, então" Times New Roman " será usado como a fonte padrão. Esta regra pode ser desativada como mostrado abaixo:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Para verificar a fonte padrão atual, use:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Para configurar a sua própria opção de substituição, aplique:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Se Aspose.Words não for possível realizar a substituição da fonte, ele tentará obter a primeira fonte disponível das fontes de fonte disponíveis.
1. Finalmente, se Aspose.Words não puder encontrar nenhuma Fonte entre as fontes de fonte disponíveis, ele renderizará o documento usando a fonte Fanwood livre que está embutida no assembly Aspose.Words.

{{% alert color="primary" %}}

Se **FontInfo** estiver disponível, o *FontInfo substitution rule* sempre resolverá a fonte e substituirá a regra de fonte padrão. Se você quiser usar a regra de fonte padrão, você deve desativar o *FontInfo substitution rule*. Observe que *FontConfig substitution rule* resolverá a fonte na maioria dos casos e, portanto, substituirá todas as outras regras.

{{% /alert %}}


