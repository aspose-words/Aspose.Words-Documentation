---
title: Trabalhando com renderização fria SmartArt
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com renderização fria SmartArt
linktitle: Trabalhando com renderização fria SmartArt
type: docs
description: "Aspose.Words para Python via .NET executa SmartArt Cold Rendering, o que significa que ele organiza e renderiza objetos SmartArt se o desenho SmartArt pré-renderizado estiver ausente ou incorreto."
weight: 330
url: /pt/python-net/working-with-smartart-cold-rendering/
---

Os gráficos SmartArt são usados para criar de forma rápida e fácil uma representação visual de informações. Você simplesmente escolhe entre um grande número de layouts que melhor se adaptam à sua situação. Essa facilidade de uso torna os gráficos SmartArt bastante populares para alguns propósitos.

Microsoft Word gera e salva o desenho pré-renderizado junto com o objeto `SmartArt`. Na maioria dos casos, o desenho pré-renderizado é bem renderizado por Aspose.Words e nenhuma ação adicional é necessária. No entanto, se o documento for salvo por outros aplicativos, o desenho SmartArt pré-renderizado poderá estar ausente ou incorreto. Neste caso, o próprio objeto `SmartArt` deve ser organizado e renderizado usando Aspose.Words. Chamamos esse processo de `SmartArt` Cold Rendering.

## Usando renderização fria SmartArt

Aspose.Words permite que você use um desenho pré-renderizado ou execute uma renderização a frio:

* Se um desenho pré-renderizado estiver disponível, o Aspose.Words o utiliza para renderizar o objeto `SmartArt`.
* Se o desenho pré-renderizado estiver faltando, o Aspose.Words executa implicitamente a renderização a frio para renderizar o objeto `SmartArt`.
* Se um desenho pré-renderizado estiver presente, mas estiver incorreto, será necessário executar explicitamente a renderização fria do SmartArt chamando o método [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

O exemplo de código a seguir mostra como atualizar desenhos para todos os diagramas do documento:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Suporte para layouts SmartArt padrão

Atualmente, apenas um número limitado de layouts Microsoft Word SmartArt padrão são suportados. Além disso, alguns desses layouts são parcialmente suportados, o que significa que nós e formas significativas do diagrama são renderizados, mas pode haver diferenças entre o layout do diagrama Microsoft Word e Aspose.Words.

A tabela abaixo lista os layouts total e parcialmente suportados:

|  Layouts SmartArt Group |  Layouts totalmente suportados |  Layouts parcialmente suportados |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Lista Básica de Bloqueios</li><li>Hexágonos Alternados</li><li>Lista de marcadores verticais</li><li>Lista de caixas verticais</li><li>Lista de largura variável</li><li>Lista com marcadores horizontais</li><li>Lista Grouped</li><li>Lista de bloqueios verticais</li><li>Lista Chevron Vertical</li><li>Lista de setas verticais</li><li>Lista Trapézio</li><li>Lista de tabelas</li><li>Lista Pirâmide</li><li>Lista de alvos</li></ul> |  <ul><li>Lista alinhada</li><li>Lista de colchetes verticais</li><li>Lista de guias</li><li>Lista empilhada</li><li>Lista de destaque vertical</li><li>Lista de Círculos Verticais</li></ul> |
|  `Process`  |  <ul><li>Processo Básico</li><li>Processo de acento</li><li>Processo de Bloco Contínuo</li><li>Processo de seta crescente</li><li>Texto Convergente</li><li>Linha do tempo básica</li><li>Processo Chevron Básico</li><li>Processo de sotaque Chevron</li><li>Processo Chevron Fechado</li><li>Lista Chevron</li><li>Processo vertical</li><li>Processo escalonado</li><li>Lista de processos</li><li>Processo Básico de Dobra</li><li>Repetindo o processo de dobra</li><li>Processo Detalhado</li><li>Seta para cima</li><li>Processo Descendente</li><li>Processo de Dobra Circular</li></ul> |  <ul><li>Processo de intensificação</li><li>Processo de redução</li><li>Fluxo Alternado</li><li>Processo de Círculo Crescente</li><li>Processo de Torta</li><li>Processo de Bloco Interconectado</li><li>Setas de Processo</li><li>Linha do tempo de acento circular</li><li>Processo Círculo</li><li>Processo de subetapa</li><li>Processo Faseado</li><li>Processo aleatório para resultado</li><li>Processo de seta circular</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Ciclo Segmentado</li><li>Hexágono Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarquia de Tabela</li><li>Layout de arquitetura</li></ul> |
|  `Relationship`  |  <ul><li>Equilíbrio</li><li>Funil</li><li>Engrenagem</li><li>Mais e menos</li><li>Fita de seta</li><li>Setas de contrapeso</li><li>Setas opostas</li><li>Alvo aninhado</li><li>Alvo Básico</li><li>Torta Básica</li><li>Venn Básico</li><li>Venn empilhado</li><li>Anel Interconectado</li></ul> |  <ul><li>Relacionamento Círculo</li><li>Idéias opostas</li><li>Equação</li><li>Equação Vertical</li><li>Venn linear</li></ul> |
|  `Matrix`  |  <ul><li>Matriz Básica</li><li>Matriz Intitulada</li><li>Matriz de Grade</li><li>Matriz de Ciclo</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Pirâmide Segmentada</li></ul> |

## Comparação de renderização SmartArt em Aspose.Words e Microsoft

A tabela abaixo mostra imagens de exemplo de renderização fria Aspose.Words de alguns layouts padrão em comparação com a saída Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="processo_básico_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="palavra_processo_básica"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
