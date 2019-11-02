import Vue from 'vue/dist/vue.esm.js'
import Router from './router/router'
import Header from './components/header.vue'

new Vue({
  router: Router,
  el: '#nav', //IDのようなもの
  components: {
    'navbar': Header
  }
});