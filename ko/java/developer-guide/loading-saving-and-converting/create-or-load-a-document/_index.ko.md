---
title: 문서 작성 또는로드 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 작성 또는로드
linktitle: 문서 작성 또는로드
type: docs
weight: 10
url: /ko/java/create-or-load-a-document/
description: "Aspose.Words 빈 문서를 만들거나 파일 또는 스트림에서로드 할 수 있도록 Java·"
timestamp: 2024-01-27-14-07-04
---

당신이 수행 할 작업 거의 Aspose.Words 문서 로딩 더 보기 `Document` class는 메모리에 적재된 문서입니다. 문서에는 공백 문서를 만들거나 파일이나 스트림에서 로드할 수 있도록 여러 개의 과부하된 생성자가 있습니다. 문서는 지원되는 어떤 짐 체재든지에서 적재될 수 있습니다 Aspose.Words· 지원되는 모든 부하 형식의 목록을 위해, [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 관련 기사

## 새 문서 만들기 {#create-a-new-document}

우리는 전화합니다 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 매개 변수없이 새로운 빈 문서를 만들 수 있습니다. 문서 프로그램을 생성하려는 경우, 가장 간단한 방법은 사용 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) 문서 내용을 추가하는 클래스.

다음 코드 예제는 문서 빌더를 사용하여 문서를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

기본 값 참고:

- 빈 문서는 기본 매개 변수, 한 빈 단락, 일부 문서 스타일과 하나의 섹션을 포함합니다. 실제로이 문서는 "새로운 문서"를 만드는 결과와 동일합니다. Microsoft Word·
- - - 문서 용지 크기는 [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)·**Letter**·

{{% /alert %}}

## 비밀번호

어떤 문서에 기존 문서를 로드하려면 [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 형식, 파일 이름 또는 스트림을 문서 생성자 중 하나로 전달합니다. 로드 된 문서의 형식은 자동으로 확장에 의해 결정됩니다.

### 파일에서 로드 {#load-from-a-file}

파일명에 문자열을 Document constructor로 전달하여 기존 문서를 파일로 엽니다.

다음 코드 예제는 파일에서 문서를 열 수있는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

### Stream에서 로드 {#load-from-a-stream}

스트림에서 문서를 열려면 문서 생성기로 문서를 포함하는 스트림 객체를 전달합니다.

다음 코드 예제는 스트림에서 문서를 열 수있는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

{{% /alert %}}
