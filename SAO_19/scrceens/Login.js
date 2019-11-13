import React, {Component} from 'react';
import { Alert, TextInput, Text, View, StyleSheet, Image,TouchableOpacity} from 'react-native';


export default class App extends Component {


      clicou(){
        Alert.alert('','Carregando...');s
      }


    render(){
        return(
            <View style={styles.container}>
                <Image
                  source={{uri: 'data:image/jpeg;base64,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'}}
                  style={styles.logo}
                  />

                <TextInput 
                style={styles.input}
                placeholder='Digite seu email'
                />

                  <TextInput 
                style={styles.input}
                placeholder='Digite sua senha'
                />

                <TouchableOpacity
                style={styles.botaoLogin}
                onPress={ () => {this.clicou()} }
                >
                  <Text style={styles.botaoTexto}>Login</Text>
                </TouchableOpacity>
                  
            </View>
        
        )
    }
}

    const styles = StyleSheet.create({
        container: {
            flex: 1,
            justifyContent: 'center',
            alignItems: 'center',
            backgroundColor: '#2c3e50'
        },

        logo: {
            width: 150,
            height: 150,
            borderRadius:150,
        },

        input: {
          marginTop: 10,
          width: 300,
          backgroundColor: '#fff',
          fontSize:16,
          fontWeight: 'bold',
          borderRadius: 3,
        },

        botaoTexto: {
          fontSize: 16,
          color: '#fff',
          fontWeight: 'bold',
        },

        botaoLogin: {
          width: 300,
          height: 42,
          backgroundColor: '#3498db',
          marginTop: 10,
          borderRadius: 4,
          alignItems: 'center',
          justifyContent: 'center',
        },
    })