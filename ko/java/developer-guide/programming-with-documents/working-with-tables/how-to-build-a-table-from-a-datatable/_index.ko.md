---
title: Java에서`DataTable`에서 테이블을 만드는 방법
second_title: Aspose.WordsJava
articleTitle: `DataTable`에서 테이블 빌드
linktitle: `DataTable`에서 테이블 빌드
description: "Java을 사용하여 외부 데이터베이스에서 문서 테이블을 채우는 예."
type: docs
weight: 130
url: /ko/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

종종 응용 프로그램은 데이터베이스에서 데이터를 가져와**DataTable**형태로 저장합니다. 이 데이터를 문서에 새 테이블로 쉽게 삽입하고 전체 테이블에 서식을 빠르게 적용 할 수 있습니다.

{{% alert color="primary" %}}

**DataTable**의 데이터를 문서 테이블에 삽입하는 가장 좋은 방법은 다음을 사용하는 것입니다. [Mail Merge지역](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). 이 문서에 제시된 기술은 데이터를 병합하기 위해 미리 적합한 템플릿을 만들 수 없는 경우,즉 프로그래밍 방식으로 모든 작업을 수행해야 하는 경우에만 권장됩니다.

{{% /alert %}}

Aspose.Words을 사용하면 데이터베이스에서 데이터를 쉽게 검색하고 테이블로 저장할 수 있습니다:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)에 새[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)개체를 만듭니다.
1. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여 새 테이블을 시작합니다.
1. **DataTable**의 각 열의 이름을 머리글 행으로 삽입하려면 각 데이터 열을 반복하고 열 이름을 테이블의 행에 씁니다.
1. **DataTable**의 각**DataRow**를 반복합니다:
   1. **DataRow**의 각 개체를 반복합니다.
   1. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)를 사용하여 개체를 문서에 삽입합니다. 사용되는 방법은 삽입되는 객체의 유형에 따라 달라집니다.예를 들어 텍스트의[DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln())와 이미지를 나타내는 바이트 배열의[DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[]))입니다.
   1. 데이터 행의 처리가 끝나면[DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)을 사용하여[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder)에 의해 생성되는 행도 끝납니다.
1. **DataTable**의 모든 행이 처리되면[DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)을 호출하여 테이블을 마칩니다.
1. 마지막으로[Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier)과 같은 적절한 테이블 속성 중 하나를 사용하여 원하는 테이블 스타일을 설정하여 전체 테이블에 서식을 자동으로 적용 할 수 있습니다.
   이 예제에서는**DataTable**의 다음 데이터를 사용합니다:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

다음 코드 예제에서는Aspose.Words에서 위의 알고리즘을 실행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

그런 다음**DocumentBuilder**및 데이터를 사용하여 메서드를 쉽게 호출 할 수 있습니다.

다음 코드 예제에서는`DataTable`에서 데이터를 가져와 문서의 새 테이블에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

아래 그림에 표시된 표는 위의 코드를 실행하여 생성됩니다.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
