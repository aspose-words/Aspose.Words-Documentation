---
title: Conversão para o formato de página fixa em Java
second_title: Aspose.Words para Java
articleTitle: Conversão para o formato de página Fixa
linktitle: Conversão para o formato de página Fixa
description: "Aspose.Words for Java implementa seu próprio mecanismo de layout de página, permitindo que ele produza todos os formatos de página fixos, como PDF, XPS e vários formatos de imagem."
type: docs
weight: 10
url: /pt/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa seu próprio mecanismo de layout de página. Antes de se aprofundar nas suas especificações, vale a pena primeiro discutir documentos a um nível elevado. Ao pensar em um documento, os usuários normalmente imaginam uma série de folhas de papel contendo palavras, imagens, tabelas e gráficos. Os documentos podem ser de vários tipos, como texto, folhas de cálculo, diapositivos, CAD Desenhos, fluxogramas e, por conseguinte, podem ter disposições essencialmente diferentes. A maioria dos aplicativos permite o envio de documentos para uma impressora; é quando um usuário pode realmente visualizar a aparência final pretendida do documento.

## Apresentação de um documento em várias aplicações

Vários aplicativos de visualização ou publicação de documentos permitem que os usuários abram (Adobe Acrobat, XPS Viewer) e, às vezes, editem (Adobe InDesign) documentos de formatos específicos. Estas aplicações produzem normalmente os chamados documentos em formato de" página fixa". Esse formato de documento descreve precisamente onde o conteúdo de um documento é colocado em cada página. Internamente, o formato PDF ou XPS contém uma descrição de cada página, bem como instruções de desenho, especificando o layout do conteúdo da página. Isto é semelhante aos formatos de imagem, descrevendo onde o conteúdo é mostrado na forma raster ou vetorial.

Em contrapartida, algumas aplicações de edição de texto não suportam a visualização das páginas de um documento. Por exemplo, Microsoft o bloco de notas suporta muito poucas funções além de simplesmente exibir, editar e imprimir texto. A observação importante aqui é que esses aplicativos não podem mostrar páginas do documento nem informar ao usuário quantas delas seriam impressas, permitindo apenas visualizar o conteúdo do documento. O documento pode ser salvo em formato de texto simples e pode ser aberto por muitos outros aplicativos. Usando um aplicativo que permite visualizar o conteúdo binário de um arquivo arbitrário, pode – se ver o que está armazenado no arquivo do documento-é apenas texto simples, não há mais nada nele.

Aplicações de edição de texto um pouco mais sofisticadas, como Microsoft WordPad, salvam o documento em formato Rich Text (RTF), que suporta mais funções de formatação, como inserção de imagens, formatação de caracteres, margens de parágrafo e espaçamento. No entanto, o formato RTF também contém apenas o conteúdo do documento, não tendo informações sobre as páginas.

Microsoft Word é o aplicativo de edição de texto mais avançado em Windows atualmente. Formata ficheiros no formato DOCX, que descreve o conteúdo do documento de forma flexível e extensiva, permitindo aos utilizadores especificar o tamanho da página, a orientação para uma secção do documento e, sendo uma aplicação WYSIWYG até mostrar páginas do documento no ecrã. No entanto, ainda não existem informações sobre a forma como o conteúdo do documento é apresentado nas páginas disponíveis no ficheiro do documento. O ficheiro do documento descreve apenas o conteúdo em si e a relação dos objectos do documento entre si, juntamente com algumas restrições geométricas. Como resultado, antes de exibir um documento, Microsoft Word calcula essa informação em si. É aqui que um layout de página entra em jogo.

## O que é um Layout de página

Um layout de página de documento é uma estrutura de dados, descrevendo onde um objeto específico está localizado nas páginas para todos os objetos de Documento. Além disso, como os objetos têm propriedades que afetam sua aparência, como tamanho da fonte, efeitos de sombreamento ou desenho, você precisa não apenas saber onde o objeto está, mas também qual (is) área (s) da página que ocupa e se se aplicará a várias páginas para que outros objetos não se sobreponham à (s) mesma (s) Área (s).

Aspose.Words implementa a funcionalidade de layout de página internamente, permitindo-lhe produzir todos os formatos de página fixos, como PDF, XPS e vários formatos de imagem. Sem o layout da página, as informações armazenadas no arquivo de documento de página fixa não estariam disponíveis e todos esses formatos não seriam suportados.

A relação entre um documento e um layout de página é bastante simples. Enquanto um documento descreve o conteúdo, o layout da página correspondente descreve a geometria desse conteúdo. Observe que um layout de página não pode existir sem um documento, pois não haveria conteúdo para calcular a geometria, mas um documento pode existir sem um layout de página. Por exemplo, quando um documento DOCX é convertido em um documento RTF, normalmente é desnecessário conhecer a geometria, uma vez que nenhum formato a armazena.

## Criando um Layout de página

Criar um layout de página pode ser um procedimento dispendioso, tanto em termos de velocidade como de memória. Isto é devido a várias razões:

- O documento pode ter uma grande quantidade de conteúdo, que pode precisar ser exibido em milhares de páginas. A geometria de cada objeto em cada página precisaria ser descrita, consumindo recursos de memória.
- O documento pode ter muitas regras, colocando restrições na geometria. Pode ser gasto um tempo computacional considerável, garantindo que todas as restrições sejam satisfeitas.
- Alguns recursos do documento, por exemplo, o campo `NUMPAGES`, criam dependências recursivas para valores de propriedade futuros, que não estão disponíveis no momento do cálculo. Isso leva a cálculos repetitivos e soma-se no tempo de computação.

