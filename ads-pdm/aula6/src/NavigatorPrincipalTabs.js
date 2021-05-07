import * as React from 'react';
import { Button, View, Text } from 'react-native';
import { createBottomTabNavigator  } from '@react-navigation/bottom-tabs';
import { NavigationContainer } from '@react-navigation/native';
import TaskList from './TaskList';


const Tab = createBottomTabNavigator ();

function SettingsScreen() {
    return (
      <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
        <Text>Settings!</Text>
      </View>
    );
  }
  

export default props => 
    <NavigationContainer>
        <Tab.Navigator initialRouteName="Listar">
            <Tab.Screen name="Adicionar" component={SettingsScreen}/>
            <Tab.Screen name="Listar" component={TaskList}/>
        </Tab.Navigator>
    </NavigationContainer>
