---
title: Criando um Layout de Página Em C++
second_title: Aspose.Words para C++
articleTitle: Criando um Layout de página
linktitle: Criando um Layout de página
description: "Criar um layout de página pode ser um procedimento caro. Aspose.Words criará um layout de página apenas quando for necessário: renderizar páginas de documentos, obter um valor de campo, exportar um documento para HTML, etc."
type: docs
weight: 10
url: /pt/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Criar um layout de página pode ser um procedimento dispendioso, tanto em termos de velocidade como de memória. Isto é devido a várias razões:

- O documento pode ter uma grande quantidade de conteúdo, que pode precisar ser exibido em milhares de páginas. A geometria de cada objeto em cada página precisaria ser descrita, consumindo recursos de memória.
- O documento pode ter muitas regras, colocando restrições na geometria. Pode ser gasto um tempo computacional considerável, garantindo que todas as restrições sejam satisfeitas.
- Alguns recursos do documento, por exemplo, o campo `NUMPAGES`, criam dependências recursivas para valores de propriedade futuros, que não estão disponíveis no momento do cálculo. Isso leva a cálculos repetitivos e soma-se no tempo de computação.

Devido às razões acima mencionadas, Aspose.Words irá criar um layout de página apenas quando for necessário. Uma razão típica para isso seria uma solicitação para renderizar páginas de documentos ou obter um valor de campo que depende das informações disponíveis no layout da página. Uma razão menos óbvia poderia ser exportar um documento para HTML. Embora HTML não seja um formato de página fixa e não descreva a geometria dos objetos de conteúdo, ele ainda suporta imagens. Essas imagens podem ter a forma de formas criadas em Microsoft Word com um texto no seu interior. Por exemplo, um gráfico com rótulos de eixo pode ser exportado para HTML como uma imagem, mas antes que isso possa ser feito Aspose.Words precisa renderizar essa imagem e, portanto, precisa saber onde exibir o rótulo. Veja o exemplo do gráfico abaixo:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Propriedades Não Geométricas

Além de lidar com informações geométricas, um layout de página também é responsável pelo cálculo de cores e estilos de borda. Em Microsoft Word, a cor do texto pode ser especificada como automática, o que implica que a seleção de cores deve ser baseada na cor de sombreamento da célula ou parágrafo, ou com base na cor da página, onde o texto aparece.

O layout da página calcula onde o texto aparecerá e qual conteúdo será renderizado por trás dele, permitindo o cálculo de cores. Existem outros cálculos específicos realizados pelo layout da página. Por exemplo, uma borda horizontal em uma tabela depende se uma linha da tabela é a última em uma coluna de texto e se está dividida entre colunas. Se uma linha for renderizada por último em uma coluna, a borda inferior será usada em vez de horizontal.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

Em Aspose.Words, um usuário pode solicitar a criação de um novo layout de página ou a atualização de um existente. Ambos podem ser executados pelo método [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), fornecido pela classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Se um layout de página não existir, mas houver necessidade dele (por exemplo, quando o documento for exportado para um formato de página fixa), Aspose.Words chamará automaticamente esse método. No entanto, se um layout de página já existir, Aspose.Words usará o existente, a fim de evitar consumir os recursos necessários para atualizá-lo. Nesse caso, o usuário precisa chamar o método `UpdatePageLayout` para garantir que o layout da página esteja atualizado com o modelo do documento.

## Estrutura Dinâmica

O processo de criação do layout da página compreende as seguintes etapas:

- *Conversion* - enumerar o conteúdo do modelo do documento e preparar os objectos de disposição correspondentes.
- *Build* - organizar objetos de layout para representar o conteúdo do documento nas páginas.
- *Reflow* - actualizar a disposição dos objectos para satisfazer as restrições de geometria.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - uma etapa necessária se o documento contiver formas com conteúdo de texto aninhado.

Observe que o layout da página é uma estrutura dinâmica, que pode ser parcialmente reconstruída. Isso é especialmente necessário quando é impossível calcular valores de campo sem reconstruir a estrutura de layout do documento. O campo pode fazer referência à localização de um objeto em uma página e, ao mesmo tempo, o próprio valor do campo também é renderizado na página, afetando a localização do objeto referenciado. Um layout de página não pode ser construído de uma só vez, porque os valores dos campos podem ainda não estar disponíveis no momento do posicionamento em uma página.

Considere o cenário típico quando o campo `NUMPAGES` aparece no rodapé da primeira página do documento. O valor deste campo é o número total de páginas. Para posicionar o campo numa página, o seu valor deve ser conhecido. Se apenas a primeira página estiver a ser construída, o número total de páginas ainda não é conhecido. Nesse caso, o layout da página deve usar o valor padrão e, posteriormente, voltar a esse campo e alterar seu valor de acordo com os cálculos reais. No entanto, a alteração do valor do campo pode afetar o conteúdo de outro documento numa página e, por fim, fazer com que uma nova página seja acrescentada ou uma página existente seja removida, tornando o valor calculado desatualizado. Este problema pode ser resolvido, permitindo actualizar a disposição da Página existente.

Ao criar um layout, também é possível configurar [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) propriedades que afetam a saída do documento nas páginas.
