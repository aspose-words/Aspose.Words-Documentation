---
title: Java内のリンクされたTextBoxesを使用する
second_title: Aspose.WordsのためのJava
articleTitle: リンクされたTextBoxesでの作業
linktitle: リンクされたTextBoxesでの作業
description: "Aspose.WordsのJavaのリンクされたテキストボックス機能の紹介。"
type: docs
weight: 250
url: /ja/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsでは、[TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/)クラスを使用して、図形内のテキストの表示方法を指定します。 これはParentという名前のパブリックプロパティを提供し、顧客がlinked**TextBox**からlinked[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)を見つけることができるように、テキストボックスの親図形を取得します。

## リンクを作成する

**TextBox**クラスは、**TextBox**をターゲット**Textbox**にリンクできるかどうかを確認するために[IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox)メソッドを提供します。

次のコード例は、`TextBox`をターゲットTextboxにリンクできるかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## チェックTextBoxシーケンス

図形にテキストを表示するには、いくつかの方法があります。 [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox)は、シーケンスの先頭、中央、または末尾にすることができます。

次のコード例は、**TextBox**がシーケンスの頭、尾、または中央であるかどうかを確認する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## リンクを解除する

[BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink)メソッドを使用すると、次の**TextBox**へのリンクを解除できます。

次のコード例は、**TextBox**のリンクを解除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
