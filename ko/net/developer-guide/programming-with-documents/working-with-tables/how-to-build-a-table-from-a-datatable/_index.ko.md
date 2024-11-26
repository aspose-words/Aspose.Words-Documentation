---
title: C#의 DataTable 에서 테이블을 작성하는 방법
second_title: .NET용 Aspose.Words
articleTitle: DataTable 에서 테이블 작성
linktitle: DataTable 에서 테이블 작성
description: "C#를 사용하여 외부 데이터베이스에서 문서 테이블을 채우는 예입니다."
type: docs
weight: 120
url: /ko/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

애플리케이션이 데이터베이스에서 데이터를 가져와 **DataTable** 형식으로 저장하는 경우가 많습니다. 이 데이터를 문서에 새 표로 쉽게 삽입하고 전체 표에 서식을 빠르게 적용할 수 있습니다.

{{% alert color="primary" %}}

**DataTable**의 데이터를 문서 테이블에 삽입하는 기본 방법은 [지역이 포함된 Mail Merge](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions)를 사용하는 것입니다. 이 문서에 제시된 기술은 데이터를 병합하기 위해 적절한 템플릿을 미리 만들 수 없는 경우, 즉 모든 작업이 프로그래밍 방식으로 수행되어야 하는 경우에만 제안됩니다.

{{% /alert %}}

Aspose.Words를 사용하면 데이터베이스에서 데이터를 쉽게 검색하여 테이블로 저장할 수 있습니다

1. **Document**에 새 **DocumentBuilder** 개체를 만듭니다.
1. **DocumentBuilder**를 사용하여 새 테이블을 시작합니다.
1. **DataTable**의 각 열 이름을 헤더 행으로 삽입하려면 각 데이터 열을 반복하고 테이블의 행에 열 이름을 씁니다.
1. **DataTable**의 각 **DataRow**를 반복합니다
   1. **DataRow**의 각 객체를 반복합니다.
   1. **DocumentBuilder**를 사용하여 문서에 개체를 삽입합니다. 사용되는 방법은 삽입되는 개체의 유형에 따라 다릅니다. 예를 들어 텍스트의 경우 **DocumentBuilder.Writeln**, 이미지를 나타내는 바이트 배열의 경우 **DocumentBuilder.InsertImage**이 있습니다.
   1. **DataRow** 처리가 끝나면 **DocumentBuilder.EndRow**을 사용하여 **DocumentBuilder**에서 생성되는 행도 종료됩니다.
1. **DataTable**의 모든 행이 처리되면 **DocumentBuilder.EndTable**를 호출하여 테이블을 완료합니다.
1. 마지막으로 **Table.StyleIdentifier**와 같은 적절한 테이블 속성 중 하나를 사용하여 원하는 테이블 스타일을 설정하여 전체 테이블에 서식을 자동으로 적용할 수 있습니다.

**ImportTableFromDataTable** 메소드는 **DocumentBuilder** 객체, 데이터가 포함된 **DataTable** 및 **DataTable**의 열 제목이 테이블 상단에 포함되는지 여부를 지정하는 플래그를 허용합니다. 이 메소드는 빌더의 현재 위치와 형식을 사용하여 이러한 매개변수로부터 테이블을 작성합니다. `DataTable`에서 데이터를 가져와 DocumentBuilder를 사용하여 새 테이블에 삽입하는 방법을 제공합니다.

이 예에서는 **DataTable**의 다음 데이터가 사용되었습니다

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

다음 코드 예제는 Aspose.Words에서 위의 알고리즘을 실행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

그런 다음 **DocumentBuilder** 및 데이터를 사용하여 메서드를 쉽게 호출할 수 있습니다.

다음 코드 예제에서는 `DataTable`에서 데이터를 가져와 문서의 새 테이블에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
