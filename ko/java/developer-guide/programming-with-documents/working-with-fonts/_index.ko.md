---
title: Java에서 글꼴 작업
second_title: Aspose.WordsJava
articleTitle: 글꼴 작업
linktitle: 글꼴 작업
description: "Java을 사용하여 세부 사항의 글꼴 서식."
type: docs
weight: 230
url: /ko/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

글꼴은 특정 크기,색상 및 디자인의 문자 집합입니다. Aspose.Words는[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)클래스를 포함하여 다양한 글꼴 관련 클래스를 사용하여 글꼴로 작업 할 수 있습니다.

## 글꼴 서식

현재 글꼴 서식은[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)속성에 의해 반환되는**Font**개체로 표시됩니다. **Font**클래스에는Microsoft Word에서 가능한 다양한 글꼴 속성이 포함되어 있습니다.

다음 코드 예제에서는 글꼴 서식을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

채우기 속성은 이제 글꼴이 텍스트의 채우기 서식을 설정하는 데 사용할 수 있습니다. 예를 들어 텍스트 채우기의 전경색 또는 투명도를 변경할 수 있습니다.

## 글꼴 줄 간격 얻기

글꼴의 줄 간격은 두 개의 연속적인 텍스트 줄의 기준선 사이의 수직 거리입니다. 따라서 줄 간격에는 문자 자체의 높이와 함께 줄 사이의 빈 공간이 포함됩니다.

[LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing)속성은 아래 예제와 같이 이 값을 얻기 위해**Font**클래스에 도입되었습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## 글꼴EmphasisMark

**Font**클래스는[EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark)속성을 제공하여 서식에 적용할EmphasisMark열거형 값을 가져오거나 설정합니다.

다음 코드 예제에서는**EphasisMark**속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
