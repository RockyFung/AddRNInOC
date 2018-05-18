

import {AppRegistry} from 'react-native';
import FirstPage from './FirstPage'
import SecondPage from './SecondPage'


// 导出模块名称,oc端分别引用
AppRegistry.registerComponent('FirstPage', () => FirstPage);
AppRegistry.registerComponent('SecondPage', () => SecondPage);