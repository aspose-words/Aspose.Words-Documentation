---
title: Mail Merge및C#에서 보고
second_title: Aspose.Words.NET
articleTitle: Mail Merge및 보고
linktitle: Mail Merge및 보고
type: docs
description: "Mail Merge는C#를 사용하여 문서를 빠르게 만드는 데 인기있는 기능입니다. .NET에 대한Aspose.Words은 표준Mail Merge기능을 취하고 여러 단계 앞서서 보고서,카탈로그,재고 및 송장과 같은 더 복잡한 문서를 만들 수있는 본격적인 보고 솔루션으로 전환합니다."
keywords: "how to use Mail Merge c#"
weight: 30
url: /ko/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge는 편지,레이블 및 봉투와 같은 문서를 빠르고 쉽게 만들 수있는 인기있는 기능입니다. Aspose.Words을 사용하면Mail Merge필드가 있는 템플릿에서 문서를 생성할 수 있습니다.

Mail Merge필드는mail merge템플릿에 삽입하여 출력 문서에 데이터 원본 레코드의 특정 값을 포함할 수 있는 필드입니다. 예를 들어 전자 메일 템플릿에 병합 필드를 삽입하여 인사말에 일반"안녕하세요!". Aspose.Words데이터베이스 또는 파일과 같은 외부 소스의 데이터를 이러한 필드에 배치하고 형식을 지정합니다. 결과 문서는 지정된 폴더에 저장됩니다.

Aspose.Words은 표준Mail Merge기능을 사용하여 여러 단계 앞서서 보고서,카탈로그,재고 및 송장과 같은 더욱 복잡한 문서를 만들 수 있는 본격적인 보고 솔루션으로 전환합니다. Aspose.Words보고 솔루션의 몇 가지 장점은 다음과 같습니다:

- 표준Mail Merge필드를 사용하여Microsoft Word에 보고서를 디자인합니다
- 자세한 순서 행과 같이 증가 중인 문서 영역을 정의합니다
- Mail merge동안 이미지 삽입
- Mail Merge이벤트 처리기를 사용하여 사용자 지정 논리를 실행하거나 서식을 제어하거나 복잡한 콘텐츠를 삽입합니다
- 모든 유형의 데이터 원본의 데이터로 문서 채우기

{{% alert color="primary" %}}

[Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/)네임스페이스는 메일 병합 작업에 사용됩니다.

{{% /alert %}}

## Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}의 메커니즘 및 주요 구성 요소

Aspose.Words는 다양한[supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/)에서 문서를로드 한 다음 사용자가Mail Merge작업을 수행 할 수있는 기능을 제공합니다.

일반적으로 로드된 문서를 사용하면 병합 필드(예:DOCX형식의 문서)를 저장할 수 있습니다. 그러나 이러한 필드를 저장하지 않는 형식(예:TXT)이 있습니다. Aspose.Words이 이러한 파일 형식 로딩을 지원하는 경우 병합 필드를 문서 모델에 직접 추가하고 편리한[supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/)에 문서를 저장한 다음Mail Merge작업을 수행할 수 있습니다.

Mail Merge작업은*mail merge template*과*data source*를 병합하여 개별*merged documents*을 생성합니다.

## Mail Merge템플릿 {#what-is-a-mail-merge-template}이란 무엇입니까

병합 템플릿을 사용하여mail merge작업을 적용하는 목적은 문서를 만드는 프로세스를 단순화하는 것입니다.

병합 템플릿을 만들고 디자인하는 방법에는 여러 가지가 있습니다. Microsoft Word을 사용할 수 있으며 병합 템플릿은Microsoft Word템플릿 일 필요는 없으며DOT또는DOTX형식의 문서이며DOC또는DOCX형식의 일반 문서 일 수 있습니다. 나중에 데이터 원본의 데이터를 삽입할 위치에 병합 필드라는 특수 필드를 이 템플릿에 삽입해야 합니다. 또는[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)클래스를 사용하여 프로그래밍 방식으로 병합 템플릿을 만들 수 있습니다.

병합 템플릿에는Mail Merge작업을 수행한 후 모든 출력 문서에서 동일해야 하는 주 텍스트가 포함되어 있습니다. 병합 필드를 추가할 수 있는 기능이 있는 경우 템플릿에 대해 모든 형식을 사용할 수 있습니다. Mail Merge작업 중에 템플릿 내의 모든 병합 필드가 데이터 원본에서 채워집니다.

## Mail Merge작업 {#data-source-types-for-a-mail-merge-operation}에 대한 데이터 소스

Aspose.WordsMail Merge은 다양한 데이터 소스를 허용합니다. 이 중 하나가 될 수 있습니다DataTable, DataView, DataSet, IDataReader, ADO.NET에서 지원하는 값 배열 또는[IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/)구현으로 표시되는 사용자 지정 데이터 원본입니다.

데이터 원본에는 개별 이메일 및 문서를 개인화하기 위해Mail Merge작업 중에 가져온 모든 정보가 포함되어 있습니다. 데이터 원본은 수동으로 만들거나 기존 데이터베이스 또는 응용 프로그램의 보고를 통해 생성할 수 있습니다. XML형식의 데이터가 있는 경우DataSet형식으로 데이터를 로드하고 병합할 수 있습니다. Mail Merge작업은 모든 데이터 원본 레코드를 살펴보고 문서의Mail Merge필드에 삽입합니다. [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/)과 같은 일부mail merge인터페이스를 구현하여LINQ쿼리,XML파일 또는 비즈니스 개체를 포함한 모든 데이터 원본의 데이터를 병합할 수 있습니다.

다음 코드 예제에서는Mail Merge작업의 데이터 원본으로 데이터 테이블을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Mail Merge작업 {#merged-documents-of-a-mail-merge-operation}의 병합된 문서

병합된 문서는 템플릿을 데이터 원본과 병합할 때Mail Merge작업의 결과입니다. 병합된 문서 내의 모든 병합 필드는 데이터 원본의 실제 데이터로 바뀝니다.

다음 이미지에서는Mail Merge작업을 수행하기 전에 병합된 필드가 있는 병합 템플릿의 예를 보여 줍니다.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

다음 이미지에서는Mail Merge작업을 수행한 결과 출력 병합된 문서의 예를 보여 줍니다.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## 또한 참조

- [Word에서Mail Merge템플릿으로 작업](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
