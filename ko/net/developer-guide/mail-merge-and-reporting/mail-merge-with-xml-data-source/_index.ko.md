---
title: C#에XML데이터 소스가 있는Mail Merge
second_title: Aspose.Words.NET
articleTitle: Mail MergeXML데이터 소스 포함
linktitle: Mail MergeXML데이터 소스 포함
type: docs
description: "C#를 사용하는XML파일을 포함하여Mail Merge작업을 수행할 때 다양한 데이터 소스를 사용합니다. XML을 사용하는 가장 큰 장점은 문서에서 계층을 직접 정의할 수 있다는 것입니다."
keywords: "mail merge xml data source c#"
weight: 30
url: /ko/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

Mail Merge작업을 수행할 때XML파일을 포함하여 다양한 데이터 원본을 사용할 수 있습니다. XML를 사용하는 가장 큰 장점은 문서에서 계층 구조를 정의한 다음Aspose.Words에 전달할 수 있다는 것입니다.

이 문서에서는 데이터베이스에서 직접 데이터를 읽는 것이 아니라XML파일에서 데이터를 읽고Mail Merge작업을 수행할 데이터 원본으로XML를 포함하는 방법을 설명합니다.

## 데이터 소스로XML의 장점

XML데이터 소스는 데이터베이스의 오버헤드 없이 데이터를 저장하는 데 매우 편리합니다. 사용자가 데이터베이스에 연결할 수 없을 때 데이터를 추가,편집 및 삭제해야 하는 오프라인 응용 프로그램에 적합합니다.

XML데이터는 특히 웹 응용 프로그램으로 작업하는 경우 관계형 데이터베이스에 대한 좋은 데이터 원본 대안이 될 수 있습니다. 대부분의 웹 서비스는XML을 사용하여 정보를 교환합니다. XML지향 데이터베이스는 현재 시장에서 활발하게 사용되고 있으며 관계형 데이터베이스 개발자는 데이터베이스 반환XML을 얻기 위해 제품에XML호환성을 추가하고 있습니다.

XML은 데이터를 일반 텍스트 형식으로 저장하므로 저장소는 플랫폼에 독립적입니다. 따라서 데이터를 쉽게 내보내거나 가져오거나 간단히 이동할 수 있습니다. XML은 서로 다른 응용 프로그램 간에 통신할 때 데이터의 의미적 의미를 보존하는 방법을 제공하기 때문에 데이터 소스로 인기가 있습니다.

## DataSet을 사용하여XML의 데이터로 병합 템플릿 채우기

XML은 데이터 교환을 위한 보편적인 표준이며Microsoft Word문서 형식은Mail Merge템플릿에 가장 많이 사용되는 형식입니다. 따라서XML파일에서Word템플릿 문서로Mail Merge을 실행하는 기능이 일반적인 요구 사항이 되었습니다.

Microsoft Word은XML데이터를Mail Merge작업의 데이터 원본으로 사용할 수 있는 직접적인 방법을 제공하지 않지만Aspose.Words은XML데이터 원본의 데이터로Mail Merge작업을 수행할 수 있도록 합니다. XML문서의 구조도 다양할 수 있으며 데이터는 여전히 올바르게 읽을 수 있습니다. 이를 통해 다양한 유형의XML문서를 쉽게 병합 할 수 있습니다.

`ReadXML`메서드를 사용하여XML스키마와 데이터를`DataSet`개체로 읽습니다. 이 개체는mail merge의 데이터 소스로 사용됩니다.

{{% alert color="primary" %}}

서로 다른 데이터 원본에 대해 동일한 템플릿을 사용할 수 있습니다.

{{% /alert %}}

다음XML에는 병합 템플릿을 채우는 데 필요한 데이터가 포함되어 있습니다:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

다음 코드 예제에서는XML데이터를DataSet에 로드한 다음 데이터 원본으로 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Mail Merge작업을 실행하기 전에 템플릿 간의 차이를 확인할 수 있습니다:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

그리고Mail Merge연산을 실행한 후:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
