---
title: Python での TextBox の操作
second_title: Python via .NET用Aspose.Words
articleTitle: テキストボックスの操作
linktitle: テキストボックスの操作
description: "Python を使用してドキュメント内のテキストボックスを操作します。"
type: docs
weight: 250
url: /ja/python-net/working-with-textboxes/
---

Aspose.Words では、[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) クラスを使用して、図形内にテキストを表示する方法を指定します。 [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) という名前のパブリック プロパティを提供してテキスト ボックスの親図形を取得し、顧客がリンクされた [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) からリンクされた [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) を見つけられるようにします。

## リンクの作成

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) クラスは、対象の Textbox に [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) をリンクできるかどうかを確認するための [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) メソッドを提供します。

次のコード例は、`TextBox` がターゲットのテキストボックスにリンクできるかどうかを確認する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## テキストボックスのシーケンスを確認する

図形内にテキストを表示するには、いくつかの方法があります。 [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) は、シーケンスの先頭、中間、または末尾にすることができます。

次のコード例は、**TextBox** がシーケンスの先頭、末尾、または中間であるかどうかを確認する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## リンクを解除する

[text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) メソッドを使用すると、次の **TextBox** へのリンクを切断できます。

次のコード例は、**TextBox** のリンクを解除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
