---
title: Perguntas frequentes
second_title: Aspose.Words para Java
articleTitle: Perguntas frequentes
linktitle: Perguntas frequentes
type: docs
description: "Aspose.Words para Java responde às perguntas mais frequentes. Aprenda esta página para resolver rapidamente seu problema em questões gerais ou tópicos específicos."
weight: 75
url: /pt/java/faq/
timestamp: 2024-01-31-14-23-37
---

Esta página contém respostas para as perguntas mais frequentes. Por favor, aprenda a página atual – talvez isso permita que você resolva seu problema rapidamente.

Se você não encontrou a resposta para sua pergunta, você pode fazer no fórum de suporte. Para obter informações sobre como relatar corretamente sua pergunta ou problema, consulte a [Suporte para suporte técnico técnico](/words/pt/java/technical-support/) página.

{{% alert color="primary" %}}

Perguntas frequentes são agrupadas por tópico para sua conveniência.

{{% /alert %}}

## Geral

**Q: O que é? Aspose.Words?**

Aspose.Words para Java é uma biblioteca de classe que permite que seus aplicativos realizem uma ampla variedade de tarefas de processamento de documentos. Com Aspose.Words para Java, você pode gerar, modificar, converter, renderizar e imprimir documentos sem aplicativos de terceiros.

Os detalhes podem ser encontrados em nossa documentação.

------

**Q: O que significa "Aspose.Words não requer aplicações de terceiros"?**

Aspose.Words para Java não precisa instalar quaisquer aplicativos de terceiros ou pacotes de software adicionais para trabalhar. Basta baixar e instalar Aspose.Words como descrito no [Instalação](/words/pt/java/installation/) artigo e começar.

------

**Q: O que as plataformas fazem Aspose.Words apoio?**

Aspose.Words para Java abrange a maioria dos ambientes de desenvolvimento populares e plataformas de implantação. A sua API pode ser usado para desenvolver aplicações para uma ampla gama de sistemas operacionais, como Windows, Linux, e Mac OS, e várias plataformas.

Para obter detalhes, consulte o [Visão geral do produto](/words/pt/java/product-overview/) página e a [Plataformas e Interop- Sim](/words/java/platforms-and-interoperability/) Secção.

------

**Q: Que formatos de documento faz Aspose.Words apoio?**

Aspose.Words para Java suporta a maioria dos formatos de documentos populares, como DOC, DOCX, HTML, Markdown, PDF, XML e outros.

Você pode ver a lista completa de formatos suportados no [Formatos de suporte](/words/pt/java/supported-document-formats/) página.

------

**Q: Como posso tentar Aspose.Words livre?**

Você pode fazer isso de duas maneiras – usando a versão Trial ou uma Licença Temporária de 30 dias. A versão Trial é a mesma que a comprada, fornece funcionalidade completa do produto, mas adiciona uma marca de água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos. Uma Licença Temporária permite que você teste Aspose.Words sem restrições de julgamento por 30 dias.

Ver [Licenciamento e Subscrição](/words/pt/java/licensing/) página para mais informações.

{{% alert color="primary" %}}

