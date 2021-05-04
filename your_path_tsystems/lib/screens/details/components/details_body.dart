import 'package:flutter/material.dart';
import 'package:your_path_tsystems/models/requirements_model.dart';
import 'package:your_path_tsystems/shared/cosntants/text_styles.dart';

class DetailsBody extends StatefulWidget {
  String nivel;
  DetailsBody({
    Key key,
    this.nivel,
  }) : super(key: key);
  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  Map<String, bool> get requirements => data[widget.nivel]["Requirements"];
  List<String> get caracteristicas => data[widget.nivel]["Características"];
  List<String> get errosEsperados => data[widget.nivel]["Erros"];
  List<RequirementModel> requirementsList;

  void initState() {
    super.initState();
    requirementsList = requirements.entries
        .map((e) => RequirementModel(title: e.key, checked: e.value))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Text(
              widget.nivel,
              style: AppTextStyles.titleBold,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "O que esperamos que você saiba:",
              style: AppTextStyles.body16Bold,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 25,
            ),
            checklistBuilder(requirementsList),
            SizedBox(
              height: 25,
            ),
            Text(
              "Algumas características desse nível são:",
              style: AppTextStyles.body16Bold,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 25,
            ),
            unorderedListItem(caracteristicas),
            SizedBox(
              height: 25,
            ),
            Text(
              "Fique tranquilo!\nAlguns erros esperados são:",
              style: AppTextStyles.body16Bold,
            ),
            SizedBox(
              height: 25,
            ),
            unorderedListItem(errosEsperados),
          ],
        ),
      ),
    );
  }

  ListView checklistBuilder(List<RequirementModel> requirements) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: requirements.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return CheckboxListTile(
          title: Text(requirements[index].title),
          value: requirements[index].checked,
          onChanged: (value) => setState(
            () {
              requirements[index].checked = value;
            },
          ),
        );
      },
    );
  }

  ListView unorderedListItem(List<String> lista) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: lista.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            "• " + lista[index],
            style: AppTextStyles.body16,
            textAlign: TextAlign.justify,
          ),
        );
      },
    );
  }

  final data = {
    //Fonte: https://rhtech.geekhunter.com.br/desenvolvedor-e-junior-pleno-ou-senior/
    "Estagiário": {
      "Características": [
        "Sede de apendizado",
      ],
      "Requirements": {
        "Atenção aos detalhes": false,
        "Vontade de aprender": false,
        "Comprometimento com as atividades": false,
        "Ajudar os desenvolvedores mais experientes": false,
      },
      "Erros": [
        "Só não vale falta de atençao;",
      ]
    },
    "Júnior": {
      "Características": [
        "Comprometimento pelo trabalho acima da média;",
        "Conhecimento teórico “fresco” de TI de forma geral, já que normalmente estuda diariamente;",
        "Interesse e conhecimentos sobre tecnologias mais recentes;",
        "Tem domínio dos recursos básicos da linguagem, mas ainda não tem familiaridade com algumas estruturas avançadas;",
        "Mais disposição para aprender coisas novas.",
        "Média de 0 a 3 anos de experiência como programador;",
      ],
      "Requirements": {
        "Corrigir bugs pequenos e menos importantes": false,
        "Trabalhar com um escopo bem definido do que está fazendo": false,
        "Evolução constante e disposição para aprender novidades": false,
        "Ajudar os desenvolvedores mais experientes": false,
        "Auxiliar no planejamento inicial de projetos grandes": false,
        "Trazer tendências e novas referências para o time de desenvolvimento.":
            false,
      },
      "Erros": [
        "É provável que produza linhas de código com bugs, faz parte do processo de maturação;",
        "Exige mais iterações nas revisões de código;",
        "Não tem experiência nas melhores práticas, vai aprender isso durante o processo de desenvolvimento;",
        "Poderá exigir o dobro do tempo e esforço em relação ao dev pleno;",
        "Deve ser supervisionado.",
      ]
    },
    "Pleno": {
      "Características": [
        "Disposição para ensinar o que sabe e aprender coisas novas;",
        "Tem experiência em projetos dos mais variados tipos;",
        "Pode trabalhar sozinho ou em equipe como um líder;",
        "Pode configurar o ambiente de desenvolvimento sozinho;",
        "Tem iniciativa e busca maneiras diferentes de resolver problemas;",
        "Não pensa somente em códigos, mas também nos principais aspectos do negócio (marketing, administrativo, financeiro etc).",
        "Média de 5 – 10 anos como programador;",
      ],
      "Requirements": {
        "Criação de código legível para outros desenvolvedores;": false,
        "Habilidades de otimização de código para torná-lo mais eficiente;":
            false,
        "Capacidade de quebrar as tarefas em tarefas menores;": false,
        "Testes, testes e mais testes;": false,
        "Revisar o código em detalhes;": false,
        "Encontrar bugs e propor plano de ação para correção;": false,
        "Executar várias tarefas em vários projetos de forma simultânea;":
            false,
        "Domínio das principais linguagens da stack;": false,
        "Orientar os desenvolvedores juniores.": false,
      },
      "Erros": [
        "Pode não ter a experiência necessária na solução de TODAS as tarefas e em todos todos os níveis de complexidade de forma independente;",
        "Apesar de ter autonomia para os principais processos, o desenvolvedor pleno ainda precisa de um mentor;",
      ]
    },
    "Sênior": {
      "Características": [
        "Mais de 8 anos de experiência com desenvolvimento de software;",
        "Alto nível de autoconhecimento e autodesenvolvimento;",
        "Experiência na resolução de problemas e tarefas de alta complexidade;",
        "Mentalidade de cientista, busca experiências e inovações cotidianamente;",
        "Especialista em mentoria e desenvolvimento de novos talentos;",
        "Conhecimento e experiência em todos os aspectos da engenharia de software;",
        "Capacidade em delegar tarefas com assertividade;",
        "Capacidade de justificar processos e valores usando dados e bom poder de convencimento;",
        "Tem uma visão do bigpicture e, ao mesmo tempo, profunda do negócio.",
      ],
      "Requirements": {
        "Pode assumir processo completos, desde o desenvolvimento até o lançamento;":
            false,
        "Capacidade de construir e implementar um sistema a partir do zero;":
            false,
        "Habilidade analítica de encontrar brechas em grandes projetos;": false,
        "Assume os riscos mais altos dentro do time;": false,
        "Fazer revisões regulares do código;": false,
        "Pode resolver problemas diferentes e de forma independente devido sua experiência;":
            false,
        "Ser conciliador e solucionador de conflitos internos do time;": false,
        "Excelente comunicação e capacidade de vender ideias e projetos;":
            false,
        "Extenso conhecimento teórico e prático sobre os mais diversos assuntos de tecnologia.":
            false,
      },
      "Erros": [
        "Pode ainda ser necessário refinar as SoftSkills",
      ]
    }
  };
}
