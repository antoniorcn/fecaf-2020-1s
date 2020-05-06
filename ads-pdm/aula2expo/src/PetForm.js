
import React from 'react';
import {View, StyleSheet, Text, TextInput, Switch, TouchableOpacity, ToastAndroid} from 'react-native';

class PetForm extends React.Component { 
    constructor(props) { 
        super(props);
    }
    
    adicionar() { 
        console.log("")
        ToastAndroid.showWithGravity("Pet Adicionado", ToastAndroid.LONG, ToastAndroid.CENTER);
    }

    render() { 
        return (
            <View style={estilo.container}>
                <View style={estilo.formulario}>
                    <Text style={estilo.titulo}>Cadastro de Pets</Text>
                    <TextInput style={estilo.campo}
                                placeholder="ID"
                                placeholderTextColor={estilo.label.color}
                                underlineColorAndroid={"transparent"}/>
                    <TextInput style={estilo.campo}
                                placeholder="Nome do Pet"
                                placeholderTextColor={estilo.label.color}
                                underlineColorAndroid={"transparent"}/>
                    <TextInput style={estilo.campo}
                                placeholder="Espécie"
                                placeholderTextColor={estilo.label.color}
                                underlineColorAndroid={"transparent"}/>
                    <TextInput style={estilo.campo}
                                placeholder="Raça"
                                placeholderTextColor={estilo.label.color}
                                underlineColorAndroid={"transparent"}/>
                    <View style={{flexDirection:"row", alignItems: "center", justifyContent: "space-between"}}>
                        <Text style={estilo.label}>Gênero</Text>
                        <Switch style={estilo.campo}
                                    placeholder="Gênero"
                                    underlineColorAndroid={"transparent"}/>
                    </View>
                    <TouchableOpacity 
                            style={estilo.touch} onPress={() => {this.adicionar()}}>
                        <Text style={estilo.buttonText}>Adicionar</Text>
                    </TouchableOpacity>                           
                </View>
            </View>
        );
    }
}

const estilo = StyleSheet.create({
    label : {
        color: "#AAA",
        fontSize: 16,
        alignSelf: "flex-start",
    },
    touch: {
        alignItems: "center",
        justifyContent: "center",
        backgroundColor: "#59CBBD",
        marginTop: 30,
        padding: 30
    },
    buttonText: { 
        color: "#FFF",
        fontSize: 24,
        fontWeight: "bold"
    },
    campo : {
        borderBottomColor: "#F8F8F8",
        borderBottomWidth: 2,
        marginBottom: 30,
        height: 40,
    },
    titulo: { 
        fontSize: 24,
        color: "#FFF",
        paddingBottom: 10,
        marginBottom: 40, 
        borderBottomColor: "#199187",
        borderBottomWidth: 2,
        alignSelf: "center"
    },
    formulario:  { 
        alignItems : "stretch"
    },    
    container : { 
        flex: 1,
        justifyContent: "center",
        // alignItems: "center",
        paddingLeft: 30,
        paddingRight: 30, 
        backgroundColor: "#36485F"
    }
});

export default PetForm;