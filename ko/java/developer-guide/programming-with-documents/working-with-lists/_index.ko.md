---
title: Java의 목록 작업
second_title: Aspose.WordsJava
articleTitle: 목록 작업
linktitle: 목록 작업
description: "Java에 대한Aspose.Words의 번호 지정 기능 소개."
type: docs
weight: 200
url: /ko/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word문서의 목록은 목록 서식 속성 집합입니다. 문서에서 목록을 사용하여 텍스트의 서식을 지정,정렬 및 강조 할 수 있습니다. 목록은 문서에서 데이터를 구성하는 좋은 방법이며 독자가 핵심 사항을 더 쉽게 이해할 수 있도록 합니다.

각 목록은 최대 9 개의 레벨을 가질 수 있으며 숫자 스타일,시작 값,들여 쓰기,탭 위치 등과 같은 서식 속성은 각 레벨에 대해 별도로 정의됩니다.

이 문서에서는Aspose.Words을 사용하여 목록을 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다.

## 목록 서식을 적용하여 목록 만들기

Aspose.Words목록 서식을 적용하여 목록을 쉽게 만들 수 있습니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)는**ListFormat**개체를 반환하는[ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat)속성을 제공합니다. 이 개체에는 목록을 시작 및 종료하고 들여 쓰기를 늘리거나 줄이는 여러 가지 방법이 있습니다. Microsoft Word에는 두 가지 일반적인 유형의 목록이 있습니다.글머리 기호와 번호가 있습니다.:

- 글머리 기호 목록을 시작하려면[ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)을 호출합니다
- 번호 매기기 목록을 시작하려면[ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)을 호출합니다

글머리 기호 또는 숫자 및 서식은 글머리 기호 목록 서식을 중지하기 위해[RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)이 호출될 때까지 현재 단락 및**DocumentBuilder**을 사용하여 생성된 모든 추가 단락에 추가됩니다.

워드 문서에서 목록은 최대 9 개의 레벨로 구성될 수 있습니다. 각 레벨에 대한 목록 서식은 사용되는 글 머리 기호 또는 숫자,왼쪽 들여 쓰기,글 머리 기호와 텍스트 사이의 공간 등을 지정합니다. 다음 방법은 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다:

- 현재 단락의 목록 수준을 한 수준 높이려면[ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)을 호출합니다
- 현재 단락의 목록 수준을 한 수준 줄이려면[ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)을 호출합니다

이 메서드는 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다.

{{% alert color="primary" %}}

[ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber)속성을 사용하여 단락의 목록 수준을 가져오거나 설정할 수도 있습니다. 목록 레벨은 0 에서 8 까지 번호가 붙어 있습니다.

{{% /alert %}}

다음 코드 예제에서는 다단계 목록을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## 목록 수준에 대한 서식 지정

목록 수준 개체는 목록을 만들 때 자동으로 만들어집니다. [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/)클래스의 속성과 메서드를 사용하여 목록의 개별 수준의 서식을 제어합니다.

## 각 섹션에 대한 목록을 다시 시작

[IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection)속성을 사용하여 각 섹션에 대한 목록을 다시 시작할 수 있습니다. 이 옵션은RTF,DOC및DOCX문서 형식에서만 지원됩니다. 이 옵션은OoxmlCompliance보다 높은 경우에만DOCX에 기록됩니다.

다음 코드 예제에서는 목록을 만들고 각 섹션에 대해 목록을 다시 시작하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

