/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

 import React from 'react';
 import {
   SafeAreaView,
   ScrollView,
   StatusBar,
   StyleSheet,
   Text,
   View,
 } from 'react-native';
 
 function App(): JSX.Element {
   return (
     <SafeAreaView>
       <StatusBar />
       <ScrollView contentContainerStyle={styles.scrollContainer}>
         <View style={styles.mainContainer}>
           <Text>Mini App Two Test</Text>
         </View>
       </ScrollView>
     </SafeAreaView>
   );
 }
 
 const styles = StyleSheet.create({
   mainContainer: {
     flex: 1,
     justifyContent: 'center',
     alignItems: 'center',
     backgroundColor: '#ACDDDE',
   },
   scrollContainer: {
     height: '100%',
   },
 });
 
 export default App;
 