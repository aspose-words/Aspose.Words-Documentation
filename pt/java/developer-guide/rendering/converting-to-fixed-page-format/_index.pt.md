---
title: Converter para Formato de página fixa em Java
second_title: Aspose.Words para Java
articleTitle: Converter para Formato de página fixa
linktitle: Converter para Formato de página fixa
description: "Aspose.Words para Java implementa seu próprio motor de layout de página, permitindo-lhe produzir todos os formatos de página fixa, tais como PDF, XPS, e vários formatos de imagem."
type: docs
weight: 10
url: /pt/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa seu próprio motor de layout de página. Antes de se aprofundar em suas especificações, vale a pena primeiro discutir o documento em um alto nível. Ao pensar em um documento, os usuários normalmente imaginam uma série de folhas de papel contendo palavras, imagens, tabelas e gráficos. Os documentos podem ser de vários tipos, como texto, planilhas, slides, desenhos CAD, fluxogramas e, portanto, podem ter layouts essencialmente diferentes. A maioria dos aplicativos permite enviar documentos para uma impressora; é quando um usuário pode realmente ver a aparência final do documento.

## Exibindo um documento em várias aplicações

Vários aplicativos de visualização ou publicação de documentos permitem que os usuários abram (Adobe Acrobat, XPS Viewer), e às vezes editar (Adobe InDesign) documentos de formatos específicos. Esses aplicativos normalmente produzem documentos de formato "página fixa". Tal formato de documento descreve precisamente onde o conteúdo de um documento é colocado em cada página. Internamente, o PDF ou XPS formato contém uma descrição de cada página, bem como instruções de desenho, especificando o layout do conteúdo na página. Isso é semelhante aos formatos de imagem, descrevendo onde o conteúdo é mostrado em forma raster ou vetorial.

Em contraste, alguns aplicativos de edição de texto não suportam a visualização de páginas de um documento. Por exemplo, Microsoft O Notepad suporta muito poucas funções além de simplesmente exibir, editar e imprimir texto. A observação importante aqui é que tais aplicações não podem mostrar páginas do documento nem dizer a um usuário quantos deles seriam impressos, apenas permitindo visualizar o conteúdo do documento. O documento pode ser salvo em formato de texto simples e pode ser aberto por muitas outras aplicações. Usando um aplicativo que permite visualizar o conteúdo binário de um arquivo arbitrário pode-se ver o que é armazenado no arquivo de documento – é apenas texto simples, não há mais nada nele.

Aplicações de edição de texto ligeiramente mais sofisticadas, como Microsoft WordPad, salve o documento no Rich Text Format (RTF), que suporta mais funções de formatação, como inserção de imagens, formatação de caracteres, margens de parágrafo e espaçamento. No entanto, o formato RTF também contém apenas o conteúdo do documento, não tendo nenhuma informação sobre páginas.

Microsoft Word é a aplicação de edição de texto mais avançada em Windows Hoje. Ele formata arquivos no formato DOCX, que descreve o conteúdo do documento de forma flexível e extensiva, permitindo que os usuários especifiquem o tamanho da página, orientação para uma seção de documentos e, sendo um aplicativo WYSIWYG mesmo mostrar páginas de documentos na tela. No entanto, ainda não há informações sobre como o conteúdo do documento é exibido nas páginas disponíveis no arquivo do documento. O arquivo de documento apenas descreve o conteúdo em si, e a relação de objetos de documento entre si, juntamente com algumas restrições geométricas. Como resultado, antes de exibir um documento, Microsoft Word computa essa informação em si. É aqui que um layout de página entra em jogo.

## O que é um layout de página

Um layout de página de documento é uma estrutura de dados, descrevendo onde um objeto específico está localizado em páginas para todos os objetos de documento. Além disso, uma vez que os objetos têm propriedades que afetam suas aparências, tais como tamanho da fonte, sombreamento ou efeitos de desenho, você precisa não só saber onde está o objeto, mas também que área (s) da página que ocupa, e se vai aplicar a várias páginas para que outros objetos não sobreponham a mesma área (s).

Aspose.Words implementa a funcionalidade de layout de página internamente permitindo que ele produza todos os formatos de página fixa, como PDF, XPS, e vários formatos de imagem. Sem layout de página, as informações armazenadas no arquivo de documento de página fixa não estariam disponíveis e todos esses formatos não seriam suportados.

A relação entre um documento e um layout de página é bastante simples. Considerando que um documento descreve o conteúdo, o layout da página correspondente descreve a geometria desse conteúdo. Note, que um layout de página não pode existir sem um documento, pois não haveria conteúdo para a computação da geometria, mas um documento pode existir sem um layout de página. Por exemplo, quando um documento DOCX é convertido em um documento RTF, normalmente é desnecessário conhecer a geometria, uma vez que nenhum formato o armazena.

## Criando um layout de página

Criar um layout de página pode ser um procedimento caro, tanto em termos de velocidade e memória. Isto é devido a várias razões:

- Não. O documento pode ter uma grande quantidade de conteúdo, que pode precisar ser exibido em milhares de páginas. A geometria de cada objeto em cada página precisaria ser descrita, consumindo recursos de memória.
- Não. O documento pode ter muitas regras, colocando restrições na geometria. Tempo computacional considerável pode ser gasto, garantindo que cada restrição esteja satisfeita
- Algumas características do documento, por exemplo, o `NUMPAGES` campo, criar dependências recursivas para futuros valores de propriedade, que não estão disponíveis no momento da computação. Isso leva a cálculos repetitivos e adiciona-se em tempo de computação.

