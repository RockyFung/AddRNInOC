/**
 * Created by rocky on 2018/5/18.
 */
import React from 'react';
import {
    AppRegistry,
    StyleSheet,
    Text,
    View
} from 'react-native';

class FirstPage extends React.Component {
    render() {
        var contents = this.props["data"]['first']

        return (
            <View style={styles.container}>
                <Text style={styles.highScoresTitle}>
                    FirstPage
                </Text>
                <Text style={styles.scores}>
                    {contents}
                </Text>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#FFFFFF',
    },
    highScoresTitle: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    scores: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
});

export default FirstPage