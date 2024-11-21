---
title: Hyperlinks에서 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 하이퍼링크 추가 또는 수정
linktitle: 하이퍼링크 추가 또는 수정
description: "문서에 하이퍼링크 추가 방법 Java·"
type: docs
weight: 50
url: /ko/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

하이퍼링크 Microsoft Word 문서는 `HYPERLINK` 이름 * 내 계정 Aspose.Words, 하이퍼링크는 구현 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 수업.

## 하이퍼링크 삽입

사용 방법 [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) 문서에 하이퍼 링크 삽입 방법. 이 방법은 3개의 모수를 받아들입니다:

1. 명세 문서에 표시될 링크의 텍스트
2. 명세 링크 대상 (URL 또는 문서 내 책갈피의 이름)
3. 명세 Boolean 매개 변수 true 만약에 `URL` 문서 안에 책갈피의 이름은

더 보기 **InsertHyperlink** 메소드는 항상 URL의 시작과 끝에서 apostrophes를 추가합니다

{{% alert color="primary" %}}

하이퍼링크 디스플레이 텍스트에 대한 글꼴 형식을 지정해야합니다. `Font` 호텔 위치

{{% /alert %}}

다음 코드 예제는 하이퍼링크를 사용하여 문서에 삽입하는 방법을 보여줍니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 하이퍼링크 교체 또는 수정

하이퍼링크 Microsoft Word 문서는 필드입니다. 이전에 말했듯이 Word 문서의 필드는 필드 시작, 필드 코드, 필드 분리기, 필드 결과 및 필드 엔드를 포함하는 여러 노드로 구성된 복잡한 구조입니다. 필드는 배열 될 수 있으며 풍부한 콘텐츠와 문서의 여러 단락 또는 섹션을 포함합니다.

하이퍼링크를 대체하거나 수정하려면 문서의 하이퍼링크를 찾아서 텍스트, URL 또는 둘을 대체해야 합니다.

다음 코드 예제는 Word 문서의 모든 하이퍼 링크 찾기 및 변경 방법을 보여줍니다 `URL` 그리고 표시 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
