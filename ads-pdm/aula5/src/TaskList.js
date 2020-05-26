import React from 'react';
import {StyleSheet, View, Text, Image} from 'react-native';
import CheckImage from './images/Check.png';
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
});

class TaskList extends React.Component { 
    constructor(props) { 
        super(props);
    }

    // listaTarefas() { 
    //     const lista = [];
    //     for (let i = 0; i < 5; i++) {
    //         lista.push(<Tarefa/>);
    //     }
    //     return lista;
    // }

    render() { 
        return (
            <View style={{flex: 1}}>
                <View style={estilos.cabecalho}>
                    <Text>Cabeçalho</Text>
                </View>
                <View style={estilos.tasklist}>
                    <Tarefa key="0" 
                            texto="Assistir Aulas na Faculdade" 
                            data="Qua, 19 de maio"
                            concluido={true}/>
                    <Tarefa key="1"
                            texto="Estudar Reac-Native" 
                            data="Qua, 20 de maio"
                            concluido={false}/>
                    <Tarefa key="2"
                            texto="Fazer atividades de casa" 
                            data="Qua, 21 de maio"
                            concluido={true}/>
                    <Tarefa key="3"
                            texto="Mandar email para o Chefe" 
                            data="Qua, 22 de maio"
                            concluido={true}/>
                    <Tarefa key="4"
                            texto="Preparar o Almoço" 
                            data="Qua, 26 de maio"
                            concluido={true}/>
                </View>
            </View>
        );
    }
}
export default TaskList;