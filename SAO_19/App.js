import { createAppContainer, createSwitchNavigator } from "react-navigation";
import { creatStackNavigator, createStackNavigator } from "react-navigation-stack";
// import LoadingScreen from "../SAO_19/scrceens/Login";
import LoginScreen from "../SAO_19/scrceens/Login";
import RegisterScreen from "./scrceens/Register";
import HomeScreen from "./scrceens/Home";

import * as firebase from "firebase";

var firebaseConfig = {
    apiKey: "AIzaSyA97TuKc8kqLt8nUFwtQF4MnG1VCYMUh5I",
    authDomain: "aps2019-786b7.firebaseapp.com",
    databaseURL: "https://aps2019-786b7.firebaseio.com",
    projectId: "aps2019-786b7",
    storageBucket: "aps2019-786b7.appspot.com",
    messagingSenderId: "918622536957",
    appId: "1:918622536957:web:9b1782c00751edbae76a94",
    measurementId: "G-2PR69YZG3Y"
  };

firebase.initializeApp(firebaseConfig);

const AppStack = createStackNavigator({
    Home: HomeScreen
});

const AuthStack = createStackNavigator({
    Login: LoginScreen,
    Register: RegisterScreen
});

export default createAppContainer(
    createSwitchNavigator(
        {
            // Loading: LoadingScreen,
            App: AppStack,
            Auth: AuthStack
        },
        {
            initialRouteName: "Loading"
        }
    )
);
