---
title: C#에서 텍스트 상자 작업
second_title: .NET용 Aspose.Words
articleTitle: TextBox 작업
linktitle: TextBox 작업
description: ".NET용 Aspose.Words의 연결된 텍스트 상자 기능을 소개합니다."
type: docs
weight: 250
url: /ko/net/working-with-textboxes/
---

Aspose.Words에서 [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) 클래스는 도형 내부에 텍스트가 표시되는 방식을 지정하는 데 사용됩니다. 고객이 연결된 **TextBox**에서 연결된 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)를 찾을 수 있도록 텍스트 상자의 상위 모양을 가져오기 위해 **Parent**이라는 공용 속성을 노출합니다.

## 링크 만들기

**TextBox** 클래스는 **TextBox**가 대상 **Textbox**에 연결될 수 있는지 확인하기 위해 [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) 메서드를 제공합니다.

다음 코드 예제에서는 `TextBox`를 대상 텍스트 상자에 연결할 수 있는지 확인하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## TextBox 시퀀스 확인

도형에 텍스트를 표시하는 방법에는 여러 가지가 있습니다. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/)는 시퀀스의 헤드, 중간 또는 테일이 될 수 있습니다.

다음 코드 예제는 **TextBox**가 시퀀스의 머리, 꼬리 또는 중간인지 확인하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## 링크 끊기

[BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) 방법을 사용하면 다음 **TextBox**에 대한 링크를 끊을 수 있습니다.

다음 코드 예제는 **TextBox**에 대한 링크를 끊는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
