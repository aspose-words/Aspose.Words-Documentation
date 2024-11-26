---
title: Trabalhando com SmartArt renderização a frio em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com SmartArt renderização a frio
linktitle: Trabalhando com SmartArt renderização a frio
type: docs
description: "Aspose.Words para Java executa SmartArt renderização a frio, o que significa que ele apresenta e renderiza SmartArt objetos se o desenho SmartArt pré-renderizado estiver ausente ou incorreto."
weight: 330
url: /pt/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt Os gráficos são utilizados para criar rápida e facilmente uma representação visual da informação. Você simplesmente escolhe entre um grande número de layouts que melhor se adequam à sua situação. Esta facilidade de Utilização torna os gráficos SmartArt bastante populares para alguns fins.

Microsoft Word gera e salva o desenho pré-renderizado junto com o objeto `SmartArt`. Na maioria dos casos, o desenho pré-renderizado é bem renderizado por Aspose.Words e nenhuma ação adicional é necessária. No entanto, se o documento for salvo por outros aplicativos, o desenho SmartArt pré-renderizado pode estar ausente ou incorreto. Nesse caso, o próprio objeto `SmartArt` deve ser disposto e renderizado usando Aspose.Words. Chamamos esse processo de renderização a frio `SmartArt`.

## Usando SmartArt Renderização A Frio

Aspose.Words permite que você use um desenho pré-renderizado ou execute renderização a frio:

* Se um desenho pré-renderizado estiver disponível, Aspose.Words o usará para renderizar o objeto `SmartArt`.
* Se o desenho pré-renderizado estiver ausente, Aspose.Words executa implicitamente a renderização a frio para renderizar o objeto `SmartArt`.
* Se um desenho pré-renderizado estiver presente, mas estiver incorreto, é necessário executar a renderização a frio SmartArt explicitamente chamando o método [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing).

O exemplo de código a seguir mostra como atualizar desenhos para todos os diagramas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Suporte para Layouts padrão SmartArt

Atualmente, apenas um número limitado de layouts padrão Microsoft Word SmartArt são suportados. Além disso, alguns desses layouts são parcialmente suportados, o que significa que nós e formas significativas do diagrama são renderizados, mas pode haver diferenças entre o layout do diagrama Microsoft Word e Aspose.Words.

A tabela abaixo lista os layouts total e parcialmente suportados:

| SmartArt Grupo De Disposições | Layouts totalmente suportados | Disposições parcialmente suportadas |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Lista De Bloqueio Básica</li><li>Hexágonos Alternados</li><li>Lista De Marcadores Verticais</li><li>Lista De Caixas Verticais</li><li>Lista De Largura Variável</li><li>Lista Horizontal De Marcadores</li><li>Lista Agrupada</li><li>Lista De Bloqueio Vertical</li><li>Lista Vertical De Divisas</li><li>Lista De Setas Verticais</li><li>Lista Trapezoidal</li><li>Lista Do Quadro</li><li>Lista Das Pirâmides</li><li>Lista Alvo</li></ul> | <ul><li>Lista Alinhada</li><li>Lista De Suportes Verticais</li><li>Lista De Guias</li><li>Lista Empilhada</li><li>Lista De Acentuação Vertical</li><li>Lista De Círculos Verticais</li></ul> |
| `Process` | <ul><li>Processo Básico</li><li>Processo De Acento</li><li>Processo De Bloqueio Contínuo</li><li>Processo Crescente Da Seta</li><li>Texto Convergente</li><li>Linha Do Tempo Básica</li><li>Processo Chevron Básico</li><li>Processo Chevron Accent</li><li>Processo Chevron Fechado</li><li>Lista Chevron</li><li>Processo Vertical</li><li>Processo Escalonado</li><li>Lista De Processos</li><li>Processo Básico De Flexão</li><li>Repetição Do Processo De Dobragem</li><li>Processo Detalhado</li><li>Seta Para Cima</li><li>Processo Descendente</li><li>Processo De Dobragem Circular</li></ul> | <ul><li>Intensificar O Processo</li><li>Processo De Redução</li><li>Fluxo Alternado</li><li>Processo Crescente Do Círculo</li><li>Pie processo</li><li>Processo De Bloqueio Interligado</li><li>Setas De Processo</li><li>Linha Do Tempo Do Acento Do Círculo</li><li>Processo Circular</li><li>Processo De Sub-Etapa</li><li>Processo Faseado</li><li>Aleatório ao processo do resultado</li><li>Processo De Seta Circular</li></ul> |
| `Cycle` |  | <ul><li>Ciclo Segmentado</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Hierarquia Da Tabela</li><li>Disposição Da Arquitectura</li></ul> |
| `Relationship` | <ul><li>Saldo</li><li>Funil</li><li>Artes</li><li>Mais E Menos</li><li>Arrow Ribbon</li><li>Setas De Contrapeso</li><li>Setas Opostas</li><li>Destino Aninhado</li><li>Objectivo De Base</li><li>Básico Pie</li><li>Venn Básico</li><li>Stacked Venn</li><li>Anel Interligado</li></ul> | <ul><li>Relação Do Círculo</li><li>Ideias Opostas</li><li>Equação</li><li>Equação Vertical</li><li>Linear Venn</li></ul> |
| `Matrix` | <ul><li>Matriz Básica</li><li>Matriz Intitulada</li><li>Matriz De Grelha</li><li>Matriz Do Ciclo</li></ul> |  |
| `Pyramid` |  | <ul><li>Pirâmide Segmentada</li></ul> |

## Comparação de SmartArt renderização em Aspose.Words e Microsoft

A tabela abaixo mostra imagens de exemplo de Aspose.Words renderização a frio de alguns layouts padrão em comparação com a saída Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
