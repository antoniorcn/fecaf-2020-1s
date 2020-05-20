import React from 'react';
import {View, Text, StyleSheet, TouchableHighlight, ImageBackground} from 'react-native';
import Pet from '../componentes/Pet';
import PetDetalhe from '../componentes/PetDetalhe';
import dogs from '../../assets/images/dogs.png';

// function Tela1() { 
//     return (
//         <View style={estilos.container}>
//             <PetDetalhe style={estilos.header}/>
//             <View style={estilos.lista}>
//                 <Pet nome="Totó" idade="12" especie="Cachorro" raca="Vira Lata"/>
//                 <Pet nome="Rex" idade="9" especie="Cachorro" raca="Pastor Alemão"/>
//                 <Pet nome="Laila" idade="2" especie="Cachorro" raca="Maltês"/>
//                 <Pet nome="Hulk" idade="13" especie="Cachorro" raca="Pit Bull"/>
//                 <Pet nome="Lassie" idade="6" especie="Cachorro" raca="Cocker"/>
//                 <Pet nome="Felix" idade="4" especie="Gato" raca="Siames"/>
//             </View>
//         </View>
//     );
// }

class Tela1 extends React.Component {
    constructor(props) { 
        super(props);

        this.state = {
            atual: { 
                nome: "Toto",
                idade: 12,
                especie: "Cachorro",
                raca: "Vira Lata"
            },
            pets: [
                {id: 1, nome: "Totó", idade:12, especie:"Cachorro", raca: "Vira Lata"},
                {id: 2, nome: "Rex", idade:9, especie:"Cachorro", raca: "Pastor Alemão"},
                {id: 3, nome: "Laila", idade:2, especie:"Cachorro", raca: "Maltês"},
                {id: 4, nome: "Hulk", idade:13, especie:"Cachorro", raca: "Pit Bull"},
                {id: 5, nome: "Lassie", idade:6, especie:"Cachorro", raca: "Cocker"},
                {id: 6, nome: "Felix", idade:4, especie:"Gato", raca: "Siames"},
            ] 
        }
    } 

    petClicado(item) { 
        console.log("Pet Clicado: ", item);
        // this.state.atual = {...item};
        this.setState({atual: {...item}});
    }

    geraPet(item, index) { 
        return(
            <TouchableHighlight activeOpacity={0.3} underlayColor="#FF0" onPress={() => {this.petClicado(item)}} key={index}>
                <Pet key={index} nome={item.nome} idade={item.idade} especie={item.especie} raca={item.raca}/>
            </TouchableHighlight>
        );
    }

    render() { 
        return (
            <View style={estilos.container}>
                <ImageBackground source={dogs} style={estilos.header}>                            
                    <PetDetalhe pet={this.state.atual}/>
                </ImageBackground>
                <View style={estilos.lista}>
                    { this.state.pets.map((item, index) => { return(this.geraPet(item, index)); }) }
                </View>
            </View>
        );
    }
}

const estilos = StyleSheet.create({
    container: { 
        flex: 1
    },
    header: { 
        flex: 4
    },
    lista: {
        flex: 6,
        backgroundColor: '#FF6',
    }
});

export default Tela1;