---
title: Mail Merge com XML Fonte de dados em Java
second_title: Aspose.Words para Java
articleTitle: Mail Merge com XML Fonte de dados
linktitle: Mail Merge com XML Fonte de dados
type: docs
description: "Use uma variedade de fontes de dados ao executar uma operação Mail Merge, incluindo um arquivo XML. A principal vantagem de usar XML é a capacidade de definir uma hierarquia diretamente no documento em Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /pt/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

Você pode usar uma variedade de fontes de dados ao executar uma operação Mail Merge, incluindo um arquivo XML. A principal vantagem de usar XML é a capacidade de definir uma hierarquia diretamente no documento e, em seguida, simplesmente passá-la para Aspose.Words.

Este artigo descreverá como ler dados de um arquivo XML em vez de diretamente de um banco de dados e incluirá XML como fonte de dados para executar uma operação Mail Merge.

## Vantagens de XML como fonte de dados

XML as fontes de dados são muito úteis para armazenar dados sem a sobrecarga de um banco de dados. Eles são ótimos para aplicativos off-line em que os usuários precisam adicionar, editar e excluir dados quando não conseguem se conectar a um banco de dados.

XML os dados podem ser uma boa alternativa de fonte de dados aos bancos de dados relacionais, especialmente se você trabalha com aplicativos da web. A maioria dos serviços web utiliza XML para trocar informações. Os bancos de dados orientados a XML são usados ativamente no mercado atual, e os desenvolvedores de bancos de dados relacionais estão adicionando compatibilidade XML aos seus produtos para que um banco de dados retorne XML.

Uma vez que XML armazena dados em formato de texto simples, o armazenamento é independente da plataforma. Assim, os dados podem ser facilmente exportados, importados ou simplesmente movidos. XML é popular como fonte de dados porque oferece uma maneira de preservar o significado semântico dos dados ao se comunicar entre diferentes aplicativos.

## Preenchendo um modelo de mesclagem com dados de XML Usando DataSet

XML é o padrão universal para intercâmbio de dados, e Microsoft Word formatos de documentos são os formatos mais populares para Mail Merge modelos. Portanto, a capacidade de executar um Mail Merge de um arquivo XML para um documento de modelo do Word tornou-se um requisito comum.

Microsoft Word não fornece um método direto para trabalhar com dados XML como uma fonte de dados para uma operação Mail Merge, enquanto Aspose.Words permite executar uma operação Mail Merge com dados de uma fonte de dados XML. Observe que a estrutura do documento XML também pode ser variada e os dados ainda serão lidos corretamente. Isso permite que diferentes tipos de documentos XML sejam facilmente mesclados.

Use o método `ReadXML` para ler o esquema XML e os dados no objeto `DataSet`. Este objecto é então utilizado como fonte de dados para a mail merge.

{{% alert color="primary" %}}

Pode utilizar os mesmos modelos para diferentes fontes de dados.

{{% /alert %}}

O seguinte XML contém os dados necessários para preencher um modelo de mesclagem:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

O exemplo de código a seguir mostra como carregar dados XML em DataSet e usá-los como fonte de dados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Você pode notar a diferença entre o modelo antes de executar a operação Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

E depois de executar a operação Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
