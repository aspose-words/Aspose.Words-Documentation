---
title: Licenciamento e Subscrição
second_title: Aspose.Words para Java
articleTitle: Licenciamento e Subscrição
linktitle: Licenciamento e Subscrição
description: "Aspose.Words para Java fornece diferentes planos para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação usando políticas de licenciamento e assinatura."
type: docs
weight: 60
url: /pt/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Às vezes, para estudar melhor o sistema, você quer mergulhar no código o mais rápido possível. Tornar isto mais fácil, Aspose.Words fornece diferentes planos para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Note que existem várias políticas e práticas gerais que orientam você sobre como avaliar, licenciar corretamente e comprar nossos produtos. Você pode encontrá-los no [Políticas de compra e FAQ](https://purchase.aspose.com/policies/) Secção.

{{% /alert %}}

## Avaliação gratuita ou Licença Temporária

Aspose.Words é um software incrível que os desenvolvedores podem tentar antes de comprar. Você pode facilmente baixar / instalar Aspose.Words para Java e Aspose.Words para Android via via via via Java [a partir de Maven](https://releases.aspose.com/words/java/) para avaliação.

### Avaliação gratuita

A versão de avaliação é a mesma que a comprada – a versão Trial simplesmente fica licenciada quando você adiciona algumas linhas de código para aplicar a licença.

A versão Trial de Aspose.Words para Java e Aspose.Words para Android via via via via Java sem a licença especificada fornece funcionalidade completa do produto, mas insere uma marca de água avaliativa na parte superior do documento ao carregar e salvar e limita o tamanho máximo do documento a algumas centenas de parágrafos.

### Licença temporária

Se você deseja testar Aspose.Words para Java e Aspose.Words para Android via via via via Java sem as limitações da versão Trial, você também pode solicitar uma Licença Temporária de 30 dias. Para mais detalhes, consulte o [Uma carta de condução](https://purchase.aspose.com/temporary-license/) página.

## Licença comprada

Após a compra, você precisa aplicar o arquivo de licença ou incluir o arquivo de licença como um recurso incorporado. Esta seção descreve opções de como isso pode ser feito, e também comentários sobre algumas perguntas comuns.

{{% alert color="primary" %}}

Uma licença é um arquivo XML texto simples que contém detalhes como nome do produto, número de desenvolvedores licenciados, data de validade da assinatura, e assim por diante.

O arquivo é assinado digitalmente, então não modifique o arquivo. Mesmo a adição inadvertida de uma quebra de linha extra no arquivo irá invalidá-lo.

{{% /alert %}}

{{% alert color="primary" %}}

Você precisa definir a licença:

* somente uma vez por domínio de aplicação
* antes de usar qualquer outro Aspose.Words aulas

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações de preços sobre o [InformaÃ§Ãμes sobre Pricing](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protegendo sua licença adquirida

Depois de comprar uma licença, você precisa ler cuidadosamente as informações na página [Protegendo sua licença adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger seu arquivo de licença. Por favor, note que esta página está disponível apenas para visualização se tiver uma licença paga.

### Opções de aplicação de licença

As licenças podem ser aplicadas a partir de vários locais:

* Caminho explícito
* A pasta que contém *Aspose.Words JAR* arquivo
* Um recurso incorporado no JAR Chama-se *Aspose.Words JAR*
* Como uma Licença Medida – um novo mecanismo de licenciamento

Muitas vezes, a maneira mais fácil de definir uma licença é colocar o arquivo de licença na mesma pasta que *Aspose.Words JAR* e especifique apenas o nome do arquivo sem o caminho.

{{% alert color="primary" %}}

Use o [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) método para licenciar um componente.

Chamadas **SetLicense** várias vezes não é prejudicial, apenas desperdiça o tempo do processador.

Chamadas [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) várias vezes também não é prejudicial, mas apenas desperdiça o tempo do processador e pode acumular o consumo incorretamente.

{{% /alert %}}

#### Aplicar Licença Usando um objeto de arquivo ou stream

{{% alert color="primary" %}}

Chamada **SetLicense** em seu código de inicialização antes de usar Aspose.Words aulas.

{{% /alert %}}

Ao desenvolver uma biblioteca de classe, você pode chamar **SetLicense** do construtor estático de sua classe que usa Aspose.Words. O construtor estático será executado antes de instanciar sua classe para garantir que o Aspose.Words a licença é instalada corretamente.

##### Carregar uma licença de um arquivo

Usando o [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) método, você pode tentar encontrar o arquivo de licença nos recursos embarcados ou pasta que contêm o JARs de sua aplicação para uso adicional.

O exemplo de código a seguir mostra como inicializar uma licença de uma pasta:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Carregar uma licença de uma `Stream` Objeto

O exemplo de código a seguir mostra como inicializar uma licença de um fluxo usando outro [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) método:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Inclua o arquivo de licença como um recurso incorporado

Uma maneira limpa de empacotar uma licença com sua aplicação e certificar-se de que não será perdido é incluí-la como um recurso incorporado. Você pode simplesmente copiar o arquivo LIC para a pasta de recursos do seu projeto.

Reconstruir o projeto deve incorporar o arquivo .lic no arquivo application .jar. Depois disso, você pode solicitar uma licença usando o seguinte código:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Aplicar Licença Medida

Aspose.Words permite que os desenvolvedores apliquem uma chave de medição. Este é um novo mecanismo de licenciamento.

O novo mecanismo de licenciamento será usado juntamente com o método de licenciamento existente. Aqueles clientes que querem ser cobrados com base no uso de API recursos podem usar o Licenciamento Medido.

Depois de completar todos os passos necessários para obter este tipo de licença, você receberá as chaves, não o arquivo de licença. Esta chave de medição pode ser aplicada usando [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) classe especialmente introduzida para esta finalidade.

Não ligue para **SetMeteredKey** método frequentemente para que este método de licenciamento acumule corretamente o consumo e relata-lo para nós. Basta instantaneamente Aspose.Words Biblioteca, chamada **SetMeteredKey** uma vez, então deixe a biblioteca instantânea e reutilizá-la.

O exemplo de código a seguir mostra como definir chaves públicas e privadas contatadas:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Por favor, note que você deve ter uma conexão de Internet estável para o uso correto da licença Medida, uma vez que o mecanismo Medida requer a interação constante com nossos serviços para cálculos corretos

Para mais detalhes, consulte o [FAQ de Licenciamento Medido](https://purchase.aspose.com/faqs/licensing/metered/) Secção.

{{% /alert %}}

### Alterar o nome do arquivo de licença

O nome do arquivo de licença não precisa ser "Aspose.Words.LIC". Você pode renomeá-lo para seu gosto e usar esse nome ao definir uma licença em sua aplicação.

### "Não é possível encontrar nome de arquivo de licença" Exceção

Quando você comprar e baixar uma licença, o site Aspose nomeia o arquivo de licença *"Aspose.WordsLIC. Você baixar o arquivo de licença usando seu navegador. Neste caso, alguns navegadores reconhecem o arquivo de licença como XML e anexam a extensão .xml para ele, de modo que o nome de arquivo completo em seu computador se torna *"Aspose.Words.lic.XML"*.

Quando Microsoft Windows está configurado para ocultar extensões para tipos de arquivos conhecidos (infelizmente, este é o padrão na maioria Windows instalações), o arquivo de licença aparecerá como *"Aspose.Words. "LIC" Windows Explorador. Você provavelmente vai pensar que este é o nome do arquivo real e chamada **SetLicense** PassandoAspose.Words.LIC"*, mas não há tal arquivo, daí a exceção.

Para resolver o problema, renomeie o arquivo para remover a extensão .xml invisível. Também recomendamos que você desative a opção "extensões de desconto" Microsoft Windows.

## Usando vários produtos de aspose

Se você usar vários produtos Aspose em sua aplicação, como Aspose.Words e `Aspose.Cells`, aqui estão algumas dicas úteis:

* Defina a licença para cada produto Aspose separadamente. Mesmo que você tenha um único arquivo de licença para todos os componentes, por exemplo, "Aspose.Total.lic", você ainda precisa chamar **SetLicense** separadamente para cada produto Aspose que você usa em sua aplicação.
* Use o Nome de Classe de Licença Totalmente Qualificada. Cada um Aspose product has a `License` classe em seu próprio namespace. Por exemplo, Aspose.Words ele tem **com.aspose.words.License** e `Aspose.Cells` tem com.aspose.cells. Classe de licença. Usar o nome de classe totalmente qualificado permite evitar confusão quanto a qual licença se aplica a qual produto.
