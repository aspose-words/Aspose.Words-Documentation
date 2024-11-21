---
title: Trabalhando com Smart Art Cold Rendering in Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Smart Renderização a frio de arte
linktitle: Trabalhando com Smart Renderização a frio de arte
type: docs
description: "Aspose.Words para Java executa Smart Art Cold Rendering, o que significa que ele expõe e torna objetos SmartArt se o desenho de SmartArt pré-renderizado estiver faltando ou incorreta."
weight: 330
url: /pt/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Os gráficos SmartArt são usados para criar rapidamente e facilmente uma representação visual da informação. Você simplesmente escolher entre um grande número de layouts que melhor se adapta à sua situação. Esta facilidade de uso torna os gráficos SmartArt bastante populares para alguns propósitos.

Microsoft Word gera e salva o desenho pré-renderizado junto com o `SmartArt` objeto. Na maioria dos casos, o desenho pré-renderizado é renderizado bem por Aspose.Words e nenhuma ação adicional é necessária. No entanto, se o documento for salvo por outras aplicações, o desenho SmartArt pré-renderizado pode estar faltando ou incorreta. Neste caso, o `SmartArt` objeto em si deve ser colocado fora e renderizado usando Aspose.Words. Chamamos este processo de `SmartArt` Renderização a frio.

## Usando Smart Renderização a frio de arte

Aspose.Words permite que você use um desenho pré-renderizado ou execute renderização fria:

* Se um desenho pré-renderizado estiver disponível, Aspose.Words usa-o para renderizar `SmartArt` objeto.
* Se o desenho pré-renderizado estiver faltando, Aspose.Words implicitamente executa a renderização fria para renderizar o `SmartArt` objeto.
* Se um desenho pré-renderizado estiver presente, mas estiver incorreto, é necessário executar a renderização fria SmartArt explicitamente chamando [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) método.

O exemplo de código a seguir mostra como atualizar desenhos para todos os diagramas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Suporte para Layouts de SmartArt padrão

Atualmente, apenas um número limitado de padrão Microsoft Word Os layouts SmartArt são suportados. Além disso, alguns desses layouts são suportados parcialmente, o que significa que nós significativos e formas do diagrama são renderizados, mas pode haver diferenças entre Microsoft Word e Aspose.Words layout de diagrama.

A tabela abaixo lista os layouts totalmente e parcialmente suportados:

|  Inteligente Layouts de arte Group |  layouts totalmente suportados |  Layouts parcialmente suportados |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Lista de blocos básicos</li><li>Alternando hexágonos</li><li>Lista vertical de balas</li><li>Lista de caixa vertical</li><li>Varying Width List</li><li>Lista de balas horizontais</li><li>GroupLista ed</li><li>Lista de blocos verticais</li><li>Lista de Chevron Vertical</li><li>Lista de setas vertical</li><li>Lista de produtos relacionados</li><li>Lista de tabelas</li><li>Lista de pirâmides</li><li>Lista de alvos</li></ul> |  <ul><li>Lista linear</li><li>Lista de suporte vertical</li><li>Lista de separadores</li><li>Lista empilhada</li><li>Lista de Acentos Verticales</li><li>Lista de círculo vertical</li></ul> |
|  `Process`  |  <ul><li>Processo Básico</li><li>Processo de Acento</li><li>Processo de bloco contínuo</li><li>Processo de seta crescente</li><li>Texto convergente</li><li>Linha do tempo</li><li>Processo de Chevron Básico</li><li>Processo de Acento de Chevron</li><li>Processo de Chevron fechado</li><li>Lista de Chevron</li><li>Processo vertical</li><li>Processo escalonado</li><li>Lista de processos</li><li>Processo de dobramento básico</li><li>Repetindo o Processo de Bendificação</li><li>Processo detalhado</li><li>Arqueiro para cima</li><li>Processo de Descender</li><li>Processo de dobramento circular</li></ul> |  <ul><li>Processo de elevação</li><li>Passo para baixo processo</li><li>Fluxo de Alternação</li><li>Processo de Círculo crescente</li><li>Processo de Torta</li><li>Processo de bloco interligado</li><li>Setas de processo</li><li>Timeline de Círculo Accent</li><li>Processo de círculo</li><li>Processo Sub Passo</li><li>Processo de Fase</li><li>Aleatório para Processo de Resultado</li><li>Processo de seta de círculo</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Ciclo Segmentado</li><li>Radial hexagonal</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarquia de Mesa</li><li>Layout de arquitetura</li></ul> |
|  `Relationship`  |  <ul><li>Balanço</li><li>Funções</li><li>Engrenagem</li><li>Mais e menos</li><li>Fita de seta</li><li>Setas de contrapeso</li><li>Setas de oposição</li><li>Alvo aninhado</li><li>Alvo básico</li><li>Torta básica</li><li>Ventilação básica</li><li>Veneno empilhado</li><li>Anel de ligação</li></ul> |  <ul><li>Relação de círculo</li><li>Ideias de Oposição</li><li>Equação</li><li>Equação vertical</li><li>Vendedor linear</li></ul> |
|  `Matrix`  |  <ul><li>Matriz básica</li><li>Matriz título</li><li>Matriz de grade</li><li>Matriz de Ciclo</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Pirâmide Segmentado</li></ul> |

## Comparação de SmartArt Rendering em Aspose.Words e Microsoft

A tabela abaixo mostra fotos de exemplo de Aspose.Words Frio Renderização de alguns layouts padrão em comparação com Microsoft Word saída:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