Você também pode tentar alguns dos mais populares Aspose.Words recursos através do [Aspose.Words Aplicações online](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Como posso comprar Aspose.Words?**

Para comprar um Aspose.Words licença, você precisa ir para a [Compra](https://purchase.aspose.com/buy) página, selecione o "Aspose.Words" produto e o tipo de licença que lhe convier. Em seguida, adicione a licença ao seu carrinho e siga as instruções do Carrinho de Compras.

Após a compra, aplique a licença como descrito na [Licença de compra](/words/java/licensing/#purchased-license) Secção.

Detalhes sobre como instalar Aspose.Words pode ser lido no [Instalação](/words/pt/java/installation/) página.

------

**Q: Como posso obter apoio?**

Use o fórum de suporte técnico gratuito. Para obter detalhes sobre como relatar corretamente um problema e o que precisa ser feito antes de entrar em contato com o fórum, consulte o [Suporte para suporte técnico técnico](/words/pt/java/technical-support/) página.

## Renderização de um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a renderização no [Renderização](/words/pt/java/rendering/) seção de documentação.

{{% /alert %}}

**Q: Por que o layout e as fontes no documento de saída são diferentes do original?**

A fonte pode não estar disponível, ou o formato de fonte é suportado por Microsoft Word mas não suportado por Aspose.Words. Aspose.Words será executado [Manipulador e Substituir Fontes True Tipo](/words/pt/java/manipulate-and-substitute-truetype-fonts/).

Para verificar se a fonte está faltando:

- Em Aspose.Words use os avisos de substituição da fonte (para detalhes, veja a seção "Como reconhecer que a fonte foi substituída" da [Manipulador e Substituir Fontes True Tipo](/words/pt/java/manipulate-and-substitute-truetype-fonts/) artigo).
- Em Microsoft Word abrir a caixa de diálogo "Substituição de alimentação" (File → Opções → Advanced → Substituição da fonte).

------

**Q: Por que não a fonte fallback trabalhar em non-Windows plataformas e caracteres Unicode são substituídos pelo .notdef glyph?**

Muitas vezes podemos ver o `.notdef` glyph em vez de algum personagem Unicode. Esta é geralmente uma caixa ou uma pergunta glyph.

Isso é porque Microsoft As configurações de retorno do escritório são selecionadas por padrão e Microsoft Fontes de escritório não estão disponíveis. Os usuários têm que instalar Microsoft Fontes de escritório ou alterar configurações de retorno.

------

**Q: Por que o texto de script complexo, como tailandês ou hebraico, pode ser exibido inexatamente por alguma razão, como a posição errada para diacríticos ou ligaduras imprecisas?**

Algumas fontes de script complexas exigem que os recursos de tipografia avançada sejam processados para exibi-los corretamente. A tipografia avançada está desativada em Aspose.Words por padrão. Os usuários têm que habilitar a tipografia avançada com [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Eu preciso de arquivos de licença para as fontes que eu uso?**

Sim, tens. Portanto, ao copiar fontes, tenha em mente que a maioria das fontes está protegida por direitos autorais. Localize as licenças de fonte de antemão e verifique se elas podem ser transferidas livremente para outra máquina.

## Aninhado Mail Merge

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre Mail Merge no [Mail Merge e Relatórios](/words/java/mail-merge-and-reporting/) seção de documentação.

{{% /alert %}}

**Q: Por que não há campos mesclados na saída gerada?**

O nome original do campo de mesclagem permanece o mesmo sem ser substituído pelos dados necessários da fonte de dados, então:

- Verifique se os dados estão sendo carregados corretamente em tabelas: definir o [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) corretamente com todas as chaves primárias e relacionamentos necessários.
- Verifique se os campos de mesclagem são nomeados corretamente. Use o [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) método para obter todos os nomes de campos de mesclagem e garantir que o nome de campos de mesclagem em seu modelo corresponda ao que em sua fonte de dados.

------

**Q: Por que a saída da fusão aninhada não exibe dados da tabela da criança para a primeira entrada na tabela pai, mas exibe todos os itens para a última entrada na tabela pai, mesmo aqueles que não estão realmente ligados a ela?**

Isso porque as regiões de mesclagem no modelo não são corretamente formadas, o que pode fazer todos aninhados Mail Merge regiões para parar de exibir qualquer coisa. O [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) tag de abertura e a [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) tag de fechamento deve corresponder e estar na mesma linha ou célula. Por exemplo, se você começar a aninhar regiões de mesclagem em uma célula de uma tabela, você deve terminar a região de mesclagem na mesma linha que a primeira célula.

------

**Q: Por que cada entrada da tabela pai exibe cada item na tabela da criança, mesmo aqueles que não estão realmente ligados a ela?**

Isso ocorre porque a relação entre os pais e as tabelas infantis não são configuradas ou estão incorretamente configuradas. É necessário:

- Garantir a integridade dos dados dentro do seu **DataSet** e usar o **DataRelation** objeto para representar a relação entre tabelas de dados relacionadas.
- Verifique a seção "Como configurar as relações de dados em aninhado Mail Merge com Regiões" no artigo [Aninhado Mail Merge com regiões](/words/java/nested-mail-merge-with-regions/).

------

**Q: Por que é uma exceção: "Sistema. Revisão de Argument: Esta restrição não pode ser habilitada, pois nem todos os valores têm valores pais correspondentes" ao executar aninhado mail merge?**

Isso acontece porque nem todo registro pai tem um registro de criança para que sua fonte de dados não corresponda aos seguintes critérios: *cada linha na tabela-mãe deve ter um relacionamento one-to-one com as linhas da tabela de crianças com base nas chaves primárias e estrangeiras*.

Desativar restrições de chave estrangeira quando você criar um **DataRelation**.

## Anexar ou inserir um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a programação com documentos no [Programação com Documentos](/words/pt/java/programming-with-documents/) seção de documentação.

{{% /alert %}}

**Q: Por que não o conteúdo anexado a um documento aparece na mesma página?**

O resultado do apêndice aparece em uma página separada por causa de uma diferença em [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) configurações para as seções em que os documentos são anexados juntos. Faça idêntico **PageSetup** configurações para as seções em que os documentos são anexados juntos.

## Converter um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a conversão de um documento no [Converter um documento](/words/pt/java/convert-a-document/) seção de documentação.

{{% /alert %}}

**Q: Como converter DOCX para PDF?**

É muito fácil também, basta carregar um documento para o modelo e salvá-lo em qualquer formato suportado.

O exemplo a seguir mostra o processo de conversão de um arquivo DOCX para PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipular com um documento

{{% alert color="primary" %}}

Você pode encontrar informações mais detalhadas sobre a programação com documentos no [Programação com Documentos](/words/pt/java/programming-with-documents/) seção de documentação.

{{% /alert %}}

**Q: Como dividir uma página de documento por página?**

Aspose.Words permite dividir uma página de documento multi-página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Como abrir um encriptado** **documento?**

Você pode tentar abrir um documento criptografado sem uma senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como abrir um documento criptografado com uma senha:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q: Como imprimir um documento?**

Para uma resposta detalhada, aprenda o artigo [Imprimir um documento Programaticamente ou usando diálogos](/words/pt/java/print-a-document-programmatically-or-using-dialogs/).
