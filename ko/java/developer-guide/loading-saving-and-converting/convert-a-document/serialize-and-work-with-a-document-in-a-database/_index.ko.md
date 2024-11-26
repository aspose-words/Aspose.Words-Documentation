---
title: 데이터베이스의 문서 직렬화 및 작업
second_title: Aspose.WordsJava
articleTitle: 데이터베이스의 문서 직렬화 및 작업
linktitle: 데이터베이스의 문서 직렬화 및 작업
description: "데이터베이스에서 이 문서 작업을 위해 문서를 바이트 배열로 변환합니다. Java을 사용하여 데이터베이스에서 문서를 저장하고 검색할 수 있습니다."
type: docs
weight: 40
url: /ko/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

문서 작업을 수행할 때 수행해야 할 작업 중 하나는 데이터베이스에서**Document**개체를 저장하고 검색하는 것입니다. 예를 들어 모든 유형의 콘텐츠 관리 시스템을 구현하는 경우 이 작업이 필요합니다. 모든 이전 버전의 문서는 데이터베이스 시스템에 저장되어야 합니다. 데이터베이스에 문서를 저장하는 기능은 응용 프로그램이 웹 기반 서비스를 제공하는 경우에도 매우 유용합니다.

Aspose.Words데이터베이스에서 이 문서를 사용한 후속 작업을 위해 문서를 바이트 배열로 변환하는 기능을 제공합니다.

## 문서를 바이트 배열로 변환

문서를 데이터베이스에 저장하거나 웹을 통해 전송하기 위해 문서를 준비하려면 종종 바이트 배열을 얻기 위해 문서를 직렬화해야합니다.

Aspose.Words에서[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)개체를 직렬화하려면:

1. **Document**클래스의[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int)메서드 오버로드를 사용하여**MemoryStream**에 저장합니다.
1. 바이트 형태로 문서를 나타내는 바이트 배열을 반환하는**ToArray**메서드를 호출합니다.

위의 단계는 바이트를**Document**객체로 다시 로드하기 위해 되돌릴 수 있습니다.

{{% alert color="primary" %}}

선택한 저장 형식은**Document**개체를 저장하고 다시 로드할 때 가장 높은 충실도가 유지되도록 하는 데 중요합니다. 이러한 이유로 일련의OOXML파일 형식을 사용하는 것이 좋습니다.

{{% /alert %}}

아래 예제에서는**Document**개체를 직렬화하여 바이트 배열을 얻은 다음 바이트 배열을 직렬화하여**Document**개체를 다시 얻는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 데이터베이스에 문서 저장,읽기 및 삭제

이 섹션에서는 문서를 데이터베이스에 저장한 다음`Document`개체로 다시 로드하여 작업하는 방법을 보여 줍니다. 단순화를 위해 파일 이름은 데이터베이스에서 문서를 저장하고 가져오는 데 사용되는 키입니다. 데이터베이스에는 두 개의 열이 있습니다. 첫 번째 열"FileName"는 문자열로 저장되며 문서를 식별하는 데 사용됩니다. 두 번째 열"FileContent"은 바이트 형태로 문서 객체를 저장하는`BLOB`객체로 저장됩니다.

다음 코드 예제에서는 데이터베이스에 대한 연결을 설정하고 명령을 실행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

이 예제에서는MySQL데이터베이스를 사용하여Aspose.Words문서를 저장합니다.

{{% /alert %}}

다음 코드 예제에서는 문서를 데이터베이스에 저장한 다음 동일한 문서를 다시 읽고 마지막으로 해당 문서가 포함된 레코드를 데이터베이스에서 삭제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### 데이터베이스에 문서 저장

데이터베이스에 문서를 저장하려면 이 문서의 시작 부분에 설명된 대로 이 문서를 바이트 배열로 변환합니다. 그런 다음 이 바이트 배열을 데이터베이스 필드에 저장합니다.

다음 코드 예제에서는 지정된 데이터베이스에 문서를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

모든 작업을 수행하는SQL식인commandString을 지정합니다:

- 문서를 데이터베이스에 저장하려면"INSERTINTO"명령이 사용되며 두 개의 레코드 필드(FileName및FileContent)의 값과 함께 테이블이 지정됩니다. 추가 매개 변수를 피하기 위해 파일 이름은**Document**개체 자체에서 가져옵니다. `FileContent`필드 값은 저장된 문서의 이진 표현을 포함하는 메모리 스트림에서 바이트가 할당됩니다.
- 나머지 코드 줄은Aspose.Words문서를 데이터베이스에 저장하는 명령을 실행합니다.

### 데이터베이스에서 문서 검색

데이터베이스에서 문서를 검색하려면 문서 데이터를 바이트 배열로 포함하는 레코드를 선택합니다. 그런 다음 레코드의 바이트 배열을**MemoryStream**로 로드하고**MemoryStream**에서 문서를 로드할**Document**개체를 만듭니다.

다음 코드 예제에서는 파일 이름을 키로 사용하여 이 문서를 가져오는 지정된 데이터베이스에서 문서를 검색하고 반환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL명령"SELECT*FROM"은 파일 이름을 기반으로 적절한 레코드를 가져오는 데 사용됩니다.

{{% /alert %}}

### 데이터베이스에서 문서 삭제

데이터베이스에서 문서를 삭제하려면**Document**개체에 대한 조작 없이 적절한SQL명령을 사용합니다.

다음 코드 예제에서는 파일 이름을 사용하여 레코드를 가져오는 데이터베이스에서 문서를 삭제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
