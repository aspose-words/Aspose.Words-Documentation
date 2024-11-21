---
title: 목록에 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 목록으로 작업
linktitle: 목록으로 작업
description: "형식화 기능에 대한 소개 Aspose.Words 제품정보 Java·"
type: docs
weight: 200
url: /ko/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

로그인 Microsoft Word 문서는 목록 서식 속성의 집합입니다. 목록은 문서에서 형식, 배열 및 텍스트를 강조 할 수 있습니다. 목록은 문서에 데이터를 구성하는 훌륭한 방법이며, 리더가 키 포인트를 이해하는 데 쉽게 만듭니다.

각 목록은 수 작풍 시작 가치, indent, 탭 위치 및 다른 사람과 같은 9개 수준 그리고 체재 재산까지 할 수 있습니다 각 수준을 위해 따로따로 정의됩니다.

이 문서는 programmatically 작업과 목록을 사용하여 Aspose.Words·

## List Formatting을 적용하여 목록 만들기

Aspose.Words 목록 형식을 적용하여 목록을 쉽게 작성할 수 있습니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 제품정보 [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) 반환된 속성 **ListFormat** 이름 * 이 객체는 목록을 시작하고 indent를 늘리기 위해 여러 가지 방법이 있습니다. 두 가지 일반적인 유형의 목록이 있습니다. Microsoft Word: 총알 및 번호:

- 게시판 목록 시작, 전화 [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- 번호 목록 시작, 통화 [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

총알이나 번호 및 형식은 현재 단락에 추가되며, 모든 단락은 사용 **DocumentBuilder** 까지 [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 본문내용 바로가기 주메뉴 바로가기

Word 문서에서 목록은 최대 9 레벨로 구성됩니다. 각 레벨의 형식을 지정하면 총알이나 숫자가 사용되는 것을 지정합니다. 탄알과 텍스트 등의 공백을 왼쪽으로 입력합니다. 다음 방법은 목록 레벨을 변경하고 새로운 수준의 포맷 속성을 적용:

- - - 현재 단락의 목록 수준을 1 수준으로 늘리려면 전화 [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- - - 현재 단락의 목록 수준을 1 수준으로 줄이려면 전화 [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

메서드는 목록 레벨을 변경하고 새 레벨의 형식 속성을 적용합니다.

{{% alert color="primary" %}}

또한 사용할 수 있습니다 [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) 해당 이용 후기에 달린 코멘트가 없습니다. 목록 수준은 0에서 8. 숫자입니다.

{{% /alert %}}

다음 코드 예제는 멀티 레벨 목록을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## List Level에 대한 형식 지정

List-level 개체는 목록이 생성될 때 자동으로 생성됩니다. 속성 및 방법 사용 [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) 목록의 개별 수준을 제어하는 클래스.

## 각 단면도를 위한 Restart 명부

각 섹션의 목록을 다시 시작할 수 있습니다. [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) 호텔 위치 이 옵션은 RTF, DOC 및 DOCX 문서 형식으로만 지원됩니다. 이 옵션은 OoxmlCompliance가 더 높으면 DOCX로 작성됩니다. Ecma376.

다음 코드 예제는 목록을 만들고 각 섹션을 다시 시작합니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

