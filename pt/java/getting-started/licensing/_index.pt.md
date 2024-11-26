---
title: Licenciamento e subscrição
second_title: Aspose.Words para Java
articleTitle: Licenciamento e subscrição
linktitle: Licenciamento e subscrição
description: "Aspose.Words Para Java fornece planos diferentes para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação usando Políticas de licenciamento e assinatura."
type: docs
weight: 60
url: /pt/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Às vezes, para estudar melhor o sistema, você deseja mergulhar no código o mais rápido possível. Para tornar isso mais fácil, Aspose.Words fornece planos diferentes para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Observe que há uma série de políticas e práticas gerais que orientam você sobre como avaliar, licenciar e comprar adequadamente nossos produtos. Você pode encontrá-los no [Polofensivas de compra e FAQ](https://purchase.aspose.com/policies/) secção.

{{% /alert %}}

## Avaliação gratuita ou licença temporária

Aspose.Words é um software incrível que os desenvolvedores podem experimentar antes de comprar. Você pode facilmente baixar / instalar Aspose.Words para Java e Aspose.Words para Android via Java [da Maven](https://releases.aspose.com/words/java/) para avaliação.

### Avaliação Gratuita

A versão de avaliação é a mesma que a adquirida – a versão de Avaliação simplesmente se torna licenciada quando você adiciona algumas linhas de código para aplicar a licença.

A versão de teste de Aspose.Words para Java e Aspose.Words para Android via Java sem a licença especificada fornece funcionalidade completa do produto, mas insere uma marca d'água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos.

### Licença Temporária

Se você deseja testar Aspose.Words para Java e Aspose.Words para Android via Java sem as limitações da versão de Avaliação, Você também pode solicitar uma licença temporária de 30 dias. Para mais detalhes, ver o [Obter uma licença](https://purchase.aspose.com/temporary-license/) página.

## Licença Adquirida

Após a compra, você precisa aplicar o arquivo de licença ou incluir o arquivo de licença como um recurso incorporado. Esta secção descreve as opções de como isso pode ser feito e também comenta algumas questões comuns.

{{% alert color="primary" %}}

Uma licença é um arquivo de texto simples XML que contém detalhes como nome do produto, Número de desenvolvedores licenciados, data de expiração da assinatura e assim por diante.

O ficheiro é assinado digitalmente, por isso não modifique o ficheiro. Mesmo a adição inadvertida de uma quebra de linha extra no arquivo irá invalidá-lo.

{{% /alert %}}

{{% alert color="primary" %}}

Você precisa definir a licença:

* apenas uma vez por domínio de Aplicação
* antes de usar qualquer outra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações sobre preços no [Informa Sobre Pré](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protegendo Sua Licença Adquirida

Depois de adquirir uma licença, você precisa ler atentamente as informações na página [Protegendo A Sua Licença](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger o seu ficheiro de licença. Observe que esta página está disponível para visualização apenas se você tiver uma licença paga.

### Opções De Aplicação De Licença

As licenças podem ser aplicadas a partir de vários locais:

* Caminho explícito
* A pasta que contém o ficheiro *Aspose.Words JAR*
* Um recurso incorporado no JAR é chamado *Aspose.Words JAR*
* Como uma licença medida – um novo mecanismo de licenciamento

Muitas vezes, a maneira mais fácil de definir uma licença é colocar o arquivo de licença na mesma pasta que *Aspose.Words JAR* e especificar apenas o nome do arquivo sem o caminho.

{{% alert color="primary" %}}

Use o método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) para licenciar um componente.

Chamar **SetLicense** várias vezes não é prejudicial, apenas desperdiça tempo do processador.

Chamar [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) várias vezes também não é prejudicial, mas apenas desperdiça tempo do processador e pode acumular consumo indevidamente.

{{% /alert %}}

#### Aplicar licença usando um objeto File ou Stream

{{% alert color="primary" %}}

Chame **SetLicense** em seu código de inicialização antes de usar as classes Aspose.Words.

{{% /alert %}}

Ao desenvolver uma biblioteca de classes, você pode chamar **SetLicense** do construtor estático de sua classe que usa Aspose.Words. O construtor estático será executado antes de instanciar sua classe para garantir que a licença Aspose.Words esteja instalada corretamente.

##### Carregar uma licença de um ficheiro

Usando o método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), você pode tentar encontrar o arquivo de licença nos recursos incorporados ou na pasta que contém o JARs do seu aplicativo para uso posterior.

O exemplo de código a seguir mostra como inicializar uma licença de uma pasta:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Carregar uma licença de um objecto `Stream`

O exemplo de código a seguir mostra como inicializar uma licença de um fluxo usando outro método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream):

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Incluir o ficheiro de licença como um recurso incorporado

Uma ótima maneira de empacotar uma licença com seu aplicativo e garantir que ela não seja perdida é incluí-la como um recurso incorporado. Você pode simplesmente copiar o arquivo LIC para a pasta de recursos do seu projeto.

A reconstrução do projeto deve incorporar o.arquivo lic em aplicação .ficheiro jar. Depois disso, você pode solicitar uma licença usando o seguinte código:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Aplicar Licença Medida

Aspose.Words permite que os desenvolvedores apliquem uma chave medida. Trata-se de um novo mecanismo de licenciamento.

O novo mecanismo de licenciamento será utilizado juntamente com o método de licenciamento existente. Os clientes que desejam ser cobrados com base no uso de recursos API podem usar o licenciamento medido.

Depois de concluir todas as etapas necessárias para obter este tipo de licença, você receberá as chaves, não o arquivo de licença. Esta chave medida pode ser aplicada utilizando a classe [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) especialmente introduzida para este fim.

Não chame o método **SetMeteredKey** com frequência para que este método de licenciamento acumule adequadamente o consumo e nos informe. Basta instanciar a biblioteca Aspose.Words, chamar **SetMeteredKey** uma vez, depois deixar a biblioteca instanciada e reutilizá-la.

O exemplo de código a seguir mostra como definir chaves públicas e privadas medidas:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Observe que você deve ter uma conexão estável com a Internet para o uso correto da licença medida, uma vez que o mecanismo medida requer a interação constante com nossos serviços para cálculos corretos.

Para mais detalhes, consulte o [Licenciatura Em Medicina FAQ](https://purchase.aspose.com/faqs/licensing/metered/) secção.

{{% /alert %}}

### Alterar o nome do ficheiro de licença

O nome do ficheiro da licença não tem de ser "Aspose.Words.LIC". Você pode renomeá-lo ao seu gosto e usar esse nome ao definir uma licença em seu aplicativo.

### Exceção "não é possível encontrar o nome do arquivo da licença"

Quando você compra e baixa uma licença, o site da Aspose nomeia o arquivo de licença *"Aspose.Words.LIC"*. Você baixa o arquivo de licença usando seu navegador. Neste caso, alguns browsers reconhecem o ficheiro de licença como XML e acrescentam-no .extensão xml para ele, então o nome completo do arquivo no seu computador se torna *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows estiver configurado para Ocultar extensões para tipos de arquivo conhecidos (infelizmente, este é o padrão na maioria das instalações Windows), o arquivo de licença aparecerá como *"Aspose.Words. LIC"* em Windows Explorer. Você provavelmente pensará que este é o nome real do arquivo e chamará **SetLicense** passando-o *"Aspose.Words.LIC"*, mas não existe esse arquivo, daí a exceção.

Para resolver o problema, renomeie o arquivo para remover o invisível .extensão xml. Também recomendamos que desative a opção" Ocultar extensões " em Microsoft Windows.

## Utilização De Vários Produtos Aspose

Se você usar vários produtos Aspose em sua aplicação, como Aspose.Words e `Aspose.Cells`, Aqui estão algumas dicas úteis:

* Defina a licença para cada produto Aspose separadamente. Mesmo que você tenha um único arquivo de licença para todos os componentes, por exemplo, "Aspose.Total.lic", você ainda precisa chamar **SetLicense** separadamente para cada produto Aspose que você usa em seu aplicativo.
* Use o nome da classe de licença totalmente qualificado. Cada produto Aspose tem uma classe `License` no seu próprio namespace. Por exemplo, Aspose.Words tem **com.aspose.words.License** e `Aspose.Cells` tem com.aspose.células.Classe de licença. O uso do nome de classe totalmente qualificado permite evitar confusão sobre qual licença se aplica a qual produto.
