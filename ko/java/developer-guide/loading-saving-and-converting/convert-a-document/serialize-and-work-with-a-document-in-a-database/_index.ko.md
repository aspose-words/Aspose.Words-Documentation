---
title: 데이터베이스의 문서와 직렬화 및 작업
second_title: Aspose.Words 제품정보 Java
articleTitle: 데이터베이스의 문서와 직렬화 및 작업
linktitle: 데이터베이스의 문서와 직렬화 및 작업
description: "문서를 데이터베이스에서 이 문서와 함께 byte 배열로 변환합니다. 문서를 저장하고 검색할 수 있습니다. Java·"
type: docs
weight: 40
url: /ko/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

문서가 저장하고 검색 할 때 작업을 수행 할 필요가있는 작업 중 하나 **Document** 객체와 데이터베이스에서. 예를 들어, 콘텐츠 관리 시스템의 모든 유형을 구현한 경우 필요합니다. 문서의 모든 이전 버전은 데이터베이스 시스템에 저장해야합니다. 데이터베이스의 문서를 저장하는 기능은 웹 기반 서비스를 제공 할 때 매우 유용합니다.

Aspose.Words 문서를 데이터베이스에 있는 이 문서와 함께 후속 작업을 위한 바이트 배열로 변환하는 기능을 제공합니다.

## Byte Array로 문서 변환

데이터베이스에 문서를 저장하거나 웹에서 전송을위한 문서를 준비하기 위해, 그것은 종종 byte 배열을 얻기 위해 문서를 직렬화해야합니다.

일련하기 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 로그인 Aspose.Words::

1. 명세 저장하기 **MemoryStream** 사용 방법 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) 방법 과부하의 **Document** 수업.
1. 명세 자주 묻는 질문 **ToArray** byte 형태로 문서를 나타내는 바이트의 배열을 반환하는 방법.

위의 단계는 바이트를 다시로드 할 수 있습니다. **Document** 이름 *

{{% alert color="primary" %}}

선택된 저장 체재는 가장 높은 fidelity를 지키기 위하여 중요합니다 저장하고 다시 적재할 때 유지됩니다 **Document** 이름 * 이 이유에 대해 OOXML 파일 형식의 시리즈를 사용하는 것이 좋습니다.

{{% /alert %}}

아래 예제는 serialize하는 방법을 보여줍니다. **Document** byte 배열을 얻기 위한 객체, 그리고 byte 배열을 unserialize하는 방법 **Document** 객체 다시:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

{{% /alert %}}

## 저장, 읽기 및 데이터베이스에 문서 삭제

이 섹션은 데이터베이스에서 문서를 저장하는 방법을 보여줍니다. 그런 다음 다시로드하십시오. `Document` 작업에 대한 객체. simplicity의 경우, 파일 이름은 데이터베이스에서 저장 및 fetch 문서를 사용하는 키입니다. 데이터베이스에는 두 개의 열이 있습니다. 첫번째 열 "FileName"는 문자열로 저장되며 문서를 식별하는 데 사용됩니다. 두번째 열 "FileContent"는 저장됩니다 `BLOB` byte 형태로 문서 객체를 저장하는 객체.

다음 코드 예제는 데이터베이스에 연결을 설정하고 명령을 실행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

이 예제에서는 MySQL 데이터베이스를 사용하여 저장합니다. Aspose.Words 문서.

{{% /alert %}}

다음 코드 예제는 데이터베이스에 문서를 저장하는 방법을 보여줍니다. 그런 문서를 다시 읽고, 마지막으로 데이터베이스에서 문서를 포함하는 레코드를 삭제:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### 문서 저장

데이터베이스의 문서를 저장하려면이 문서의 시작 부분에 설명 된 바이트의 배열에 이 문서를 변환합니다. 그런 다음이 바이트 배열을 데이터베이스 필드에 저장하십시오.

다음 코드 예제는 지정된 데이터베이스에 문서를 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

모든 작업을 수행하는 SQL 표현인 commandString을 지정합니다

- - - 데이터베이스에 문서를 저장하려면 "INSERT INTO" 명령은 사용되며 두 개의 레코드 필드의 값과 함께 지정된 테이블 - FileName 및 FileContent. 추가 매개 변수를 방지하려면, 파일 이름은 **Document** 객체 자체. 더 보기 `FileContent` 필드 값은 저장 된 문서의 바이너리 표현을 포함하는 메모리 스트림에서 할당 된 바이트입니다.
- - - 나머지 코드의 줄은 명령을 실행합니다. Aspose.Words 데이터베이스에 문서.

### 데이터베이스에서 문서 검색

데이터베이스에서 문서를 검색하려면 문서 데이터를 바이트 배열으로 포함하는 레코드를 선택하십시오. 그런 다음 레코드에서 바이트 배열을로드 **MemoryStream** 그리고 창조 **Document** 문서에로드하는 객체 **MemoryStream**·

다음 코드 예제에서는 지정된 데이터베이스에서 문서를 검색하고 반환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL 명령 "SELECT * From"는 파일 이름에 근거한 적절한 레코드를 읽는 데 사용됩니다.

{{% /alert %}}

### 데이터베이스에서 문서 삭제

데이터베이스에서 문서를 삭제하려면 조작없이 적절한 SQL 명령을 사용하십시오. **Document** 이름 *

다음 코드 예제는 데이터베이스에서 문서를 삭제하는 방법을 보여줍니다, 파일 이름을 사용하여 레코드를 fetch:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
