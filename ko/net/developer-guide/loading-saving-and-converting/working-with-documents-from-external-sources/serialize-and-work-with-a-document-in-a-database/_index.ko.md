---
title: 데이터베이스에서 문서 직렬화
second_title: .NET용 Aspose.Words
articleTitle: 데이터베이스의 문서 직렬화 및 작업
linktitle: 데이터베이스의 문서 직렬화 및 작업
description: "C#를 사용하여 데이터베이스에서 이 문서로 작업하기 위해 문서를 바이트 배열로 변환합니다. 데이터베이스에 문서를 저장하고 데이터베이스에서 검색할 수 있습니다."
type: docs
weight: 10
url: /ko/net/serialize-and-work-with-a-document-in-a-database/
---

문서 작업을 할 때 수행해야 할 작업 중 하나는 **Document** 개체를 데이터베이스에 저장하고 데이터베이스에서 검색하는 것입니다. 예를 들어, 모든 유형의 콘텐츠 관리 시스템을 구현하는 경우 이는 필요합니다. 모든 이전 버전의 문서는 데이터베이스 시스템에 저장되어야 합니다. 데이터베이스에 문서를 저장하는 기능은 애플리케이션이 웹 기반 서비스를 제공하는 경우에도 매우 유용합니다.

Aspose.Words는 데이터베이스에서 이 문서에 대한 후속 작업을 위해 문서를 바이트 배열로 변환하는 기능을 제공합니다.

## 문서를 바이트 배열로 변환

데이터베이스에 문서를 저장하거나 웹을 통해 전송할 문서를 준비하려면 바이트 배열을 얻기 위해 문서를 직렬화해야 하는 경우가 많습니다.

Aspose.Words에서 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 객체를 직렬화하려면:

1. **Document** 클래스의 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 메서드 오버로드를 사용하여 **MemoryStream**에 저장합니다.
1. 문서를 바이트 형식으로 나타내는 바이트 배열을 반환하는 **ToArray** 메서드를 호출합니다.

그런 다음 위의 단계를 반대로 수행하여 바이트를 **Document** 객체로 다시 로드할 수 있습니다.

{{% alert color="primary" %}}

선택한 저장 형식은 **Document** 개체에 저장하고 다시 로드할 때 가장 높은 충실도를 유지하는 데 중요합니다. 이러한 이유로 일련의 OOXML 파일 형식을 사용하는 것이 좋습니다.

{{% /alert %}}

아래 예에서는 **Document** 객체를 직렬화하여 바이트 배열을 얻은 다음 바이트 배열을 직렬화 해제하여 **Document** 객체를 다시 얻는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

## 데이터베이스에 문서 저장, 읽기 및 삭제

이 섹션에서는 문서를 데이터베이스에 저장한 다음 작업을 위해 `Document` 개체에 다시 로드하는 방법을 보여줍니다. 단순화를 위해 파일 이름은 데이터베이스에서 문서를 저장하고 가져오는 데 사용되는 키입니다. 데이터베이스에는 두 개의 열이 포함되어 있습니다. 첫 번째 열 "FileName"은 문자열로 저장되며 문서를 식별하는 데 사용됩니다. 두 번째 열 "FileContent"는 문서 개체를 바이트 형식으로 저장하는 `BLOB` 개체로 저장됩니다.

다음 코드 예제에서는 데이터베이스에 대한 연결을 설정하고 명령을 실행하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

이 예에서는 Microsoft Access .mdb 데이터베이스를 사용하여 Aspose.Words 문서를 저장합니다.

{{% /alert %}}

다음 코드 예제에서는 문서를 데이터베이스에 저장한 다음 동일한 문서를 다시 읽고 마지막으로 데이터베이스에서 문서가 포함된 레코드를 삭제하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### 데이터베이스에 문서 저장

데이터베이스에 문서를 저장하려면 이 문서의 시작 부분에 설명된 대로 이 문서를 바이트 배열로 변환하세요. 그런 다음 이 바이트 배열을 데이터베이스 필드에 저장합니다.

다음 코드 예제에서는 지정된 데이터베이스에 문서를 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

모든 작업을 수행하는 SQL 표현식인 commandString을 지정합니다

- 문서를 데이터베이스에 저장하려면 "INSERT INTO" 명령을 사용하고 FileName 및 FileContent라는 두 레코드 필드의 값과 함께 테이블을 지정합니다. 추가 매개변수를 피하기 위해 파일 이름은 **Document** 개체 자체에서 가져옵니다. `FileContent` 필드 값에는 저장된 문서의 이진 표현이 포함된 메모리 스트림의 바이트가 할당됩니다.
- 나머지 코드 줄은 Aspose.Words 문서를 데이터베이스에 저장하는 명령을 실행합니다.

### 데이터베이스에서 문서 검색

데이터베이스에서 문서를 검색하려면 문서 데이터가 바이트 배열로 포함된 레코드를 선택합니다. 그런 다음 레코드의 바이트 배열을 **MemoryStream**로 로드하고 **MemoryStream**에서 문서를 로드할 **Document** 개체를 만듭니다.

다음 코드 예제에서는 이 문서를 가져오기 위한 키로 파일 이름을 사용하여 지정된 데이터베이스에서 문서를 검색하고 반환하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

SQL 명령 "SELECT * FROM"은 파일 이름을 기반으로 적절한 레코드를 가져오는 데 사용됩니다.

{{% /alert %}}

### 데이터베이스에서 문서 삭제

데이터베이스에서 문서를 삭제하려면 **Document** 개체를 조작하지 않고 적절한 SQL 명령을 사용하십시오.

다음 코드 예제에서는 파일 이름을 사용하여 레코드를 가져오는 방식으로 데이터베이스에서 문서를 삭제하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
