import React from 'react';
import {Button, CheckBox, StyleSheet, View, Text, ImageBackground, FlatList, TextInput} from 'react-native';
import BackImage from './images/TaskList.png';
import Tarefa from './Tarefa';

// export default function TaskList( props ) { 
//     return (
//         <View>
//             <Text>TaskList</Text>
//         </View>
//     );
// }

// export default (props) => { 
//     return (
//         <View>
//             <Text>TaskList</Text>
//         </View>
//     );
// }

const estilos = StyleSheet.create({ 
    cabecalho: { 
        flex: 3,
        backgroundColor: '#000',
    },
    tasklist: { 
        flex: 7,
        backgroundColor: '#DDD',
    },
    painel: { 
        flex: 1,
        justifyContent: "space-evenly",
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
        margin: 10,
        padding: 5,
    },
    label: { 
        flex: 1,
        color: "#FFF",
        fontSize: 14,
    },
    input: { 
        flex: 1,
        backgroundColor: "rgba(255, 255, 255, 0.7)",
        borderColor: "red",
        borderWidth: 2,
        height: 20
    }, 
    check: {
        flex: 3,
        flexDirection: "row", 
    },
    botao: { 
        flex: 1,
        borderRadius: 0.5,
    }
});

class TaskList extends React.Component { 
    constructor(props) { 
        super(props);

        this.state = { tarefaAtual:{texto: "", data: "", concluido: false}, lista: [
                {id: '0', texto: "Assistir Aulas na Faculdade", data: "Qua, 19 de maio", concluido: true},
                {id: '1', texto: "Estudar Reac-Native", data: "Qua, 20 de maio", concluido: false},
                {id: '2', texto: "Fazer atividades de casa", data: "Qua, 21 de maio", concluido: true},
                {id: '3', texto: "Mandar email para o Chefe", data: "Qua, 22 de maio", concluido: true},
                {id: '4', texto: "Preparar o Almoço", data: "Qua, 26 de maio", concluido: false},
                {id: '5', texto: "Estudar para a prova", data: "Qua, 03 de junho", concluido: false},
        ]};
    }

    // listaTarefas() { 
    //     const lista = [];
    //     for (let i = 0; i < 5; i++) {
    //         lista.push(<Tarefa/>);
    //     }
    //     return lista;
    // }

    listaTarefas() { 
        const lista = [];
        for( let i = 0; i < this.state.lista.length; i++) { 
            let task = this.state.lista[i];
            lista.push(<Tarefa key={i} texto={task['texto']} 
                            data={task['data']} concluido={task['concluido']}/>);
        }
        return lista;
    }

    atualizaTarefa( texto ) { 
        this.setState( {...this.state, tarefaAtual: {... this.state.tarefaAtual, texto: texto}});
    }

    atualizaData( texto ) { 
        this.setState( {...this.state, tarefaAtual: {... this.state.tarefaAtual, data: texto}});
    }

    atualizaConcluido( chk  ) { 
        this.setState( {...this.state, tarefaAtual: {... this.state.tarefaAtual, concluido: chk}});
    }

    adicionar() { 
        console.log("Texto: " + this.state.tarefaAtual.texto);
        console.log("Data: " + this.state.tarefaAtual.data);
        console.log("Concluido: " + this.state.tarefaAtual.concluido);
        this.setState({
                tarefaAtual: {... this.state.tarefaAtual},
                lista: [... this.state.lista, {... this.state.tarefaAtual}],
        });
    }

    render() { 
        return (
            <View style={{flex: 1}}>
                <ImageBackground source={BackImage} style={estilos.cabecalho}>
                    <View style={estilos.painel}>
                        <Text style={estilos.label}>Tarefa: </Text>
                        <TextInput style={estilos.input} 
                                    value={this.state.tarefaAtual.texto}
                                    onChangeText={(texto) => this.atualizaTarefa(texto)}/>
                        <Text style={estilos.label}>Data: </Text>
                        <TextInput style={estilos.input} 
                                value={this.state.tarefaAtual.data}
                                onChangeText={(texto) => this.atualizaData(texto)}/>
                        <View style={estilos.check}>
                            <Text style={estilos.label}>Concluido</Text>
                            <CheckBox style={estilos.input} 
                                        value={this.state.tarefaAtual.concluido} 
                                        onValueChange={(chk) => this.atualizaConcluido(chk)}/>
                            <Button style={estilos.botao} title="Add" 
                                    onPress={() => this.adicionar()}/>
                        </View>
                    </View>
                    
                </ImageBackground>
                <View style={estilos.tasklist}>
                <FlatList
                    data={this.state.lista}
                    renderItem={({item}) => <Tarefa texto={item.texto}
                    data={item.data} concluido={item.concluido}/>}
                    keyExtractor={ (item) => item.id}
                />
                </View>
            </View>
        );
    }
}
export default TaskList;