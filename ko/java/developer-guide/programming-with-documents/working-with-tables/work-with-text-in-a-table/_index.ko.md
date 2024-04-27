---
title: 테이블에 텍스트 작업
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블에 텍스트 작업
linktitle: 테이블에 텍스트 작업
description: "테이블에 텍스트를 대체 Java· 표 또는 세포에서 일반 텍스트 추출 Java·"
type: docs
weight: 60
url: /ko/java/extract-text-from-and-replace-text-in-a-table/
---

이전 기사에서 언급했듯이, 테이블은 일반적으로 이미지 또는 다른 테이블과 같은 다른 내용이 테이블 셀에 배치 될 수 있지만 일반 텍스트가 포함되어 있습니다.

테이블에 텍스트 또는 다른 내용을 추가하면 적절한 방법을 사용하여 수행됩니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 수업에 설명되어 있습니다. **"테이블을 선택하십시오"** 기사. 이 문서에서는 이미 기존 테이블에 텍스트를 사용하는 방법에 대해 이야기합니다.

## 테이블에 텍스트를 대체

다른 노드와 같은 테이블 Aspose.Words, 자주 묻는 질문 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) 이름 * 테이블 범위 객체를 사용하여 테이블에 텍스트를 교체 할 수 있습니다.

교체 할 때 특수 문자를 사용할 수있는 기능은 현재 지원되므로 기존 텍스트를 다 모수 텍스트로 대체 할 수 있습니다. 이 작업을 수행하려면 해당 특수 metacharacters를 사용해야합니다. [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) 방법.

{{% alert color="primary" %}}

일반적으로 텍스트 교체는 세포 수준 (세포당) 또는 단락 수준에서 수행해야합니다.

{{% /alert %}}

다음 코드 예제는 전체 테이블의 세포에서 텍스트의 문자열의 모든 인스턴스를 대체하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## 테이블에서 일반 텍스트 추출

사용 방법 **Range** 객체, 전체 테이블 범위에서 메소드를 호출하고 테이블을 일반 텍스트로 추출 할 수 있습니다. 이렇게하려면 [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) 호텔 위치

다음 코드 예제는 테이블의 텍스트 범위를 인쇄하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

동일한 기술은 개별 테이블 셀에서 콘텐츠를 추출하는 데 사용됩니다.

다음 코드 예제는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여줍니다:

{{% /alert %}}

다음 코드 예제는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 대안 표 텍스트 작업

Microsoft Word 테이블 있다 `table title` · `table description` 테이블에 포함 된 정보의 대체 문자 표현을 제공합니다.

내 계정 Aspose.Words, 테이블 제목과 설명을 추가 할 수 있습니다. [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) · [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) 이름 * 이 속성은 DOCX 문서에 따라 의미 ISO· IEC 29500. 이전 형식의 저장 ISO/IEC 29500, 이러한 속성은 무시됩니다.

다음 코드 예제는 테이블의 제목과 설명 속성을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}