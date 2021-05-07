import * as React from 'react';
import { Button, View, Text } from 'react-native';
import { createDrawerNavigator } from '@react-navigation/drawer';
import { NavigationContainer } from '@react-navigation/native';
import TaskList from './TaskList';


const Drawer = createDrawerNavigator();

function SettingsScreen() {
    return (
      <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
        <Text>Settings!</Text>
      </View>
    );
  }
  

export default props => 
    <NavigationContainer>
        <Drawer.Navigator initialRouteName="Listar">
            <Drawer.Screen name="Adicionar" component={SettingsScreen}/>
            <Drawer.Screen name="Listar" component={TaskList}/>
        </Drawer.Navigator>
    </NavigationContainer>
