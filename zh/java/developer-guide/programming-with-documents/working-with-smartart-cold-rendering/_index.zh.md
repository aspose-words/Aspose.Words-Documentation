---
title: 在Java中使用SmartArt冷渲染
second_title: Aspose.Words为Java
articleTitle: 使用SmartArt冷渲染
linktitle: 使用SmartArt冷渲染
type: docs
description: "Aspose.WordsforJava执行SmartArt冷渲染，这意味着如果预渲染的SmartArt绘图丢失或不正确，它会布局并渲染SmartArt对象。"
weight: 330
url: /zh/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt图形用于快速轻松地创建信息的可视化表示。 您只需从大量最适合您的情况的布局中进行选择。 这种易用性使得SmartArt图形在某些用途上非常受欢迎。

Microsoft Word生成并保存预渲染的绘图以及`SmartArt`对象。 在大多数情况下，预渲染的绘图通过Aspose.Words很好地呈现，并且不需要额外的操作。 但是，如果文档由其他应用程序保存，则预呈现的SmartArt绘图可能丢失或不正确。 在这种情况下，`SmartArt`对象本身应该使用Aspose.Words进行布局和呈现。 我们将此过程称为`SmartArt`冷渲染。

## 使用SmartArt冷渲染

Aspose.Words允许您使用预渲染绘图或执行冷渲染:

* 如果预渲染的绘图可用，Aspose.Words使用它来渲染`SmartArt`对象。
* 如果缺少预渲染绘图，Aspose.Words隐式执行冷渲染以渲染`SmartArt`对象。
* 如果存在预渲染的绘图但不正确，则需要通过调用[UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing)方法显式执行SmartArt冷渲染。

下面的代码示例演示如何更新文档中所有关系图的绘图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## 支持标准SmartArt布局

目前，仅支持有限数量的标准Microsoft WordSmartArt布局。 此外，部分支持这些布局，这意味着显着的节点和图表的形状被呈现，但Microsoft Word和Aspose.Words图表布局之间可能存在差异。

下表列出了完全和部分支持的布局:

| SmartArt布局组 | 完全支持的布局 | 部分支持的布局 |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>基本阻止列表</li><li>交替六边形</li><li>垂直项目符号列表</li><li>垂直框列表</li><li>变化宽度列表</li><li>水平项目符号列表</li><li>分组列表</li><li>垂直阻止列表</li><li>垂直雪佛龙列表</li><li>垂直箭头列表</li><li>梯形列表</li><li>表格一览表</li><li>金字塔名单</li><li>目标名单</li></ul> | <ul><li>排列列表</li><li>垂直支架列表</li><li>标签列表</li><li>堆叠列表</li><li>垂直重音列表</li><li>垂直圆列表</li></ul> |
| `Process` | <ul><li>基本流程</li><li>重音过程</li><li>连续块工艺</li><li>增加箭头过程</li><li>聚合文本</li><li>基本时间表</li><li>基本雪佛龙工艺</li><li>雪佛龙口音过程</li><li>封闭雪佛龙工艺</li><li>雪佛龙名单</li><li>垂直过程</li><li>交错工艺</li><li>进程列表</li><li>基本弯曲工艺</li><li>重复弯曲工艺</li><li>详细流程</li><li>向上箭头</li><li>下降过程</li><li>圆形弯曲工艺</li></ul> | <ul><li>加强程序</li><li>下台过程</li><li>交替流动</li><li>增加循环过程</li><li>Pie过程</li><li>互连块过程</li><li>过程箭头</li><li>圆圈重音时间线</li><li>循环过程</li><li>子步骤过程</li><li>分阶段流程</li><li>随机结果过程</li><li>圆箭头过程</li></ul> |
| `Cycle` |  | <ul><li>分段循环</li><li>六边形径向</li></ul> |
| `Hierarchy` |  | <ul><li>表层次结构</li><li>架构布局</li></ul> |
| `Relationship` | <ul><li>平衡表</li><li>漏斗,漏斗</li><li>齿轮</li><li>加减</li><li>箭头色带</li><li>平衡箭</li><li>反对箭头</li><li>嵌套目标</li><li>基本目标</li><li>基本Pie</li><li>基本维恩</li><li>堆叠维恩</li><li>互连环</li></ul> | <ul><li>圈关系</li><li>反对的想法</li><li>方程</li><li>垂直方程</li><li>线性维恩</li></ul> |
| `Matrix` | <ul><li>基本矩阵</li><li>标题为矩阵</li><li>网格矩阵</li><li>循环矩阵</li></ul> |  |
| `Pyramid` |  | <ul><li>分段金字塔</li></ul> |

## Aspose.Words和Microsoft中SmartArt渲染的比较

下表显示了与Microsoft Word输出相比，一些标准布局的Aspose.Words冷渲染的示例图片:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
