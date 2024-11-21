---
title: Convertendo para formato de página fixa em C#
second_title: Aspose.Words para .NET
articleTitle: Convertendo para formato de página fixa
linktitle: Convertendo para formato de página fixa
description: "Salve documentos nos formatos PDF, XPS, HTML, XAML, PostScript e PCL usando C#."
type: docs
weight: 10
url: /pt/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words implementa seu próprio mecanismo de layout de página. Antes de nos aprofundarmos em suas especificações, vale a pena primeiro discutir o documento em alto nível. Ao pensar em um documento, os usuários normalmente imaginam uma série de folhas de papel contendo palavras, imagens, tabelas e gráficos. Os documentos podem ser de vários tipos, como texto, planilhas, slides, desenhos CAD, fluxogramas e, portanto, podem ter layouts essencialmente diferentes. A maioria dos aplicativos permite o envio de documentos para uma impressora; é quando um usuário pode realmente visualizar a aparência final pretendida do documento.

## Exibindo um documento em vários aplicativos

Vários aplicativos de visualização ou publicação de documentos permitem aos usuários abrir (Adobe Acrobat, XPS Viewer) e, às vezes, editar (Adobe InDesign) documentos de formatos específicos. Esses aplicativos normalmente produzem documentos no formato de "página fixa". Esse formato de documento descreve precisamente onde o conteúdo de um documento é colocado em cada página. Internamente, o formato PDF ou XPS contém a descrição de cada página, bem como instruções de desenho, especificando a disposição do conteúdo da página. Isso é semelhante aos formatos de imagem, descrevendo onde o conteúdo é mostrado em formato raster ou vetorial.

Por outro lado, alguns aplicativos de edição de texto não suportam a visualização das páginas de um documento. Por exemplo, o Microsoft Notepad suporta poucas funções além de simplesmente exibir, editar e imprimir texto. A observação importante aqui é que tais aplicações não podem mostrar páginas do documento nem informar ao usuário quantas delas seriam impressas, permitindo apenas visualizar o conteúdo do documento. O documento pode ser salvo em formato de texto simples e aberto por muitos outros aplicativos. Usando um aplicativo que permite visualizar o conteúdo binário de um arquivo arbitrário, é possível ver o que está armazenado no arquivo do documento – é apenas texto simples, não há mais nada nele.

Aplicativos de edição de texto um pouco mais sofisticados, como o Microsoft WordPad, salvam o documento em Rich Text Format (RTF), que suporta mais funções de formatação, como inserção de imagens, formatação de caracteres, margens de parágrafo e espaçamento. Porém, o formato RTF também contém apenas o conteúdo do documento, não possuindo informações sobre as páginas.

Microsoft Word é o aplicativo de edição de texto em Windows mais avançado atualmente. Ele formata arquivos no formato DOCX, que descreve o conteúdo do documento de forma flexível e extensa, permitindo aos usuários especificar o tamanho da página, a orientação de uma seção do documento e, sendo um aplicativo WYSIWYG, até mesmo mostrar as páginas do documento na tela. Porém, ainda não há informações sobre como o conteúdo do documento é exibido nas páginas disponíveis no arquivo do documento. O arquivo do documento descreve apenas o conteúdo em si e o relacionamento dos objetos do documento entre si, juntamente com algumas restrições geométricas. Como resultado, antes de exibir um documento, o próprio Microsoft Word calcula essa informação. É aqui que o layout da página entra em ação.

## O que é um layout de página

Um layout de página de documento é uma estrutura de dados que descreve onde um determinado objeto está localizado nas páginas de todos os objetos do documento. Além disso, como os objetos têm propriedades que afetam sua aparência, como tamanho da fonte, sombreamento ou efeitos de desenho, você precisa saber não apenas onde o objeto está, mas também que área(s) da página ele ocupa e se ele irá aparecer. aplicam-se a múltiplas páginas para que outros objetos não se sobreponham à(s) mesma(s) área(s).

Aspose.Words implementa internamente a funcionalidade de layout de página, permitindo produzir todos os formatos de página fixos, como PDF, XPS e vários formatos de imagem. Sem layout de página, as informações armazenadas no arquivo de documento de página fixa não estariam disponíveis e todos esses formatos não seriam suportados.

A relação entre um documento e um layout de página é bastante simples. Enquanto um documento descreve o conteúdo, o layout de página correspondente descreve a geometria desse conteúdo. Observe que um layout de página não pode existir sem um documento, pois não haveria conteúdo para calcular a geometria, mas um documento pode existir sem um layout de página. Por exemplo, quando um documento DOCX é convertido em um documento RTF, normalmente é desnecessário conhecer a geometria, pois nenhum dos formatos a armazena.

## Criando layout de página

Criar um layout de página pode ser um procedimento caro, tanto em termos de velocidade quanto de memória. Isto acontece por diversas razões:

- O documento pode ter uma grande quantidade de conteúdo, que pode precisar ser exibido em milhares de páginas. A geometria de cada objeto em cada página precisaria ser descrita, consumindo recursos de memória.
- O documento pode ter muitas regras, colocando restrições na geometria. Um tempo computacional considerável pode ser gasto, garantindo que todas as restrições sejam satisfeitas
- Alguns recursos do documento, por exemplo, o campo `NUMPAGES`, criam dependências recursivas para valores de propriedades futuras, que não estão disponíveis no momento do cálculo. Isso leva a cálculos repetitivos e aumenta o tempo de cálculo.

