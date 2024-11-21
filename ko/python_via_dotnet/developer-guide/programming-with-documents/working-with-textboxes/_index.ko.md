---
title: Python에서 텍스트 상자 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: TextBox 작업
linktitle: TextBox 작업
description: "Python를 사용하여 문서의 텍스트 상자로 작업합니다."
type: docs
weight: 250
url: /ko/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words에서 [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 클래스는 텍스트가 도형 내부에 표시되는 방식을 지정하는 데 사용됩니다. 고객이 연결된 [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)에서 연결된 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)를 찾을 수 있도록 텍스트 상자의 상위 모양을 가져오는 [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/)이라는 공용 속성을 제공합니다.

## 링크 만들기

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) 클래스는 [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)가 대상 텍스트 상자에 연결될 수 있는지 확인하기 위해 [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) 메서드를 제공합니다.

다음 코드 예제에서는 `TextBox`를 대상 텍스트 상자에 연결할 수 있는지 확인하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## TextBox 시퀀스 확인

도형에 텍스트를 표시하는 방법에는 여러 가지가 있습니다. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/)는 시퀀스의 헤드, 중간 또는 테일이 될 수 있습니다.

다음 코드 예제는 **TextBox**가 시퀀스의 머리, 꼬리 또는 중간인지 확인하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## 링크 끊기

[text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) 방법을 사용하면 다음 **TextBox**에 대한 링크를 끊을 수 있습니다.

다음 코드 예제는 **TextBox**에 대한 링크를 끊는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
