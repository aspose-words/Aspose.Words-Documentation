---
title: C++でのTextBoxesの操作
second_title: C++の場合Aspose.Words
articleTitle: TextBoxesでの作業
linktitle: TextBoxesでの作業
description: "のリンクされたテキストボックス機能の紹介 C++の場合Aspose.Words."
type: docs
weight: 250
url: /ja/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsでは、[TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/)クラスを使用して、図形内のテキストの表示方法を指定します。 これは、顧客が関連付けられた**TextBox**からリンクされた[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)を見つけることができるように、テキストボックスの親図形を取得するために**Parent**という名前の

## リンクを作成する

**TextBox**クラスは**TextBox**がターゲット**Textbox**にリンクできるかどうかをチェックするために[IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/)メソッドを提供します。

次のコード例は、`TextBox`をターゲットTextboxにリンクできるかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## チェックTextBoxシーケンス

図形にテキストを表示するには、いくつかの方法があります。 [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/)は、シーケンスの先頭、中央、または末尾にすることができます。

次のコード例は、**TextBox**がシーケンスの頭、尾、または中央であるかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## リンクを解除する

[BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/)メソッドを使用すると、次の**TextBox**へのリンクを解除できます。

次のコード例は、**TextBox**のリンクを解除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
