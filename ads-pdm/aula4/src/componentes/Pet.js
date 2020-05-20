import React from 'react';
import {View, Text, StyleSheet} from 'react-native';

const Pet = function(props) { 
    return (
        <View style={estilos.pet}>
            <Text> Nome do Pet: {props.nome} </Text>
            <Text> Idade: {props.idade} </Text>
            <Text> Espécie: {props.especie} </Text>
            <Text> Raça: {props.raca} </Text>
        </View>
    );
}

const estilos = StyleSheet.create({
    pet: { 
        borderBottomColor: "#333",
        borderBottomWidth: 3,
    }
});

export default Pet;