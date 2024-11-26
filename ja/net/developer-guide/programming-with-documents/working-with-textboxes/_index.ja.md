---
title: C# での TextBox の操作
second_title: .NET用Aspose.Words
articleTitle: テキストボックスの操作
linktitle: テキストボックスの操作
description: "Aspose.Words for .NET のリンクされたテキストボックス機能の紹介。"
type: docs
weight: 250
url: /ja/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words では、[TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) クラスを使用して、図形内にテキストを表示する方法を指定します。 **Parent** という名前のパブリック プロパティを公開してテキスト ボックスの親図形を取得し、顧客が関連付けられた **TextBox** からリンクされた [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) を見つけられるようにします。

## リンクの作成

**TextBox** クラスは、**TextBox** がターゲット **Textbox** にリンクできるかどうかを確認するための [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) メソッドを提供します。

次のコード例は、`TextBox` がターゲットのテキストボックスにリンクできるかどうかを確認する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## テキストボックスのシーケンスを確認する

図形内にテキストを表示するには、いくつかの方法があります。 [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) は、シーケンスの先頭、中間、または末尾のいずれかになります。

次のコード例は、**TextBox** がシーケンスの先頭、末尾、または中間であるかどうかを確認する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## リンクを解除する

[BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) メソッドを使用すると、次の **TextBox** へのリンクを切断できます。

次のコード例は、**TextBox** のリンクを解除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
