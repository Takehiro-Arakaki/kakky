import Vue from 'vue/dist/vue.esm.js'
import Edit from './components/edit.vue'

new Vue({
  el: '#edit', //IDのようなもの
  components: {
    'edit_question': Edit //これでedit_questionタグが使用可能, edit.vueで編集
  }
});