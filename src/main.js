import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Search from './components/search.vue'
import Vant from 'vant';
import 'vant/lib/index.css';
import axios from "axios";
 Vue.prototype.globalURL="http://127.0.0.1:5050/"
axios.defaults.withCredentials=true
axios.defaults.baseURL="http://127.0.0.1:5050"
Vue.prototype.axios=axios
Vue.use(Vant);
Vue.config.productionTip = false
Vue.component("my-search",Search);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
