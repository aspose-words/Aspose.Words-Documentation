---
title: 테이블을 만드는 방법 `DataTable` 내 계정 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블을 `DataTable`
linktitle: 테이블을 `DataTable`
description: "외부 데이터베이스에서 채우는 문서 테이블의 예 Java·"
type: docs
weight: 130
url: /ko/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

귀하의 응용 프로그램은 데이터베이스에서 데이터를 끌어 놓고 데이터베이스 형태로 저장합니다. **DataTable**· 이 데이터를 새 테이블으로 삽입하고 전체 테이블에 빠르게 포맷 할 수 있습니다.

{{% alert color="primary" %}}

데이터 삽입을 선호하는 방법 **DataTable** 문서 테이블에 의해 [Mail Merge 지역과](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)· 이 문서에서 발표 된 기술은 프로그래밍 할 수있는 모든 것을 필요로하는 경우 다른 단어에서 데이터를 병합하기 위해 적절한 템플릿을 만들 수없는 경우에만 제안됩니다.

{{% /alert %}}

사용 방법 Aspose.Words, 데이터베이스에서 데이터를 쉽게 검색하고 테이블으로 저장 할 수 있습니다

1. 명세 새로운 기능 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 당신의 목표 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)·
1. 명세 새 테이블을 시작 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)·
1. 명세 각 열의 이름을 삽입하려면 **DataTable** header 행으로 각 데이터 열을 통해 열명을 테이블의 행으로 씁니다.
1. 명세 각각을 통해 **DataRow** 내 계정 **DataTable**::
   1. 각 객체를 통해 **DataRow**·
   1. 개체를 사용하여 문서에 삽입 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)· 사용되는 방법은 삽입 된 e.g의 객체의 유형에 달려 있습니다. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) 텍스트 및 [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) 이미지를 나타내는 바이트 배열을 위해.
   1. 데이터 행 처리의 끝에서 또한 행이 생성한 끝 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) 이름 * [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)·
1. 명세 모든 행을 한 번 **DataTable** 호출하여 테이블을 처리했습니다. [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)·
1. 명세 마지막으로, 우리는 적절한 테이블 속성 중 하나를 사용하여 원하는 테이블 스타일을 설정할 수 있습니다. [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) 전체 테이블에 포맷을 자동으로 적용합니다.
   우리의 다음 데이터 **DataTable** 이 예제에서 사용됩니다:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

다음 코드 예제에서는 위의 알고리즘을 실행하는 방법을 보여줍니다. Aspose.Words::

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

방법은 다음을 사용하여 쉽게 호출 할 수 있습니다. **DocumentBuilder** 그리고 자료.

다음 코드 예제에서 데이터를 가져올 방법을 보여줍니다 `DataTable` 문서에 새 테이블에 삽입:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

아래 그림에 표시된 표는 위의 코드를 실행하여 제작됩니다.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