Devido às razões acima mencionadas, Aspose.Words irá criar um layout de página apenas quando for necessário. Uma razão típica para isso seria uma solicitação para renderizar páginas de documentos ou obter um valor de campo que depende das informações disponíveis no layout da página. Uma razão menos óbvia poderia ser exportar um documento para HTML. Embora HTML não seja um formato de página fixa e não descreva a geometria dos objetos de conteúdo, ele ainda suporta imagens. Essas imagens podem ter a forma de formas criadas em Microsoft Word com um texto no seu interior. Por exemplo, um gráfico com rótulos de eixo pode ser exportado para HTML como uma imagem, mas antes que isso possa ser feito Aspose.Words precisa renderizar essa imagem e, portanto, precisa saber onde exibir o rótulo. Veja o exemplo do gráfico abaixo:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Propriedades Não Geométricas

Além de lidar com informações geométricas, um layout de página também é responsável pelo cálculo de cores e estilos de borda. Em Microsoft Word, a cor do texto pode ser especificada como automática, o que implica que a seleção de cores deve ser baseada na cor de sombreamento da célula ou parágrafo, ou com base na cor da página, onde o texto aparece.

O layout da página calcula onde o texto aparecerá e qual conteúdo será renderizado por trás dele, permitindo o cálculo de cores. Existem outros cálculos específicos realizados pelo layout da página. Por exemplo, uma borda horizontal em uma tabela depende se uma linha da tabela é a última em uma coluna de texto e se está dividida entre colunas. Se uma linha for renderizada por último em uma coluna, a borda inferior será usada em vez de horizontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Em Aspose.Words, um usuário pode solicitar a criação de um novo layout de página ou a atualização de um existente. Ambos podem ser executados pelo método [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), fornecido pela classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Se um layout de página não existir, mas houver necessidade dele (por exemplo, quando o documento for exportado para um formato de página fixa), Aspose.Words chamará automaticamente esse método. No entanto, se um layout de página já existir, Aspose.Words usará o existente, a fim de evitar consumir os recursos necessários para atualizá-lo. Nesse caso, o usuário precisa chamar o método `UpdatePageLayout` para garantir que o layout da página esteja atualizado com o modelo do documento.

### Estrutura Dinâmica

O processo de criação do layout da página compreende as seguintes etapas:

- *Conversion* - enumerar o conteúdo do modelo do documento e preparar os objectos de disposição correspondentes.
- *Build* - organizar objetos de layout para representar o conteúdo do documento nas páginas.
- *Reflow* - actualizar a disposição dos objectos para satisfazer as restrições de geometria.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - uma etapa necessária se o documento contiver formas com conteúdo de texto aninhado.

Observe que o layout da página é uma estrutura dinâmica, que pode ser parcialmente reconstruída. Isso é especialmente necessário quando é impossível calcular valores de campo sem reconstruir a estrutura de layout do documento. O campo pode fazer referência à localização de um objeto em uma página e, ao mesmo tempo, o próprio valor do campo também é renderizado na página, afetando a localização do objeto referenciado. Um layout de página não pode ser construído de uma só vez, porque os valores dos campos podem ainda não estar disponíveis no momento do posicionamento em uma página.

Considere o cenário típico quando o campo `NUMPAGES` aparece no rodapé da primeira página do documento. O valor deste campo é o número total de páginas. Para posicionar o campo numa página, o seu valor deve ser conhecido. Se apenas a primeira página estiver a ser construída, o número total de páginas ainda não é conhecido. Nesse caso, o layout da página deve usar o valor padrão e, posteriormente, voltar a esse campo e alterar seu valor de acordo com os cálculos reais. No entanto, a alteração do valor do campo pode afetar o conteúdo de outro documento numa página e, por fim, fazer com que uma nova página seja acrescentada ou uma página existente seja removida, tornando o valor calculado desatualizado. Este problema pode ser resolvido, permitindo actualizar a disposição da Página existente.

Ao criar um layout, também é possível configurar [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriedades que afetam a saída do documento nas páginas.

## Salvar no formato de página Fixa

Depois que o layout da página é construído e a geometria dos objetos e sua posição na página são calculados, o documento pode ser salvo em um formato de página fixa suportado por Aspose.Words. Ao salvar documentos em formatos de página fixa, as opções de renderização comuns a todos esses formatos podem ser usadas. Permitem controlar:

- O número e o intervalo de páginas contidos no documento de saída ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progresso da gravação de documentos página a página ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Um conjunto de caracteres que são utilizados para a renderização de números ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Um reprodutor de metarquivo ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Para mais detalhes, ver o [Manipula Elimio De Windows Metarquivos](/words/java/handling-windows-metafiles/) artigo.
- Uma taxa de qualidade para recomprimir JPEG imagens, cujo valor pode diferir ligeiramente, dependendo do formato de gravação selecionado ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Otimização de gráficos vetoriais em Aspose.Words saída ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opções gráficas ao salvar nos formatos Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Guardar o documento em escala de cinzentos ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Alternar entre a renderização de formas DrawingML e formas de fallback ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Alternar entre DML modos de renderização de efeitos ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

O exemplo abaixo demonstra como salvar um documento no formato JPEG usando o método `Save` e as opções de renderização:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
