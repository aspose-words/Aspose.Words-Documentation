---
title: 「使用SmartArt Cold Rendering在C#中工作」
second_title: Aspose.Words for .NET
articleTitle: 「使用 SmartArt Cold Rendering」
linktitle: 「使用 SmartArt Cold Rendering」
description: "C# 中使用 SmartArt 圖形之介紹。"
type: docs
description: "Aspose.Words for .NET 在 SmartArt 上执行智能艺术冷呈现，即在预呈现的智能艺术绘图丢失或不正确时使用 C# 布局和呈现 SmartArt 对象。"
weight: 330
url: /zh-hant/net/working-with-smartart-cold-rendering/
---

SmartArt 圖形用於快速、輕鬆地建立資訊的視覺化。 「您可以從許多適合您状況的布局中進行選擇。」 「這麼容易使用，使得SmartArt圖像在某些目的上很受歡迎。」

「Microsoft Word會產生並儲存預先渲染的繪圖，與`SmartArt`物件同時存在。」 在大多數情況下，預先渲染的繪圖很好地由 Aspose.Words 渲染，不需要其他動作。 「不過，如果用其他應用程式儲存文件，預先渲染的SmartArt圖形就可能不見或不正確。」 「在這個情況下，`SmartArt`物件本身應該透過 Aspose.Words 進行排版與渲染。」 我們稱此過程為「`SmartArt` 寒冷渲染」。

## 使用SmartArt冷渲染

「Aspose.Words 允許您使用預渲繪圖或執行冷渲繪製：」

* 如果可預先渲染的圖形可用，則Aspose.Words使用它來渲染`SmartArt`物件。
* 如果預先渲染的圖形缺失，Aspose.Words 隱含地執行冷渲染來渲染 `SmartArt` 圖形。
「*如果預先渲染的圖形存在但錯誤，必須透過呼叫[UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/)方法來明確地進行SmartArt冷渲染。」

接下來的程式碼範例說明如何更新文件中所有圖形的繪圖：

**".NET"**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## 標準SmartArt布局支援

「目前只有有限數量的標準 Microsoft Word SmartArt 布局被支援。」 「此外，這些布局有些是部分支援的，也就是說，圖形的重要節點和形狀是渲染的，但 Microsoft Word 和 Aspose.Words 圖形布局的不同之處可能存在。」

以下表格列出所有支援的布局及部分支援的布局：

| 智慧藝術排版 Group | 完全支援的布局 | 部分支援的布局 |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>基本塊清單</li> <li>交替六邊形</li> <li>垂直標記清單</li> <li>垂直方塊清單</li> <li>變化寬度清單</li> <li>水平標記清單</li> <li>分组清单</li> <li>垂直块清单</li> <li>垂直 Chevron 清单</li> <li>垂直箭头清单</li> <li>梯形清单</li> <li>表格清单</li> <li>金字塔清单</li> <li>目标清单"</li></ul> | <ul><li>有序列表</li> <li>垂直括號列表</li> <li>標籤列表</li> <li>堆疊列表</li> <li>垂直強調列表</li> <li>垂直圓圈列表</li></ul> |
| `Process` | <ul><li>基本過程</li> <li>強調過程</li> <li>連續塊過程</li> <li>增量箭號過程</li> <li>收斂文字</li> <li>基本時間軸</li> <li>基本契點過程</li> <li>契點強調過程</li> <li>閉合契點過程</li> <li>契點清單</li> <li>垂直過程</li> <li>錯序過程</li> <li>過程清單</li> <li>基本彎曲過程</li> <li>重複彎曲過程</li> <li>詳細過程</li> <li>向上箭號</li> <li>向下過程</li> <li>圓角彎曲過程</li></ul> | <ul><li>步驟上升過程</li> <li>步驟下降過程</li> <li>交互式流</li> <li>漸進式圓環過程</li> <li>披薩過程</li> <li>相互連接塊體過程</li> <li>流程箭頭</li> <li>圓圈重點時間軸</li> <li>圓圈過程</li> <li>子步驟過程</li> <li>分階段過程</li> <li>隨機結果過程</li> <li>圓圈箭頭過程</li></ul> |
| `Cycle` |–| <ul><li>分段循環</li> <li>六角形線條</li></ul> |
| `Hierarchy` |–| <ul><li>表格階層</li><li>架構布局</li></ul> |
| `Relationship` | <ul><li>平衡</li><li>漏斗</li><li>齿轮</li><li>加減</li><li>箭形卷轴</li><li>平衡箭頭</li><li>對立箭頭</li><li>嵌套目標</li><li>基本目標</li><li>基本比薩</li><li>基本文森</li><li>堆疊式文森</li><li>相互環形</li></ul> | <ul><li>圓圈關係</li> <li>對立想法</li> <li>方程式</li> <li>垂直方程式</li> <li>線式 Venn</li></ul> |
| `Matrix` | <ul><li>基本矩陣</li><li>標題矩陣</li><li>網格矩陣</li><li>循環矩陣</li></ul> |–|
| `Pyramid` |–| <ul><li>分段金字塔</li></ul> |

## 《SmartArt 渲染的比較：Aspose.Words 和 Microsoft》

「下面的表格示範了 Aspose.Words 冷渲染一些標準 bố置的範例圖片，與 Microsoft Word 的輸出比較：」

|| **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
