import React from 'react';
import {View, Text, Image, StyleSheet} from 'react-native';
import CheckImage from './images/Check.png';
import Circle from './images/Circle.png'

const estilos = StyleSheet.create({ 
    tarefa: { 
        flexDirection: 'row',
        justifyContent: 'flex-start',
        margin: 15,
        borderBottomWidth: 2,
        borderBottomColor: '#888',
        padding: 15,
    },
    check: { 
        width: 24,
        height: 24,
        marginRight: 20,
    },
    texto: { 
        textDecorationLine: "line-through"
    }
});

const textoConcluido = (concluido, texto) => { 
    let estilo = {};
    if (concluido) { 
        estilo = estilos.texto;
    }
    return (
        <Text style={estilo}>{texto}</Text>
    );
}

const imagemConcluido = (concluido) => { 
    if (concluido) {
        return (<Image source={CheckImage} style={estilos.check}/>);
    } else { 
        return (<Image source={Circle} style={estilos.check}/>);
    }
}

export default props => { 
    return(
        <View style={estilos.tarefa}>
            {imagemConcluido(props.concluido)}
            <View>
                {textoConcluido(props.concluido, props.texto)}
                <Text>{props.data}</Text>
            </View>
        </View>
    );
}