import React from 'react';
import {View, Text, TextInput, Button} from 'react-native';
import estilos from './Estilos';

const App = (props) => { 
  const v = ["Texto 1º é acentuado", "Texto 2", "Texto 3"];
  return (
    <View>
        <Text style={estilos.cabecalho1}>{v[0]}</Text>
        <Text style={estilos.cabecalho1}>{v[1]}</Text>
        <TextInput/>
        <Button title="Ok"/>
    </View>
  );
};


export default App;
