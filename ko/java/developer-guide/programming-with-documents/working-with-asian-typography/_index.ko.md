---
title: 아시아 타이포그래피Java
second_title: Aspose.WordsJava
articleTitle: 아시아 타이포그래피 작업
linktitle: 아시아 타이포그래피 작업
description: "Java을 사용하여 아시아 타이포그래피로 작업합니다. Java에서 아시아어와 라틴어 텍스트 사이의 공백을 조정합니다."
type: docs
weight: 240
url: /ko/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

아시아 타이포그래피는 아시아 언어로 작성된 문서의 텍스트 단락에 대한 옵션의 집합입니다.

Aspose.Words[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)클래스와 일부 속성을 사용하여 아시아 타이포그래피를 지원합니다.

## 자동으로 아시아어와 라틴어 텍스트 또는 숫자 사이의 공간을 조정

동아시아 텍스트와 라틴 텍스트를 모두 사용하여 서식 파일을 디자인하고 두 텍스트 유형 사이의 공백을 제어하여 양식 서식 파일의 모양을 개선하려는 경우 이 두 텍스트 유형 사이의 공백을 자동으로 조정하도록 양식 서식 파일을 구성할 수 있습니다. 이를 위해`ParagraphFormat`클래스의[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha)및[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit)속성을 사용할 수 있습니다.

다음 코드 예제에서는**AddSpaceBetweenFarEastAndAlpha**및**AddSpaceBetweenFarEastAndDigit**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## 줄 바꿈 옵션 설정

Microsoft Word의 단락 속성 대화 상자의 아시아 타이포그래피 탭에는 줄 바꿈 그룹이 있습니다. 이 그룹의 옵션은 다음을 사용하여 설정할 수 있습니다[FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) **ParagraphFormat**클래스의 속성.

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## 아시아 단락 간격 및 들여쓰기 변경

다음 코드 예제에서는 아시아 단락 간격 및 들여쓰기를 변경하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