Pelos motivos acima mencionados, o Aspose.Words criará um layout de página somente quando for necessário. Um motivo típico para isso seria uma solicitação para renderizar páginas de documentos ou para obter um valor de campo que dependa das informações disponíveis no layout da página. Um motivo menos óbvio poderia ser a exportação de um documento para HTML. Embora o HTML não seja um formato de página fixa e não descreva a geometria dos objetos de conteúdo, ele ainda oferece suporte a imagens. Essas imagens podem ter a forma de formas criadas em Microsoft Word com um texto dentro delas. Por exemplo, um gráfico com rótulos de eixo pode ser exportado para HTML como uma imagem, mas antes que isso seja feito, o Aspose.Words precisa renderizar essa imagem e, portanto, precisa saber onde exibir o rótulo. Veja o exemplo do gráfico abaixo:

<img src="/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="convertendo para formato de página fixa_1" style="width:800px"/>

### Propriedades não geométricas

Além de lidar com informações geométricas, um layout de página também é responsável por calcular cores e estilos de borda. No Microsoft Word, a cor do texto pode ser especificada como automática, implicando que a seleção da cor deve ser baseada na cor do sombreamento da célula ou parágrafo, ou na cor da página onde o texto aparece.

O layout da página calcula onde o texto aparecerá e qual conteúdo será renderizado por trás dele, permitindo o cálculo de cores. Existem outros cálculos específicos realizados pelo layout da página. Por exemplo, uma borda horizontal em uma tabela depende se uma linha da tabela é a última em uma coluna de texto e se está dividida entre colunas. Se uma linha for renderizada por último em uma coluna, a borda inferior será usada em vez da horizontal.

![converting-to-fixed-page-format_2](/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

No Aspose.Words, um usuário pode solicitar a criação de um novo layout de página ou a atualização de um existente. Ambos podem ser executados pelo método [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/), fornecido pela classe [Document](https://reference.aspose.com/words/net/aspose.words/document/). Se não existir um layout de página, mas houver necessidade dele (por exemplo, quando o documento for exportado para um formato de página fixa), o Aspose.Words chamará automaticamente esse método. Porém, caso já exista um layout de página, o Aspose.Words utilizará o existente, para não consumir os recursos necessários para atualizá-lo. Neste caso, o usuário precisa chamar o método `UpdatePageLayout`, para garantir que o layout da página esteja atualizado com o modelo do documento.

### Estrutura Dinâmica

O processo de criação do layout da página compreende as seguintes etapas:

- *Conversion* – enumeração do conteúdo do modelo do documento e preparação dos objetos de layout correspondentes.
- *Build* – organização de objetos de layout para representar o conteúdo do documento nas páginas.
- *Reflow* – atualização da disposição dos objetos para satisfazer as restrições geométricas.
- *Projeção de objetos de layout em apresentação de página fixa e finalização de informações de cores*.
- *Construção e refluxo de conteúdo de forma* – uma etapa necessária se o documento contiver formas com conteúdo de texto aninhado.

Observe que o layout da página é uma estrutura dinâmica, que pode ser parcialmente reconstruída. Isto é especialmente necessário quando é impossível calcular valores de campo sem reconstruir a estrutura de layout do documento. O campo pode fazer referência à localização de um objeto em uma página e, ao mesmo tempo, o próprio valor do campo também é renderizado na página, afetando a localização do objeto referenciado. Um layout de página não pode ser criado de uma só vez, porque os valores dos campos podem ainda não estar disponíveis no momento do posicionamento em uma página.

Considere o cenário típico quando o campo `NUMPAGES` aparece no rodapé da primeira página do documento. O valor deste campo é o número total de páginas. Para posicionar o campo em uma página, seu valor deve ser conhecido. Se apenas a primeira página estiver sendo construída, o número total de páginas ainda não é conhecido. Neste caso, o layout da página deve utilizar o valor padrão e posteriormente voltar a esse campo e alterar seu valor de acordo com os cálculos reais. No entanto, alterar o valor do campo pode afetar o conteúdo de outro documento em uma página e, em última análise, fazer com que uma nova página seja anexada ou uma página existente seja removida, tornando o valor calculado desatualizado. Esse problema pode ser resolvido possibilitando a atualização do layout da página existente.

Ao criar um layout, também é possível configurar propriedades [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) que afetam a saída do documento nas páginas.

## Salvando em formato de página fixa

Após a construção do layout da página e o cálculo da geometria dos objetos e sua posição na página, o documento pode ser salvo em um formato de página fixa suportado pelo Aspose.Words. Ao salvar documentos em formatos de página fixa, as opções de renderização comuns a todos esses formatos podem ser usadas. Eles permitem controlar:

- O número e intervalo de páginas contidas no documento de saída ([PageCount](https://reference.aspose.com/words/net/aspose.words/document/pagecount/)).
- Progresso do salvamento de documentos página por página ([PageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- Um conjunto de caracteres usados para renderização de números ([NumeralFormat](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)).
- Um reprodutor de metarquivo ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Para mais detalhes, consulte o artigo [Tratamento de metarquivos Windows](/words/pt/net/handling-windows-metafiles/).
- Uma taxa de qualidade para recompactar imagens JPEG, cujo valor pode diferir ligeiramente, dependendo do formato de salvamento selecionado ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)).
- Otimização de gráficos vetoriais em saída Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- Opções gráficas ao salvar nos formatos Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Salvar o documento em escala de cinza ([ColorMode](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
- Alternar entre renderização de formas DrawingML e formas substitutas ([DmlRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Alternar entre modos de renderização de efeitos DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

O exemplo abaixo demonstra como salvar um documento no formato JPEG usando o método `Save` e opções de renderização:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cs" >}}
