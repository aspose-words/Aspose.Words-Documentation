---
title: Java에서 연결된TextBoxes로 작업
second_title: Aspose.WordsJava
articleTitle: 연결된TextBoxes작업
linktitle: 연결된TextBoxes작업
description: "Java에 대해Aspose.Words의 연결된 텍스트 상자 기능 소개."
type: docs
weight: 250
url: /ko/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words에서[TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/)클래스는 도형 안에 텍스트가 표시되는 방법을 지정하는 데 사용됩니다. 고객이 연결된**TextBox**에서 연결된[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)을 찾을 수 있도록 텍스트 상자의 부모 모양을 가져오기 위해 부모라는 공용 속성을 제공합니다.

## 링크 만들기

**TextBox**클래스는**TextBox**이 대상**Textbox**에 연결될 수 있는지 확인하기 위해[IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox)메소드를 제공합니다.

다음 코드 예제에서는`TextBox`이 대상 텍스트 상자에 연결될 수 있는지 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## TextBox시퀀스 확인

모양에서 텍스트를 표시하는 방법에는 여러 가지가 있습니다. [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox)은 시퀀스의 머리,중간 또는 꼬리가 될 수 있습니다.

다음 코드 예제에서는**TextBox**이 시퀀스의 머리,꼬리 또는 중간인지 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## 링크 끊기

[BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink)방법을 사용하면 다음**TextBox**에 대한 링크를 끊을 수 있습니다.

다음 코드 예제에서는**TextBox**에 대한 링크를 끊는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
