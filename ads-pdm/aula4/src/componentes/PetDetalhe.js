import React from 'react';
import {View, Text, StyleSheet, ImageBackground} from 'react-native';

class PetDetalhe extends React.Component { 
    constructor(props) { 
        super(props);
    }

    render() { 
        return (
            <View style={estilos.container}>
                <Text style={estilos.textoHeader}> Nome do Pet: {this.props.pet.nome} </Text>
                <Text style={estilos.textoHeader}> Idade: {this.props.pet.idade}</Text>
                <Text style={estilos.textoHeader}> Espécie: {this.props.pet.especie}</Text>
                <Text style={estilos.textoHeader}> Raça: {this.props.pet.raca}</Text>
            </View>
        )}
}

const estilos = StyleSheet.create({
    textoPrimario : {
        fontFamily: 'arial',
        fontSize: 32,
        color: "#888",
    },
    textoHeader: { 
        fontSize: 24,
        color: '#FFF',
        backgroundColor: 'rgba(60, 60, 60, 0.4)'
    },
    container : {
        flex: 1,
        alignItems: "stretch",
        justifyContent: "space-evenly"
     }
});

export default PetDetalhe;