Devido às razões acima mencionadas, Aspose.Words criará um layout de página somente quando for necessário. Uma razão típica para isso seria uma solicitação para renderizar páginas de documentos ou para obter um valor de campo que depende de informações disponíveis no layout da página. Uma razão menos óbvia poderia estar exportando um documento para HTML. Mesmo que o HTML não seja um formato de página fixa e não descreva a geometria dos objetos de conteúdo, ele ainda suporta imagens. Tais imagens podem estar na forma de formas criadas em Microsoft Word com um texto dentro deles. Por exemplo, um gráfico com rótulos de eixo pode ser exportado para HTML como uma imagem, mas antes disso pode ser feito Aspose.Words precisa renderizar essa imagem e, portanto, precisa saber onde exibir o rótulo. Veja o exemplo do gráfico abaixo:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Não geométrico Propriedades

Além de lidar com informações geométricas, um layout de página também é responsável pelo cálculo de cores e estilos de borda. Em Microsoft Word, A cor do texto pode ser especificada como automática, implicando que a seleção de cores deve ser baseada na cor de sombreamento da célula ou parágrafo, ou com base na cor da página, onde o texto aparece.

O layout da página computa onde o texto aparecerá e que conteúdo será renderizado atrás dele, permitindo o cálculo da cor. Existem outros cálculos específicos realizados pelo layout da página. Por exemplo, uma borda horizontal em uma tabela depende de se uma linha de tabela é última em uma coluna de texto, e se ela é quebrada em colunas. Se uma linha for renderizada última em uma coluna, a borda inferior é usada em vez de horizontal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Em Aspose.Words, um usuário pode solicitar se deve construir um novo layout de página ou atualizar um existente. Ambos podem ser realizados por [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) método, fornecido pelo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. Se um layout de página não existe, mas há uma necessidade para ele (por exemplo, quando o documento é exportado para um formato de página fixa), Aspose.Words irá automaticamente chamar este método. No entanto, se um layout de página já existe, Aspose.Words usará o existente, a fim de evitar consumir os recursos necessários para atualizá-lo. Neste caso, o usuário precisa chamar o `UpdatePageLayout` método, a fim de garantir que o layout da página está atualizado com o modelo do documento.

### Estrutura dinâmica

O processo de criação de layout de página compreende as seguintes etapas:

- Não. *Conversion* – enumerar conteúdo do modelo de documento e preparar objetos de layout correspondentes.
- Não. *Build* – organizar objetos de layout para representar o conteúdo do documento em páginas.
- Não. *Reflow* – atualizando o arranjo de objetos para satisfazer restrições de geometria.
- *Projetando objetos de layout em apresentação de página fixa e finalizando informações de cor*.
- *Construção e refluxo de conteúdo de forma* – um passo necessário se o documento contém formas com conteúdo de texto aninhado.

Note que o layout da página é uma estrutura dinâmica, que pode ser parcialmente reconstruída. Isso é especialmente necessário quando é impossível calcular valores de campo sem reconstruir a estrutura de layout do documento. O campo pode referenciar a localização de um objeto em uma página, e ao mesmo tempo o valor de campo em si também é renderizado na página, afetando a localização do objeto referenciado. Um layout de página não pode ser construído em uma só vez, porque os valores de campo podem ainda não estar disponíveis no momento do posicionamento em uma página.

Considere o cenário típico quando o `NUMPAGES` campo aparece no rodapé da primeira página no documento. O valor deste campo é o número total de páginas. Para posicionar o campo em uma página, seu valor deve ser conhecido. Se apenas a primeira página está sendo construída, então o número total de páginas ainda não é conhecido. Neste caso, o layout da página tem de usar o valor padrão e mais tarde voltar para esse campo e alterar seu valor de acordo com as computações reais. No entanto, alterar o valor de campo pode afetar outros conteúdos de documentos em uma página e, em última análise, fazer com que uma nova página seja anexada ou uma página existente removida, tornando o valor computado ultrapassado. Este problema pode ser resolvido, tornando possível atualizar o layout da página existente.

Ao criar um layout, também é possível configurar [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriedades que afetam a saída do documento em páginas.

## Salvar ao formato de página fixa

Depois que o layout da página é construído e a geometria dos objetos e sua posição na página são calculadas, o documento pode ser salvo em um formato de página fixa suportado por Aspose.Words. Ao salvar documentos para formatos de página fixa, as opções de renderização comuns a todos esses formatos podem ser usadas. Eles permitem controlar:

- Não. O número e a gama de páginas contidas no documento de saída ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Evolução da página por página de poupança de documentos ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Um conjunto de caracteres que são usados para renderizar números ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Um metafile player ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Para mais detalhes, consulte o [Manuseamento Windows Metafiles](/words/pt/java/handling-windows-metafiles/) artigo.
- Uma taxa de qualidade para recomprimir imagens JPEG, cujo valor pode diferir ligeiramente, dependendo do formato de salva selecionada ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Otimização de gráficos vetoriais em Aspose.Words saída ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opções de gráficos ao salvar para Tiff, Png, Bmp, Jpeg, Emf formatos ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Salvar o documento em tons de cinza ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Mudar entre a renderização de formas DrawingML e formas de retorno ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Mudar entre os modos de renderização de efeitos DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

O exemplo abaixo mostra como salvar um documento no formato JPEG usando o `Save` método e opções de renderização:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
