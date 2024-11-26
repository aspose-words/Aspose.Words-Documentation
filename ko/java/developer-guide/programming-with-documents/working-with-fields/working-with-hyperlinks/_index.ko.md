---
title: Java에서 하이퍼링크 작업
second_title: Aspose.WordsJava
articleTitle: 하이퍼링크 추가 또는 수정
linktitle: 하이퍼링크 추가 또는 수정
description: "Java을 사용하여 문서에 하이퍼링크를 추가하는 방법."
type: docs
weight: 50
url: /ko/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word문서의 하이퍼링크는`HYPERLINK`필드입니다. Aspose.Words에서 하이퍼링크는[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)클래스를 통해 구현됩니다.

## 하이퍼링크 삽입

[InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean)메서드를 사용하여 문서에 하이퍼링크를 삽입합니다. 이 메서드는 세 가지 매개 변수를 허용합니다:

1. 문서에 표시할 링크의 텍스트
2. 링크 대상(URL또는 문서 내의 책갈피 이름)
3. `URL`이 문서 내의 책갈피 이름인 경우 참이어야 하는 부울 매개 변수

**InsertHyperlink**메서드는 항상URL의 시작과 끝에 아포스트로피를 추가합니다.

{{% alert color="primary" %}}

`Font`속성을 사용하여 하이퍼링크 표시 텍스트의 글꼴 서식을 명시적으로 지정해야 합니다.

{{% /alert %}}

다음 코드 예제에서는[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여 하이퍼링크를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 하이퍼링크 바꾸기 또는 수정

Microsoft Word문서의 하이퍼링크는 필드입니다. 앞서 말했듯이 워드 문서의 필드는 필드 시작,필드 코드,필드 구분 기호,필드 결과 및 필드 끝을 포함하는 여러 노드로 구성된 복잡한 구조입니다. 필드는 중첩되고 풍부한 콘텐츠를 포함하며 문서의 여러 단락 또는 섹션에 걸쳐 있을 수 있습니다.

하이퍼링크를 바꾸거나 수정하려면 문서에서 하이퍼링크를 찾아 텍스트,URLs또는 둘 다를 바꾸어야 합니다.

다음 코드 예제에서는 워드 문서에서 모든 하이퍼링크를 찾아`URL`및 표시 이름을 변경하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
