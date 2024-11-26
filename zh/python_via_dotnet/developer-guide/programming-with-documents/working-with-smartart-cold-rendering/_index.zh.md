---
title: 使用 SmartArt 冷渲染
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用 SmartArt 冷渲染
linktitle: 使用 SmartArt 冷渲染
type: docs
description: "Aspose.Words for Python via .NET 执行 SmartArt 冷渲染，这意味着如果预渲染的 SmartArt 绘图丢失或不正确，它会布置并渲染 SmartArt 对象。"
weight: 330
url: /zh/python-net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt 图形用于快速、轻松地创建信息的视觉表示。您只需从大量布局中选择最适合您的情况即可。这种易用性使得 SmartArt 图形在某些用途上非常受欢迎。

Microsoft Word 生成并保存预渲染绘图以及 `SmartArt` 对象。在大多数情况下，预渲染绘图可以通过 Aspose.Words 很好地渲染，无需执行其他操作。但是，如果文档是由其他应用程序保存的，则预渲染的 SmartArt 绘图可能会丢失或不正确。在这种情况下，`SmartArt` 对象本身应该使用 Aspose.Words 进行布局和呈现。我们将此过程称为 `SmartArt` 冷渲染。

## 使用SmartArt冷渲染

Aspose.Words 允许您使用预渲染绘图或执行冷渲染：

* 如果预渲染绘图可用，Aspose.Words 将使用它来渲染 `SmartArt` 对象。
* 如果缺少预渲染绘图，Aspose.Words 会隐式执行冷渲染来渲染 `SmartArt` 对象。
* 如果存在预渲染图但不正确，则需要通过调用 [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/) 方法显式执行 SmartArt 冷渲染。

以下代码示例展示了如何更新文档中所有图表的绘图：

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## 支持标准 SmartArt 布局

目前，仅支持有限数量的标准 Microsoft Word SmartArt 布局。此外，部分布局受部分支持，这意味着会渲染图表的重要节点和形状，但 Microsoft Word 和 Aspose.Words 图表布局之间可能存在差异。

下表列出了完全和部分支持的布局：

|  SmartArt 布局 Group |  完全支持的布局 |  部分支持的布局 |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>基本阻止列表</li><li>交替六边形</li><li>垂直项目符号列表</li><li>垂直框列表</li><li>可变宽度列表</li><li>水平项目符号列表</li><li>Group 列表</li><li>垂直块列表</li><li>垂直 V 形列表</li><li>垂直箭头列表</li><li>梯形列表</li><li>表格列表</li><li>金字塔列表</li><li>目标清单</li></ul> |  <ul><li>内衬清单</li><li>垂直括号列表</li><li>选项卡列表</li><li>堆叠列表</li><li>垂直口音列表</li><li>垂直圆列表</li></ul> |
|  `Process`  |  <ul><li>基本流程</li><li>口音工艺</li><li>连续块工艺</li><li>增加箭头过程</li><li>聚合文本</li><li>基本时间表</li><li>基本雪佛龙工艺</li><li>V 形口音工艺</li><li>封闭式雪佛龙工艺</li><li>雪佛龙列表</li><li>垂直工艺</li><li>交错过程</li><li>进程列表</li><li>基本弯曲工艺</li><li>重复弯曲过程</li><li>详细流程</li><li>向上箭头</li><li>下降过程</li><li>圆弯加工</li></ul> |  <ul><li>升级流程</li><li>降级过程</li><li>交替流</li><li>增圈过程</li><li>馅饼过程</li><li>互连块过程</li><li>流程箭头</li><li>圆圈重音时间轴</li><li>循环过程</li><li>子步骤过程</li><li>分阶段过程</li><li>随机结果过程</li><li>圆圈箭头过程</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>分段循环</li><li>六角径向</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>表层次结构</li><li>架构布局</li></ul> |
|  `Relationship`  |  <ul><li>平衡</li><li>漏斗</li><li>齿轮</li><li>加号和减号</li><li>箭头丝带</li><li>平衡箭</li><li>反对箭头</li><li>嵌套目标</li><li>基本目标</li><li>基本馅饼</li><li>基本维恩</li><li>堆叠维恩</li><li>互连环</li></ul> |  <ul><li>圈子关系</li><li>对立的想法</li><li>方程</li><li>垂直方程</li><li>线性维恩</li></ul> |
|  `Matrix`  |  <ul><li>基本矩阵</li><li>标题矩阵</li><li>网格矩阵</li><li>循环矩阵</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>分段金字塔</li></ul> |

## Aspose.Words 和 Microsoft 中 SmartArt 渲染的比较

下表显示了一些标准布局的 Aspose.Words 冷渲染与 Microsoft Word 输出相比的示例图片：

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="基本流程字"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="圆形_弯曲_过程_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="圆形弯曲工艺字"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="重复弯曲过程字"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="梯形_列表_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="梯形列表字"/> |
