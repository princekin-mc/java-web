import Vue from 'vue'
import App from './App'
import router from './router'
// 导入ElementUI
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css';
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.use(VueAxios,axios)

// 安装路由
Vue.use(router);
// ElementUI
Vue.use(ElementUI);

new Vue({
    el: '#app',
    // 启用路由
    router,
    // 启用ElementUI
    render: h => h(App) // ElementUI
});
