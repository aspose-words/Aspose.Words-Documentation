---
title: Java에서 문서 만들기 또는 로드
second_title: Aspose.WordsJava
articleTitle: 문서 만들기 또는 로드
linktitle: 문서 만들기 또는 로드
type: docs
weight: 10
url: /ko/java/create-or-load-a-document/
description: "Aspose.Words을 사용하면Java을 사용하여 빈 문서를 만들거나 파일 또는 스트림에서 문서를 로드할 수 있습니다."
timestamp: 2024-01-27-14-07-04
---

Aspose.Words로 수행하려는 거의 모든 작업에는 문서를로드하는 작업이 포함됩니다. `Document`클래스는 메모리에 로드된 문서를 나타냅니다. 이 문서에는 빈 문서를 만들거나 파일 또는 스트림에서 로드할 수 있는 오버로드된 생성자가 여러 개 있습니다. 문서는Aspose.Words에서 지원하는 모든 로드 형식으로 로드할 수 있습니다. 지원되는 모든 로드 형식 목록은[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)열거형을 참조하십시오.

## 새 문서 만들기 {#create-a-new-document}

매개 변수 없이[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)생성자를 호출하여 새 빈 문서를 만듭니다. 프로그래밍 방식으로 문서를 생성하려는 경우 가장 간단한 방법은[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder)클래스를 사용하여 문서 내용을 추가하는 것입니다.

다음 코드 예제에서는 문서 작성기를 사용하여 문서를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

기본값 참고:

- 빈 문서에는 기본 매개 변수가있는 섹션 하나,빈 단락 하나,일부 문서 스타일이 포함됩니다. 실제로 이 문서는Microsoft Word에서"새 문서"를 만든 결과와 동일합니다.
- 문서 용지 크기는[PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)입니다.**Letter**.

{{% /alert %}}

## 문서 로드

[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)형식으로 기존 문서를 로드하려면 파일 이름 또는 스트림을 문서 생성자 중 하나에 전달합니다. 로드된 문서의 형식은 확장자에 의해 자동으로 결정됩니다.

### 파일 {#load-from-a-file}에서 로드

파일 이름을 문자열로 문서 생성자에 전달하여 파일에서 기존 문서를 엽니다.

다음 코드 예제에서는 파일에서 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### 스트림에서 로드 {#load-from-a-stream}

스트림에서 문서를 열려면 문서를 포함하는 스트림 개체를 문서 생성자에 전달하기만 하면 됩니다.

다음 코드 예제에서는 스트림에서 문서를 여는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
